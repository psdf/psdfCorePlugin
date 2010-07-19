<?php

class psdfInitializeTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'initialize';
    $this->briefDescription    = 'Configuración inicial de la Suite PSDF';
    $this->detailedDescription = <<<EOF
La Tarea [psdf:initialize|INFO] inicializa un proyecto PSDF generando e
importando los datos iniciales:

  [./symfony psdf:initialize|INFO]

Debe especificar el usuario de la base de datos y el nombre de la base de datos a crear:

  [./symfony psdf:initialize|INFO]
EOF;

  }

  public function execute($arguments = array(), $options = array())
  {
    // Creo los schemas db iniciales necesarios
    //
    $this->runTask('psdf:create-schema-db', array('psdforg'), array('connection'=>'psdf'));
    $this->runTask('psdf:create-schema-db', array('psdform'), array('connection'=>'psdf'));
    $this->runTask('psdf:create-schema-db', array('psdfwf'), array('connection'=>'psdf'));

    // Compilo generando clases y sintaxis sql tablas de las clases
    $this->runTask('doctrine:build', array(), array('model'));
    $this->runTask('doctrine:build', array(), array('sql'));

    // Genero la estructura de tablas
    $this->runTask('doctrine:insert-sql', array(), array());

    // Mientras haya modulos admin symfony compilo filtros y forms
    $this->runTask('doctrine:build', array(), array('filters'));
    $this->runTask('doctrine:build', array(), array('forms'));

    // Cargo datos iniciales
    $this->runTask('doctrine:data-load', array(), array());

    $this->log('- Fin de la inicializacion');
  }
}

?>