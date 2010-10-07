<?php

abstract class psdfBaseGenerateActivityTask extends sfBaseTask {

    protected $psdf_process_data = array();
    protected $psdf_activity_data = array();
    
    /**
     * Para forzar un array de parametros del proceso por fuera de addArgument() antes de ejecutar la tarea.
     * (Esto está así porque addArgument() produce inconvenientes con arrays multidimensionales
     * como parametro)
     *
     * @param array $data un Array con parametros adicionales informacion del proceso
     */
    public function setProcessData($data) {
        $this->psdf_process_data = $data;
    }

    /**
     * Para forzar un array de parametros de la actividad por fuera de addArgument() antes de ejecutar la tarea.
     * (Esto está así porque addArgument() produce inconvenientes con arrays multidimensionales
     * como parametro)
     *
     * @param array $data un Array con parametros adicionales informacion de la actividad
     */
    public function setActivityData($data) {
        $this->psdf_activity_data = $data;
    }

    /**
     * Recupera el array de parametros adicionales del proceso
     *
     * @return array Array de parametros adicionales
     */
    public function getProcessData() {
        return $this->psdf_process_data;
    }

    /**
     * Recupera el array de parametros adicionales de la actividad
     *
     * @return array Array de parametros adicionales
     */
    public function getActivityData() {
        return $this->psdf_activity_data;
    }

    /**
     * genScriptSetDatafield
     * Genero script de inicializacion por cada datafield
     * Para eso se recorre las transiciones que se cargaron en
     * $this->psdf_activity_data antes de ejecutar la tarea (setActivityData())
     * Expresion a crear: $this->f->setDataField('datafield', 'value');
     *
     * @return string Script con seteo de datafields
     */
    public function genScriptSetDatafield() {
        $script = '';
        foreach ($this->psdf_process_data['datafields'] as $key => $datafield) {
            $script.= sprintf( "%sthis->f->setDataField('%s', '%s');%s", chr(36), $key, $datafield["initialValue"], chr(10));
        }

        return $script;
    }

    /**
     * genScriptNextActivity.
     * Genero script de determinacion de siguiente actividad en un flujo.
     * Para eso se recorre las transiciones que se cargaron en
     * $this->psdf_activity_data antes de ejecutar la tarea (setActivityData())
     * @return string Script con reglas a validar.
     */
    public function genScriptNextActivity() {

        $script = '';

        foreach( $this->psdf_activity_data['transitions'] as $transition ) {

            // Transicion default, tomo la actividad destino (to)
            // Expresion a crear:
            //   $next = 'otraActividad';

            if( $transition["type"]==psdfXpdl::TRANSITION_OTHERWISE or is_null($transition["type"]) ) {
                $script.= sprintf("%snext = '%s';%s%s", chr(36), $transition["to_name"], chr(10), chr(10));
            }

            // Transicion condicional, debo resolver la regla
            // Expresion a crear:
            //   $rule = new psdfRule();
            //   $rule->setCondition('A>B')
            //   $value = $f->getDatafield($param); ó $value = psdfContext::getAlgo();
            //   $rule->setParameter($param, $value);
            //   $ret = $rule->validate();
            //   if( $ret ) $next = 'otraActividad';

            if( $transition["type"]==psdfXpdl::TRANSITION_CONDITION ) {
                // Instancio regla y seteo la condicion
                $script.= sprintf("%srule = new psdfRule();%s", chr(36), chr(10));
                $script.= sprintf("%srule->setCondition(\"%s\");%s", chr(36), $transition['condition'], chr(10));
                // Hago lo mismo a modo prueba para recorrer los parametros
                $test = new psdfRule();
                $test->setCondition($transition['condition']);
                foreach( $test->getParameters() as $param=>$value) {
                    if( array_key_exists($param, $this->psdf_process_data['datafields']) ) {
                        $script.= sprintf("%svalue = %sthis->f->getDatafield('%s');%s", chr(36), chr(36), $param, chr(10));
                    }
                    elseif(method_exists('psdfContext', $param)) {
                        $script.= sprintf("%svalue = psdfContext::%sparam();%s", chr(36), chr(36), chr(10));
                    }
                    else {
                        throw new sfCommandException(sprintf("Error en regla '%s' el parametro '%s' no es un datafield ni un metodo de la clase psdfContext", $transition['condition'], $param));
                    }
                    $script.= sprintf("%srule->setParameter('%s', %svalue);%s", chr(36), $param, chr(36), chr(10));
                }
                $script.= sprintf("%sret = %srule->validate();%s", chr(36), chr(36), chr(10));
                $script.= sprintf("if( %sret ) %snext = '%s';%s", chr(36), chr(36), $transition["to_name"], chr(10));
            }
        }
        return $script;
    }

    public function genScriptsPattern() {

        $scripts = array('name' => '',
                         'set_parameter' => '',
                         'set_template' => '',
                         'set_datafield' => '' );

        if( count($this->psdf_activity_data['patterns'])==0 ) return $scripts;

        // Obtengo la configuracion yml llamada del patron
        $keys = array_keys($this->psdf_activity_data['patterns']);
        $pattern = $this->psdf_activity_data['patterns'][$keys[0]];
        
        // Instancio la clase del patron

        $cls = $keys[0].'Pattern';
        $ptn = new $cls();

        // Genero script nombre del patron

        $scripts['name'] = $ptn->getName();

        // Genero script de lectura de parametros a pasar al patron

        $scriptPtnSetParams = '';
        foreach ($pattern['Params'] as $param => $value) {
            // Si es un array convierto a string vacio para omitir warnings
            $v = is_array($value) ? '' : $value;
            if (array_key_exists($v, $datafields)) {
                // Es un dataField: $ptn->setParameter( 'param', $this->f->getDataField('datafield') );
                $scriptPtnSetParams.= "%sptn->setParameter( '%s', %sthis->f->getDataField('%s') );%s";
                $scriptPtnSetParams = sprintf($scriptPtnSetParams, chr(36), $param, chr(36), $value, chr(10));
            } elseif (strpos($v, '%') and strrpos($v, '%')) {
                // Es una variable de entorno: $ptn->setParameter( 'param', $this->f->getContextVar('var') );
                $scriptPtnSetParams.= "%sptn->setParameter( '%s', %sthis->f->getContextVar('%s') );%s";
                $scriptPtnSetParams = sprintf($scriptPtnSetParams, chr(36), $param, chr(36), $value, chr(10));
            } elseif (is_array($value)) {
                // Es un array: $ptn->setParameter( 'param', 'valor' );
                $scriptPtnSetParams.= "%sptn->setParameter( '%s', '%s' );%s";
                $scriptPtnSetParams = sprintf($scriptPtnSetParams, chr(36), $param, sfYaml::dump($value), chr(10));
            } else {
                // Es un numerico/alfanumerico: $ptn->setParameter( 'param', 'valor' );
                $scriptPtnSetParams.= "%sptn->setParameter( '%s', '%s' );%s";
                $scriptPtnSetParams = sprintf($scriptPtnSetParams, chr(36), $param, $value, chr(10));
            }
        }
        $scripts['set_parameter'] = $scriptPtnSetParams;

        // Si el patron tiene interfaz paso a la accion/template los parametros

        $scriptPtnUrlTemplate = '';
        if ($ptn->hasTemplate()) {
            $scriptPtnUrlTemplate = $ptn->getTemplate();
        }
        $scripts['set_template'] = $scriptPtnUrlTemplate;

        // Genero script de actualizacion de datafields por retorno del patron

        $scriptSetDF = '';
        foreach ($pattern['Params'] as $param => $value) {
            // Si es un array convierto a string vacio para omitir warnings
            $v = is_array($value) ? '' : $value;
            if (array_key_exists($v, $datafields)) {
                // Es un dataField: $this->f->setDataField( 'datafield', $ptn->getParameter( 'param') );
                $scriptSetDF.= "%sthis->f->setDataField( '%s', %sptn->getParameter( '%s') );%s";
                $scriptSetDF = sprintf($scriptSetDF, chr(36), $value, chr(36), $param, chr(10));
            }
        }
        $scripts['set_datafield'] = $scriptSetDF;

        return $scripts;
    }
}

?>