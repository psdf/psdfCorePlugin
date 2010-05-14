<?php

class psdfCreateSchemaDbTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'create-schema-db';
    $this->briefDescription    = 'Crea un esquema en la base de datos';

    $this->addArgument('nombre', sfCommandArgument::REQUIRED, 'Nombre del Schema a crear');

    $this->addOption( 'connection', null,
                      sfCommandOption::PARAMETER_REQUIRED,
                      'Nombre del a conexión', 'psdf');
  }

  public function execute($arguments = array(), $options = array())
  {
    $databaseManager = new sfDatabaseManager($this->configuration);
    $connection = $databaseManager->getDatabase(isset($options['connection']) ? $options['connection'] : null)->getConnection();

    $dbh = Doctrine_Manager::getInstance()->getCurrentConnection()->getDbh();

    $result = $dbh->query('CREATE SCHEMA '.$arguments['nombre']);
  }
}

?>