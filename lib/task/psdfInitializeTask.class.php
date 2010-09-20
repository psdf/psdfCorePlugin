<?php

class psdfInitializeTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'initialize';
    $this->briefDescription    = 'Configuración inicial del PSDF';
    $this->detailedDescription = <<<EOF
La Tarea [psdf:initialize|INFO] inicializa un proyecto PSDF generando e
importando los datos iniciales:

  [./symfony psdf:initialize|INFO]

EOF;

  }

  public function execute($arguments = array(), $options = array())
  {
    // Publico los recursos de los plugins

    $this->logSection('Instalacion PSDF', 'Publicando recursos de los plugins...');
    $this->runTask('plugin:publish-assets');
    $this->logSection('Instalacion PSDF', 'Ok!');

    // Permisos necesarios en carpetas del proyecto

    $this->logSection('Instalacion PSDF', 'Permisos en directorios...');
    $this->runTask('psdf:permissions');
    $this->logSection('Instalacion PSDF', 'Ok!');

    // Genero la aplicacion macro (default) del psdf

    $this->logSection('Instalacion PSDF', 'Generando macro default...');
    $this->runTask('psdf:generate-macro', 'psdf');
    $this->logSection('Instalacion PSDF', 'Ok!');

    // Paso a configurar la db
    
    $this->runTask('psdf:configure-db');
    
    $this->logSection('Instalacion PSDF', 'Fin de la inicialización del entorno');
  }
}

?>