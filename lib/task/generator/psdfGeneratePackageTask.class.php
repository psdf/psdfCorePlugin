<?php

class psdfGeneratePackageTask extends sfBaseTask
{
  public function configure()
  {
    //$this->namespace = 'psdf';
    //$this->name      = 'generate-package';
    //$this->briefDescription    = 'Genera un nuevo Paquete PSDF';

    $this->addArgument('macro', sfCommandArgument::REQUIRED, 'Nombre del Macro');
    $this->addArgument('package', sfCommandArgument::REQUIRED, 'Nombre del Paquete');
  }

  public function execute($arguments = array(), $options = array())
  {
    $this->logSection('psdf:generate-package', sprintf("Generando paquete '%s'...", $arguments['package']));

    // --------------------------------
    // Creo el modulo correspondiente
    // --------------------------------

    $task = new sfGenerateModuleTask($this->dispatcher, $this->formatter);
    $task->run(array($arguments['macro'], $arguments['package']), array());

    // --------------------------------
    // Personalizacion comun a todos los paquetes
    // --------------------------------

    $moduleDir = sfConfig::get('sf_apps_dir').'/'.$arguments['macro'].'/modules/'.$arguments['package'];
    // Elimino el action y template por default de symfon
    // (luego se iran creando por cada tarea del proceso)
    $this->getFilesystem()->remove($moduleDir.'/actions/actions.class.php');
    $this->getFilesystem()->remove($moduleDir.'/templates/indexSuccess.php');

    // --------------------------------
    // Personalizacion particular del macro (debería leer de alguna configuracion del paquete)
    // --------------------------------

    // ...
  }
}

?>