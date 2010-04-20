<?php

class initializeTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'initialize';
    $this->briefDescription    = 'Configuración inicial de la Suite PSDF';

    //$this->addArgument('organizacion', sfCommandArgument::REQUIRED, 'Nombre de la Organización');
    //$this->addArgument('proyecto', sfCommandArgument::REQUIRED, 'Nombre del Proyecto');

  }

  public function execute($arguments = array(), $options = array())
  {

    $this->runTask('doctrine:build', array(), array('model'));
    $this->runTask('doctrine:build', array(), array('sql'));
    $this->runTask('doctrine:insert-sql', array(), array());
    $this->runTask('doctrine:build', array(), array('filters'));
    $this->runTask('doctrine:build', array(), array('forms'));
    $this->runTask('doctrine:data-load', array(), array());


    $this->log('- Fin de la inicializacion');
  }
}

?>