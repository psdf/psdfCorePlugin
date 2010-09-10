<?php

class psdfInitializeTask extends sfBaseTask
{
  public function configure()
  {
    $this->addOptions(array(
      new sfCommandOption('force', null, sfCommandOption::PARAMETER_OPTIONAL, 'Permite reinizializar recreando la base de datos (Usar con mucho cuidado!)', 'false'),
    ));

    $this->namespace = 'psdf';
    $this->name      = 'initialize';
    $this->briefDescription    = 'Configuración inicial de la Suite PSDF';
    $this->detailedDescription = <<<EOF
La Tarea [psdf:initialize|INFO] inicializa un proyecto PSDF generando e
importando los datos iniciales:

  [./symfony psdf:initialize|INFO]

Con la opcion --force se puede reinicializar el proyecto pero ATENCION!! se
perderan los datos que ya se tengan cargados!!:

  [./symfony psdf:initialize --force=true|INFO]
EOF;

  }

  public function execute($arguments = array(), $options = array())
  {
    // Conexión por defecto inicial en databases.yml
    $connection_default = 'psdf';

    $this->logSection('psdf', 'Inicializando entorno');

    // Si estoy forzando, primero intento recrear la db

    if (in_array(strtolower($options['force']), array('true'))) {
        $this->runTask('doctrine:drop-db');
        $this->runTask('doctrine:create-db');
    }

    // Creo los schemas db definidos en databases.yml para cada conexion, comun a todos los entornos (all)

    $yml_cns = sfYaml::load( sfConfig::get('sf_config_dir').DIRECTORY_SEPARATOR.'databases.yml' );    
    foreach ($yml_cns['all'] as $cn_name => $cn) {
        foreach ($cn['schemas'] as $schema_name) {
            $this->runTask('psdf:create-schema-db', array($schema_name), array('connection'=>$cn_name));
        }
    }

    // Compilo generando clases y sintaxis sql tablas de las clases

    $this->runTask('doctrine:build', array(), array('model'));
    $this->runTask('doctrine:build', array(), array('sql'));

    // Genero la estructura de tablas

    $this->runTask('doctrine:insert-sql', array(), array());

    // Mientras haya modulos admin symfony compilo filtros y forms

    $this->runTask('doctrine:build', array(), array('filters'));
    $this->runTask('doctrine:build', array(), array('forms'));

    // Cargo datos iniciales estructura db en conexion default 'psdf'

    $this->runTask('psdf:load-data-db', array(), array('connection'=>$connection_default));

    // Cargo datos iniciales

    $this->runTask('doctrine:data-load', array(), array());

    $this->logSection('psdf', 'Fin de la inicialización del entorno');
  }
}

?>