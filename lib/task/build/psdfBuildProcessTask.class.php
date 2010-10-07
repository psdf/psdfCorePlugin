<?php

class psdfBuildProcessTask extends sfBaseTask {

    public function configure() {
        $this->namespace = 'psdf';
        $this->name = 'build-process';
        $this->briefDescription = 'Construye un proceso';

        $this->addArgument('macro_package', sfCommandArgument::REQUIRED, 'Macro/xpdl donde está el proceso a construir (Ej. miMacro/miPackage.xpdl)');
        $this->addArgument('process', sfCommandArgument::REQUIRED, 'Id del proceso contenido en el paquete xpdl');
        $this->addOption('force', null, sfCommandOption::PARAMETER_OPTIONAL, 'Forzar si ya existiese el proceso', false);
    }

    public function execute($arguments = array(), $options = array()) {
        $this->logSection('psdf:build-process', sprintf("Construyendo proceso '%s'", $arguments['process']));

        $file = sfConfig::get('psdf_xpdl_dir') . '/' . $arguments['macro_package'];
        if (!file_exists($file)) {
            throw new sfCommandException(sprintf('No existe el archivo "%s".', $file));
        }

        $xpdl = new psdfXpdl($file);
        if (!$xpdl) {
            throw new sfCommandException(sprintf('No se pudo cargar xpdl "%s".', $file));
        }

        $info = explode('/', $arguments['macro_package']);
        $macro = str_replace(' ', '_', $info[0]);
        $package = str_replace(' ', '_', $xpdl->getPackageName());

        $this->logSection('psdf:build-process', sprintf("Nombre: '%s' Id: '%s'", $xpdl->getProcessName($arguments['process']), $xpdl->getProcessId($arguments['process'])));

        if (!$xpdl->processExist($arguments['process'])) {
            throw new sfCommandException(sprintf('No existe el proceso "%s" en el xpdl.', $arguments['process']));
        }

        // Si el Macro aún no fué generado, lo hago ahora
        if (!file_exists(sfConfig::get('sf_apps_dir') . '/' . $macro)) {
            $task = new psdfGenerateMacroTask($this->dispatcher, $this->formatter);
            $task->run(array($macro), array());
        }

        // Si el Paquete aún no fué generado, lo hago ahora
        if (!file_exists(sfConfig::get('sf_apps_dir') . '/' . $macro . '/modules/' . $package)) {
            $task = new psdfGeneratePackageTask($this->dispatcher, $this->formatter);
            $task->run(array($macro, $xpdl->getPackageName()), array());
        }

        // Obtengo datafiels, participantes y tipos de datos del paquete y proceso
        $data_pr['datafields'] = array_merge($xpdl->getDataFields(), $xpdl->getDataFields($arguments['process']));
        $data_pr['participants'] = array_merge($xpdl->getParticipants(), $xpdl->getParticipants($arguments['process']));
        $data_pr['type_declarations'] = $xpdl->getTypeDeclarations();

        // Parametros del proceso
        //$parameters = $this->xpdl->getParameters();

        // Recorro sus actividades
        $activities = $xpdl->getActivities($arguments['process']);
        foreach ($activities as $activity) {

            if( $activity['name']=='' ) {
                throw new sfCommandException(sprintf("La actividad '%s' del tipo '%s' no tiene un nombre definido", $activity['id'], $activity['type']));
            }
            // Obtengo transiciones y patrones
            $data_ac['id'] = $activity['id'];
            $data_ac['type'] = $activity['type'];
            $data_ac['transitions'] = $xpdl->getTransitions($arguments['process'], $activity['id']);
            $data_ac['patterns'] = $xpdl->getPsdfPatterns($arguments['process'], $activity['id']);

            // Fuerzo el patron Foo si no se ha definido uno
            if( count($data_ac['patterns'])==0 ) {
                $data_ac['patterns']['Foo']['Params'] = array();
            }
            
            $task = new psdfGenerateActivityTask($this->dispatcher, $this->formatter);
            $task->setProcessData($data_pr); // Fuerzo por acá los datos del proceso
            $task->setActivityData($data_ac); // Fuerzo por acá los datos del proceso
            $task->run( array($macro, $package, $xpdl->getProcessName($arguments['process']), $arguments['process'], $activity['name'], $activity['id']), $options);

        }

        $this->logSection('psdf:build-process', sprintf("Fin de la construccion proceso '%s'", $arguments['process']));
    }

}

?>