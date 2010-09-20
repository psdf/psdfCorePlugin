<?php

class psdfConfigureDbTask extends sfBaseTask
{
  public function configure()
  {
    $this->addOptions(array(
      new sfCommandOption('force', null, sfCommandOption::PARAMETER_OPTIONAL, 'Permite reinizializar recreando la base de datos (Usar con mucho cuidado!)', 'false'),
    ));

    $this->namespace = 'psdf';
    $this->name      = 'configure-db';
    $this->briefDescription    = 'Configuración de la conexion y datos iniciales del PSDF';
    $this->detailedDescription = <<<EOF
La Tarea [psdf:configure-db|INFO] configura la conexion a base de datos y el
de datos iniciales:

  [./symfony psdf:configure-db|INFO]

Con la opcion --force se intentara recrear la base de datos si ya existe, utilizarlo con mucho cuidado ATENCION!! se
perderan los datos que ya se tengan cargados!!:

  [./symfony psdf:configure-db --force=true|INFO]
EOF;

  }

  public function execute($arguments = array(), $options = array())
  {

    // Datos por defecto

    // Conexion (no se utiliza 'doctrine')
    $connection = 'psdf';

    // Schemas en base de datos
    $schema = array('psdforg',
                    'psdform',
                    'psdfwf', );       //Schemas en db
                    //
    // Si estoy forzando, primero intento recrear la db (danger!)
    
    if (in_array(strtolower($options['force']), array('true'))) {
        $this->logSection('Configuracion PSDF', 'Forzando borrado y creacion de la base de datos');
        $this->runTask('doctrine:drop-db', array('dbnew'));
        $this->runTask('doctrine:create-db', array('dbnew'));
        $this->logSection('Configuracion PSDF', 'Ok!');
    }

    //------------------------
    // Configuracion db
    //------------------------

    $this->logSection('Configuracion PSDF', 'Configurando conexion a base de datos...');

    if( $this->askConfirmation(array_merge(
        array('Antes de continuar debe asegurarse de contar con una base de datos vacia '),
        array('y pasar correctamente los parametros de conexion solicitados a continuacion. '),
        array('Puede cancelar ahora y retomar la configuracion en otro momento ejecutando la tarea'),
        array('   psdf:configure-db psdf'),
        array('','Continuar ahora con la configuracion? (y/N)')
      ), 'QUESTION_LARGE', false) != 'y') {

        $this->logSection('Configuracion PSDF', 'Configuracion db cancelada...');
        exit;
    }

    // Solicito parametros de la db (host, nombre, usuario y clave)
    $host = $this->ask('Host de la base de datos (generalmente localhost) :');
    $db = $this->ask('Nombre de la base de datos :');
    $user = $this->ask('Usuario de la base de datos :');
    $pass = $this->ask('Password del usuario:');

    // Defino la conexion
    $prash = sprintf('"pgsql:host=%s;dbname=%s"', $host, $db);
    $this->runTask('configure:database', array($prash, $user, $pass), array("name"=>$connection));

    // Cargo en la conexion los schemas por defecto
    $file = sfConfig::get('sf_config_dir').'/databases.yml';
    $config = sfYaml::load( $file );
    foreach( $schema as $sch )
        $config['all'][$connection]['schemas'][] = $sch;

    // Elimino la conexion por defecto 'doctrine' porque no la uso
    unset($config['all']['doctrine']);

    // Guardo los cambios en el archivo
    file_put_contents($file, sfYaml::dump($config, 4));

    // Creo los schemas db definidos en databases.yml para cada conexion, comun a todos los entornos (all)

    $this->logSection('Configuracion PSDF', 'Creando esquemas en base de datos "'.$db.'"...');
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

    $this->logSection('Configuracion PSDF', 'Creando objetos en base de datos...');
    $this->runTask('doctrine:insert-sql', array(), array());

    // Mientras haya modulos admin symfony compilo filtros y forms

    $this->runTask('doctrine:build', array(), array('filters'));
    $this->runTask('doctrine:build', array(), array('forms'));

    // Cargo datos iniciales estructura db en conexion default

    $this->logSection('Configuracion PSDF', 'Cargando datos iniciales...');
    $this->runTask('psdf:data-load', array(), array('connection'=>$connection));
    $this->runTask('doctrine:data-load', array(), array());
    $this->log('Ok!');

    $this->logSection('Configuracion PSDF', 'Fin de la configuracion...');
  }
}

?>