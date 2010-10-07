<?php

class psdfBuildPackageTask extends sfBaseTask {

    public function configure() {
        $this->namespace = 'psdf';
        $this->name = 'build-package';
        $this->briefDescription = 'Construye un paquete xpdl';

        $this->addArgument('macro_package', sfCommandArgument::REQUIRED, 'macro/paquete.xpdl a construir (Ej. miMacro/miPackage.xpdl)');
        $this->addOption('force', null, sfCommandOption::PARAMETER_OPTIONAL, 'Forzar si ya existiese el paquete', false);
    }

    public function execute($arguments = array(), $options = array()) {
        $this->logSection('psdf:build-package', sprintf("Construyendo paquete '%s'", $arguments['macro_package']));

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

        $this->logSection('psdf:build-package', sprintf("Nombre: '%s' Id: '%s'", $xpdl->getPackageName(), $xpdl->getPackageId()));

        // Obtengo procesos
        $process = $xpdl->getProcessArray();

        // Construyo cada proceso
        foreach ($process as $proc) {
            $task = new psdfBuildProcessTask($this->dispatcher, $this->formatter);
            $task->run(array($arguments['macro_package'], $proc['id']), $options);
        }

        $this->logSection('psdf:build-package', sprintf("Fin de la construcción del paquete '%s'", $arguments['macro_package']));
    }

}

?>