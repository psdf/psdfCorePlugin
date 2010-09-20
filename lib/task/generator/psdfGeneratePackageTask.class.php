<?php

class psdfGeneratePackageTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'generate-package';
    $this->briefDescription    = 'Genera un nuevo Paquete PSDF';

    $this->addArgument('macro', sfCommandArgument::REQUIRED, 'Nombre del Macro');
    $this->addArgument('package', sfCommandArgument::REQUIRED, 'Nombre del Paquete');
  }

  public function execute($arguments = array(), $options = array())
  {
    // Creo el modulo correspondiente

    $this->runTask('generate:module', array($arguments['macro'], $arguments['package']));

    // Personalizacion comun a todos los paquetes

    // ...

    // Personalizacion particular del paquete

    // ...
  }
}

?>