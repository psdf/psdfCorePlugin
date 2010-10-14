<?php

/*
 * This file is part of the psdfCore package.
 * (c) 2009-2010 Soltic S.R.L. <contacto@proyecto-psdf.com.ar>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

/**
 * psdfXpdl es una clase para el tratamiento de un documento xpdl
 *
 * @package    psdfCore
 * @subpackage
 * @author     Gustavo Earnshaw <gustavoear@gmail.com>
 */
class psdfXpdl {

    var $xml = null;
    var $xp = null;
    var $file = false;
    var $ns_xpdl2 = "http://www.wfmc.org/2008/XPDL2.1";

    const MACRO_DEFAULT = 'General';

    const EXTENDED_PACKAGE = '1';
    const EXTENDED_PROCESS = '2';
    const EXTENDED_ACTIVITY = '3';

    const TRANSITION_CONDITION = 'CONDITION';
    const TRANSITION_OTHERWISE = 'OTHERWISE';

    // Tipos de eventos bpmn soportados
    const EVENT_START = 'StartEvent';
    const EVENT_INTERMEDIATE = 'IntermediateEvent';
    const EVENT_END = 'EndEvent';

    // Tipos de tareas bpmn soportados
    const TASK_USER = 'TaskUser';
    const TASK_MANUAL = 'TaskManual';
    const TASK_SCRIPT = 'TaskScript';

    // Tipos de tareas bpmn soportados
    const GATEWAY_EXCLUSIVE = 'Exclusive';
    const GATEWAY_INCLUSIVE = 'Inclusive';
    const GATEWAY_PARALLEL = 'Parallel';
    const GATEWAY_COMPLEX = 'Complex';

    public function  __construct($xpdl=false) {
        if( $xpdl ) {
            return $this->load($xpdl);
        }
    }

    public function load( $xpdl ) {
        $this->xml = new DOMDocument();
        $ret = false;
        // Determino si levanto de un archivo o un string
        if( file_exists($xpdl) ) {
            if( filesize($xpdl)>0 ) {
                $ret = $this->xml->load($xpdl);
                $this->file = $xpdl; // Puede servirme mantenerlo
            }
        }
        else {
            $ret = $this->xml->loadXML($xpdl);
            $this->file = false;
        }
        if( !$ret ) {
            $this->file = false;
            return false;
        }
        // Dejo ya instanciado el objeto para tratamiento xpath
        $this->xp = new domxpath( $this->xml );

        return true;
    }

    /**
     * Obtiene el macro del paquete xpdl
     * El macro se determina por el directorio padre del archivo xpdl
     * @return string Nombre del Macro
     */
    public function getMacroName() {
        $parts = explode(DIRECTORY_SEPARATOR, $this->file);
        if( count($parts)>1 ) {
            return $parts[count($parts)-2];
        }
        else {
            return self::MACRO_DEFAULT;
        }
    }

    public function getPackageId() {
        return $this->xml
                ->getElementsByTagNameNS($this->ns_xpdl2, 'Package')
                ->item(0)->getAttribute('Id');
    }

    public function getPackageName() {
        return $this->xml
                ->getElementsByTagNameNS($this->ns_xpdl2, 'Package')
                ->item(0)->getAttribute('Name');
    }

    public function getPsdfPaquete() {
        return $this->getExtendedAttributeValue('PSDFPaquete');
    }

    public function getPsdfMacro() {
        return $this->getExtendedAttributeValue('PSDFMacro');
    }

    public function getPsdfMacroName() {
        return $this->getExtendedAttributeValue('PSDFMacroName');
    }

    public function getPsdfProceso($process_id) {
        return $this->getExtendedAttributeValue('PSDFProceso', self::EXTENDED_PROCESS, array($process_id,));
    }

    public function setPsdfPaquete( $paquete_id ) {
        return $this->setExtendedAttributeValue('PSDFPaquete', $paquete_id);
    }

    public function setPsdfMacro( $macro_id ) {
        return $this->setExtendedAttributeValue('PSDFMacro', $macro_id);
    }

    public function setPsdfMacroName( $name ) {
        return $this->setExtendedAttributeValue('PSDFMacroName', $name);
    }

    public function setPsdfProceso( $process_id, $proceso_id ) {
        return $this->setExtendedAttributeValue('PSDFProceso', $proceso_id, self::EXTENDED_PROCESS, array($process_id));
    }

    /**
     * Intenta determinar como nombre del macro el nombre de la carpeta que
     * contiene el archivo xpdl
     * /ruta_workspace/miproyecto/paquetes/mimacro/mipaquete.xpdl => mimacro
     * @return string Nombre del Macro o null
     */
    public function determineMacroName() {
        if( $this->file ) {
            $partes = explode(DIRECTORY_SEPARATOR, $this->file);
            if( count($partes)>0 ) {
                return $partes[count($partes)-2];
            }
        }
        return null;
    }

    /**
     * Obtengo el valor de un atributo extendido de un paquete, proceso o actividad
     *
     * @param string $name Nombre del atributo
     * @param constante $type Nivel donde setear (paquete, proceso o actividad)
     * @param array $parent Id de proceso y actividad si tengo que recuperar el atributo
     *                       de uno de ellos.
     * @return string Valor del atributo, nulo si no existe.
     */
    public function getExtendedAttributeValue($name, $type=self::EXTENDED_PACKAGE, $parent=array()) {
        $query = "/xpdl2:Package";

        if( $type==self::EXTENDED_PROCESS or $type==self::EXTENDED_ACTIVITY ) {
            $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[@Id=\"".$parent[0]."\"]";
        }
        if( $type==self::EXTENDED_ACTIVITY) {
            $query.= "/xpdl2:Activities/xpdl2:Activity[@Id=\"".$parent[1]."\"]";
        }

        $query.= "/xpdl2:ExtendedAttributes/xpdl2:ExtendedAttribute[@Name=\"".$name."\"]";
        $nodeList = $this->getElementsByQuery( $query );
        $node = $nodeList->item(0);
        if( $node ) {
            return $node->getAttribute('Value');
        }
        return null;
    }

    /**
     * Setea un atributo extendido a nivel paquete, proceso o actividad.
     * Si el atributo aun no existe, lo crea.
     *
     * @param string $name Nombre del atributo
     * @param value $name valor del atributo, a setear.
     * @param constante $type Nivel donde setear (paquete, proceso o actividad)
     * @param array $parent Id de proceso y actividad si tengo que recuperar el atributo
     *                       de uno de ellos.
     * @return none
     */
    public function setExtendedAttributeValue($name, $value, $type=self::EXTENDED_PACKAGE, $parent=array()) {

        $query = "/xpdl2:Package";
        if( $type==self::EXTENDED_PROCESS or $type==self::EXTENDED_ACTIVITY ) {
            $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[@Id=\"".$parent[0]."\"]";
        }
        if( $type==self::EXTENDED_ACTIVITY) {
            $query.= "/xpdl2:Activities/xpdl2:Activity[@Id=\"".$parent[1]."\"]";
        }
        $query_es = $query."/xpdl2:ExtendedAttributes";
        $query_e  = $query."/xpdl2:ExtendedAttributes/xpdl2:ExtendedAttribute[@Name=\"".$name."\"]";

        // Busco el atributo extendido (xpdl2:Extended)
        $nodeList = $this->getElementsByQuery( $query_e );
        $ext = $nodeList->item(0);
        if( !$ext ) {
            
            // No lo encontré entonces lo creo
            $ext = $this->xml->createElement('xpdl2:ExtendedAttribute');
            $ext->setAttribute('Name', $name);
            
            // Busco la etiqueta contenedora para agregarla en ella (xpdl2/ExtendedAttributes)
            $nodeList = $this->getElementsByQuery( $query_es );
            $exts = $nodeList->item(0);
            if( !$exts ) {

                // No lo encontré entonces lo creo
                $exts = $this->xml->createElement('xpdl2:ExtendedAttributes');

                // Busco el padre para agregarlo en el (paquete, proceso o actividad)
                $nodeList = $this->getElementsByQuery( $query );
                $parent = $nodeList->item(0);
                if( !$parent ) {

                    // No lo encontre, esto no deberia ser lo normal
                    return false;
                }

                $parent->appendChild($exts);
            }

            $exts->appendChild($ext);
        }

        // Actualizo el valor 
        $ext->setAttribute('Value', $value);
    }

    /**
     * Obtengo el valor de un atributo extendido de un paquete, proceso o actividad
     *
     * @param string $name Nombre del atributo
     * @param constante $type Nivel donde setear (paquete, proceso o actividad)
     * @param array $parent Id de proceso y actividad si tengo que recuperar el atributo
     *                       de uno de ellos.
     * @return string Valor del atributo, nulo si no existe.
     */
    public function getExtendedAttributeBody($name, $type=self::EXTENDED_PACKAGE, $parent=array()) {
        $query = "/xpdl2:Package";

        if( $type==self::EXTENDED_PROCESS or $type==self::EXTENDED_ACTIVITY ) {
            $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[@Id=\"".$parent[0]."\"]";
        }
        if( $type==self::EXTENDED_ACTIVITY) {
            $query.= "/xpdl2:Activities/xpdl2:Activity[@Id=\"".$parent[1]."\"]";
        }

        $query.= "/xpdl2:ExtendedAttributes/xpdl2:ExtendedAttribute[@Name=\"".$name."\"]";
        $nodeList = $this->getElementsByQuery( $query );
        $node = $nodeList->item(0);
        if( $node ) {
            return $node->textContent;
        }
        return null;
    }

    public function setExtendedAttributeBody($name, $value) {

    }

    public function getElementsByQuery( $xpath ) {
        return $this->xp->query( $xpath );
    }

    public function getContent() {
        $content = $this->xml->saveXML();
        return $content;
    }

    /**
     * Retorno un array de id y nombre de procesos del paquete.
     * Recupera todos o solamente los especificados en $filters_id
     * @param array $filters_id Lista de id (xpdl) de procesos a filtrar
     *                          Si se omite recupera todos.
     * @return array Lista de procesos obtenida
     */
    public function getProcessArray($filters_id=array()) {
        $procs = array();
        if( count($filters_id)>0 ) {
            foreach( $filters as $id) {
                $query = "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[@Id=\"%s\"]";
                $query = sprintf($query, $idXpdl);
                $nodeList = $this->getElementsByQuery( $query );
                foreach( $nodeList as $node ) {
                    $pr['id'] = $node->getAttribute( "Id" );
                    $pr['name'] = $node->getAttribute( "Name" );
                    $pr['psdf_id'] = $this->getPsdfProceso($pr['id']);
                    $procs[] = $pr;
                }
            }
        }
        else {
            $query = "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess";
            $nodeList = $this->getElementsByQuery( $query );
            foreach ( $nodeList as $node ) {
                $pr['id'] = $node->getAttribute( "Id" );
                $pr['name'] = $node->getAttribute( "Name" );
                $pr['psdf_id'] = $this->getPsdfProceso($pr['id']);
                $procs[] = $pr;
            }
        }
        return $procs;
    }

    /**
     * Actualiza el archivo con el contenido actual del xpdl. Esto si previamente
     * fue levantado desde un archivo
     */
    public function file_save() {
        if( $this->file ) {
            $data = $this->getContent();
            file_put_contents($this->file, $data);
        }
    }

    public function getTypeDeclarations() {
        $typeDeclarations = array();

        $query = "/xpdl2:Package/xpdl2:TypeDeclarations/xpdl2:TypeDeclaration";
        $nodeList = $this->getElementsByQuery( $query );
        foreach ( $nodeList as $node ) {
            $id = $node->getAttribute( "Id" );
            $name = $node->getAttribute( "Name" );

            $description = null;
            if( $node->getElementsByTagName("Description")->length > 0 ) {
                $description = $node->getElementsByTagName("Description")->item(0)->textContent;
            }

            // Tipo de dato basico
            $type = null;
            $length = null;
            $decimal = null;
            if( $node->getElementsByTagName("BasicType")->length > 0 ) {
                $type = $node->getElementsByTagName("BasicType")->item(0)->getAttribute("Type");
                if( $node->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Length")->length > 0)
                    $length = $node->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Length")->item(0)->textContent;
                if( $node->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Precision")->length > 0)
                    $length = $node->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Precision")->item(0)->textContent;
                if( $node->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Scale")->length > 0)
                    $decimal = $node->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Scale")->item(0)->textContent;
            }

            // Tipo de dato declarativo
            $declaredType = null;
            if( $node->getElementsByTagName("DeclaredType")->length > 0 ) {
                $type = 'DeclaredType';
                $declaredType = $node->getElementsByTagName("DeclaredType")->item(0)->getAttribute('Id');
            }

            // Referencia Externa
            $externalReference = null;
            if( $node->getElementsByTagName("ExternalReference")->length > 0 ) {
                $type = 'ExternalReference';
                $externalReference =
                        $node->getElementsByTagName("ExternalReference")->item(0)->getAttribute('location') . '|' .
                        $node->getElementsByTagName("ExternalReference")->item(0)->getAttribute('namespace') . '|' .
                        $node->getElementsByTagName("ExternalReference")->item(0)->getAttribute('xref');
            }

            $typeDeclarations[$id] = array(
                    'name' => $name,
                    'description' => $description,
                    'type' => $type,
                    'length' => $length,
                    'decimal' => $decimal,
                    'externalReference' => $externalReference,
                    'declaredType' => $declaredType,
            );
        }
        return $typeDeclarations;
    }

    /**
     * Recupero datafields del paquete si no se especifica xpdl_process_id
     * o del proceso si se especifica su id
     * @param string $process_id Id xpdl del proceso
     * @return array Lista de datafields
     */
    public function getDataFields( $process_id=false ) {
        $dataFields = array();

        $query = "/xpdl2:Package";
        if( $process_id ) {
            $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]";
        }
        $query.= "/xpdl2:DataFields/xpdl2:DataField";

        $nodeList = $this->getElementsByQuery($query );
        foreach ( $nodeList as $node ) {
            $id = $node->getAttribute( "Id" );
            $name = $node->getAttribute( "Name" );
            $isArray = $node->getAttribute( "IsArray" );
            $readOnly = $node->getAttribute( "ReadOnly" );

            $description = null;
            if( $node->getElementsByTagName("Description")->length > 0 )
                $description = $node->getElementsByTagName("Description")->item(0)->textContent;

            $initialValue = null;
            if( $node->getElementsByTagName("InitialValue")->length > 0 )
                $initialValue = $node->getElementsByTagName("InitialValue")->item(0)->textContent;

            $dataType = null;
            if( $node->getElementsByTagName("DataType")->length > 0 )
                $dataType = $node->getElementsByTagName("DataType")->item(0);

            // Tipo de dato basico
            $type = null;
            $length = null;
            $decimal = null;
            if( $dataType->getElementsByTagName("BasicType")->length > 0 ) {
                $type = $dataType->getElementsByTagName("BasicType")->item(0)->getAttribute("Type");
                if( $dataType->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Length")->length > 0)
                    $length = $dataType->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Length")->item(0)->textContent;
                if( $dataType->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Precision")->length > 0)
                    $length = $dataType->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Precision")->item(0)->textContent;
                if( $dataType->getElementsByTagName("BasicType")->item(0)->getElementsByTagName("Scale")->length > 0)
                    $decimal = $dataType->getElementsByTagName("BasicType")
                            ->item(0)->getElementsByTagName("Scale")->item(0)->textContent;
            }

            // Tipo de dato declarativo
            $declaredType = null;
            if( $dataType->getElementsByTagName("DeclaredType")->length > 0 ) {
                $type = 'DeclaredType';
                $declaredType = $dataType->getElementsByTagName("DeclaredType")->item(0)->getAttribute('Id');
            }

            // Referencia Externa
            $externalReference = null;
            if( $dataType->getElementsByTagName("ExternalReference")->length > 0 ) {
                $type = 'ExternalReference';
                $externalReference =
                        $dataType->getElementsByTagName("ExternalReference")->item(0)->getAttribute('location') . '|' .
                        $dataType->getElementsByTagName("ExternalReference")->item(0)->getAttribute('namespace') . '|' .
                        $dataType->getElementsByTagName("ExternalReference")->item(0)->getAttribute('xref');
            }

            $dataFields[$name] = array(
                    'id' => $id,
                    'isArray' => $isArray,
                    'readOnly' => $readOnly,
                    'description' => $description,
                    'type' => $type,
                    'length' => $length,
                    'decimal' => $decimal,
                    'externalReference' => $externalReference,
                    'declaredType' => $declaredType,
                    'initialValue' => $initialValue,
            );
        }
        return $dataFields;
    }

    /**
     * Recupero participante del paquete si no se especifica xpdl_process_id
     * o del proceso si se especifica su id
     * @param string $xpdl_process_id Id xpdl del proceso
     * @return array Lista de participantes
     */
    public function getParticipants( $process_id=false ) {
        $participants = array();

        $query = "/xpdl2:Package";
        if( $process_id ) {
            $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]";
        }
        $query.= "/xpdl2:Participants/xpdl2:Participant";

        $nodeList = $this->getElementsByQuery( $query );
        foreach ( $nodeList as $node ) {
            $id = $node->getAttribute( "Id");
            $name = $node->getAttribute( "Name");

            $description = null;
            if( $node->getElementsByTagName("Description")->length > 0 )
                $description = $node->getElementsByTagName("Description")->item(0)->textContent;

            $type = null;
            if( $node->getElementsByTagName("ParticipantType")->length > 0 )
                $type = $node->getElementsByTagName("ParticipantType")->item(0)->getAttribute('Type');

            $participants[$name] = array(
                    'id' => $id,
                    'description' =>$description,
                    'type' => $type,
            );
        }
        return $participants;
    }

    /**
     * Retorna un array de actividades del proceso
     * contiene [id, name, type, is_autocomplete]
     * Si la actividad no tiene nombre fuerzo el id como tal
     * @param string $process_id id Xpdl del proceso
     * @return array
     */
    public function getActivities( $process_id=false ) {
        $activities = array();

        $query = "/xpdl2:Package";
        $query.= "/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]";
        $query.= "/xpdl2:Activities/xpdl2:Activity";

        $nodeList = $this->getElementsByQuery($query );
        foreach ( $nodeList as $node ) {
            $id = $node->getAttribute( "Id" );
            $name = $node->getAttribute( "Name" );
            $type = $this->getActivityType($node);
            $isAutocomplete = $this->getActivityIsAutoComplete($process_id, $id);

            $activities[$name] = array(
                    'id' => $id,
                    'name' => $name,
                    'type' => $type,
                    'is_autocomplete' => $isAutocomplete,
            );
        }
        return $activities;
    }

    /**
     * Valida si el proceso ya existe en el paquete
     * Puede recibir
     *   el Id objeto Proceso (123)
     *   el Id Xpdl           (_XDFBA...)
     *   el Nombre            (ejemplo1)
     * @param $processId
     * @return boolean
     */
    public function processExist($process) {
        $filter = sprintf('@Name = "%s"', $process);

        if( is_numeric($process) )
            $filter = sprintf('@Id = "%s"', "_".$process);

        if( substr($process, 0, 1)=="_" )
            $filter = sprintf('@Id = "%s"', $process);

        $xp = new domxpath( $this->xml );
        $nodeList = $xp->query( "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ ".$filter." ]" );

        if( $nodeList->length > 0 )
            return true;
        else
            return false;
    }

    /**
     * Obtengo el Id de un proceso a partir de su Id o nombre
     * @param string $process Id o Nombre del proceso
     * @return string id del proceso 
     */
    public function getProcessId($process) {

        $nodeList = $this->xp->query( sprintf("/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"%s\" ]", $process) );
        if( $nodeList->length > 0 )
            return $nodeList->item(0)->getAttribute('Id');

        $nodeList = $this->xp->query( sprintf("/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Name=\"%s\" ]", $process) );
        if( $nodeList->length > 0 )
            return $nodeList->item(0)->getAttribute('Id');

        return false;
    }

    /**
     * Obtengo el Nombre de un proceso a partir de su Id o Nombre
     * @param string $process Id o Nombre del proceso
     * @return string id del proceso
     */
    public function getProcessName($process) {

        $nodeList = $this->xp->query( sprintf("/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"%s\" ]", $process) );
        if( $nodeList->length > 0 )
            return $nodeList->item(0)->getAttribute('Name');

        $nodeList = $this->xp->query( sprintf("/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Name=\"%s\" ]", $process) );
        if( $nodeList->length > 0 )
            return $nodeList->item(0)->getAttribute('Name');

        return false;
    }

    /**
     * Retorna el tipo de tarea/actividad estandarizada BPMN
     * @param $pNodeActivity
     * @return string
     */
    public function getActivityType($pNodeActivity) {
        $activityType = '';

        // Activity/Event/XXXX
        $nodesEvent = $pNodeActivity->getElementsByTagName("Event");
        if( $nodesEvent->length > 0 ) {
            $types = array( self::EVENT_START, self::EVENT_INTERMEDIATE, self::EVENT_END );
            foreach( $types as $type) {
                $nodes = $nodesEvent->item(0)->getElementsByTagName($type);
                if( $nodes->length > 0 ) {
                    $activityType = $type;
                    break;
                }
            }
        }

        // Activity/Implementation/Task/XXXXXX
        $nodesImpl = $pNodeActivity->getElementsByTagName("Implementation");
        if( $nodesImpl->length > 0 ) {
            $nodesTask = $nodesImpl->item(0)->getElementsByTagName("Task");
            if( $nodesTask->length > 0 ) {
                $types = array( self::TASK_MANUAL, self::TASK_SCRIPT, self::TASK_USER );
                foreach( $types as $type) {
                    $nodes = $nodesTask->item(0)->getElementsByTagName($type);
                    if( $nodes->length > 0 ) {
                        $activityType = $type;
                        break;
                    }
                }
            }
        }

        // Activity/Route/GatewayType/(TaskService, TaskReceive, TaskManual,
        // TaskReference, TaskScript, TaskSend, TaskUser, TaskApplication)
        $nodesImpl = $pNodeActivity->getElementsByTagName("Route");
        if( $nodesImpl->length > 0 ) {
            $activityType = $nodesImpl->item(0)->getAttribute("GatewayType");
        }

        return $activityType;
    }

    /**
     * Verifica el tipo de finalizacion de la tarea.
     * Retorna True si la tarea se autocompleta o false si nó   *
     * @param $pNodeActivity
     * @return bolean
     */
    public function getActivityIsAutoComplete( $process_id, $activity_id ) {
        $valor = $this->getExtendedAttributeValue(
                    'Autocompletar', self::EXTENDED_ACTIVITY, array($process_id, $activity_id));
        if( $valor=='1' or $valor=='true') {
            return true;
        }
        return false;
    }

    public function getActivityIsAutoStart($activityXpdlId) {
        $valor = $this->getExtendedAttributeValue(
                'Autoiniciar', self::EXTENDED_ACTIVITY, array($process_id, $activity_id));
        if( $valor=='1' or $valor=='true') {
            return true;
        }
        return false;
    }

    public function getActivityName($processXpdlId, $activityXpdlId) {
        $nodeList = $this->xp->query(
            "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$processXpdlId."\"]".
            "/xpdl2:Activities/xpdl2:Activity[ @Id=\"".$activityXpdlId."\" ]" );

        return $nodeList->item(0)->getAttribute('Name');
    }

    /**
     * Recupera un array de transiciones cuyo origen es la actividad $activity_id
     * array compuesto por [To, type, condition, To_name]
     * @param string $process_id Proceso id xpdl
     * @param string $activity_id Actividad id xpdl
     * @return array Transiciones
     */
    public function getTransitions($process_id, $activity_id) {

        $transitions = array();

        // Transiciones cuyo origen es la actividad actual
        $nodeList = $this->getElementsByQuery(
            "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]".
            "/xpdl2:Transitions/xpdl2:Transition[ @From=\"".$activity_id."\" ]" );

        foreach ( $nodeList as $node ) {
            $trn["to"] = $node->getAttribute("To");
            $trn['condition'] = null;
            $trn['type'] = null;
            if( $node->getElementsByTagName("Condition")->length > 0 ) {
                $trn['condition'] = $node->getElementsByTagName("Condition")->item(0)->textContent;
                $trn['type'] = $node->getElementsByTagName("Condition")->item(0)->getAttribute('Type');
            }
            $trn["to_name"] = $this->getActivityName($process_id, $node->getAttribute("To"));
            $transitions[$node->getAttribute("Id")] = $trn;
        }
        return $transitions;
    }

    public function getNextActivities($process_id, $activity_id) {
        $xp2 = new domxpath( $this->xml );

        $activities = array();

        // Obtengo transiciones cuyo origen es la actividad actual
        $nodeList = $this->getElementsByQuery( 
            "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]".
            "/xpdl2:Transitions/xpdl2:Transition[ @From=\"".$activity_id."\" ]" );
        foreach ( $nodeList as $node ) {
            // Obtengo el nodo y nombre de la actividad destino
            $nodeList2 = $xp2->query( 
                "/xpdl2:Package/xpdl2:WorkflowProcesses/xpdl2:WorkflowProcess[ @Id=\"".$process_id."\"]".
                "/xpdl2:Activities/xpdl2:Activity[ @Id=\"".$node->getAttribute("To")."\" ]" );

            $act['id'] = $nodeList2->item(0)->getAttribute('Id');
            $act['name'] = $nodeList2->item(0)->getAttribute('Name');
            $act['type'] = $this->getActivityType($nodeList2->item(0));
            $activities[] = $act;
        }

        return $activities;
    }

    /**
     * Recupera lista definicion de patrones
     *
     * @param string $process_id Id xpdl del proceso
     * @param string $activity_id Id xpdl de la actividad
     * @return array Lista de patrones 
     */
    public function getPsdfPatterns($process_id, $activity_id) {
        $patterns = array();

        // Hoy solo tomo el primero, si hay mas de uno será omitido
        $ymldef = $this->getExtendedAttributeBody(
                    'Patron', self::EXTENDED_ACTIVITY, array($process_id, $activity_id));

        if( !$ymldef ) {
            return $patterns;
        }

        try {
            $pattern = sfYaml::load($ymldef);
        }catch (Exception $e) {
            throw new sfException(sprintf('No se pudo leer yml de llamada a patron: %s', $e->getMessage()));
        }

        // Quito el raiz (Patron) asi el 2do subnodo (Nombre) pasa a ser el 1ro.
        if( $pattern ) {
            $patterns[key($pattern)] = $pattern[key($pattern)];
        }

        // Regla de un solo patron
        if (count($patterns) > 1) {
            throw new sfException(sprintf('La actividad debe tener asociado solamente un patron'));
        }

        // Regla que exista el patron
        if (count($patterns) == 1) {
            $key = array_keys($patterns);
            if( !UtilPattern::exists( $key[0] ) ) {
                throw new sfException(sprintf('No existe el patron "%s" asociado a la actividad', $key[0]));
            }
        }

        return $patterns;
    }
}

?>
