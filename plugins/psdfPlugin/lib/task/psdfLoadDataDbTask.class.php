<?php

class psdfLoadDataDbTask extends sfDoctrineBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'load-data-db';
    $this->briefDescription    = 'Carga datos iniciales (Connect, Schema y Class';

    $this->addOption( 'connection', null, sfCommandOption::PARAMETER_REQUIRED, 'Nombre de la conexión (default psdf)', 'psdf');

  }

  public function execute($arguments = array(), $options = array())
  {
    $databaseManager = new sfDatabaseManager($this->configuration);
    $connection = $databaseManager->getDatabase(isset($options['connection']) ? $options['connection'] : null)->getConnection();

    // Recorro conexiones definidas

    $yml_cns = sfYaml::load( sfConfig::get('sf_config_dir').DIRECTORY_SEPARATOR.'databases.yml' );
    foreach ($yml_cns['all'] as $cn_name => $cn) {

        // Creo objeto conexion si no existiese

        $obj_cn = Doctrine::getTable('PsdfConnection')->findByName($cn_name);
        if( count($obj_cn)==0 ) {
            $obj_cn = new PsdfConnection();
            $obj_cn->setName($cn_name);
            $obj_cn->save();
        }
        else {
            $obj_cn = $obj_cn[0]; // Deberia encontrar siempre solo uno
        }

        // Recorro schemas definidos en la base de datos (conexion)

        $cn['schemas'][]='public'; // Agrego el publico que por defecto no se especifica
        foreach( $cn['schemas'] as $schema_name ) {

            // Creo objeto schema si no existiese

            $obj_sch = Doctrine::getTable('PsdfSchema')->findByName($schema_name);
            if( count($obj_sch)==0 ) {
                $obj_sch = new PsdfSchema();
                $obj_sch->setName($schema_name);
                $obj_sch->setPsdfConnection($obj_cn);
                $obj_sch->save();
            }
            $obj_schemas[$schema_name]=$obj_sch;
        }

    }

    // Recorro clases definidas en el schema

    // Copy/paste de sfDoctrineBuildModeltask.class.php
    $config = $this->getCliConfig();
    //$builderOptions = $this->configuration->getPluginConfiguration('sfDoctrinePlugin')->getModelBuilderOptions();
    //$stubFinder = sfFinder::type('file')->prune('base')->name('*'.$builderOptions['suffix']);
    //$before = $stubFinder->in($config['models_path']);
    $schema = $this->prepareSchemaFile($config['yaml_schema_path']);

    foreach (sfYaml::load($schema) as $model => $definition) {
        // Determino nombre del esquema
        if( isset($definition['tableName']) ) {
            $part = explode('.', $definition['tableName']);
            $schema_name = $part[0];
        }
        else {
            $schema_name = 'public';
        }

        // Creo objeto clase si no existiese

        $obj = Doctrine::getTable('PsdfClass')->findByName($model);
        if( count($obj)==0 ) {
            $obj = new PsdfClass();
            $obj->setName($model);
            $obj->setPsdfSchema($obj_schemas[$schema_name]);
            $obj->save();
        }
    }

  }
}

?>