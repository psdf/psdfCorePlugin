<?php

class psdfEnabledModuleTask extends sfBaseTask
{
  public function configure()
  {
    $this->addArgument('module', sfCommandArgument::REQUIRED, 'Nombre del modulo');
    $this->addArgument('application', sfCommandArgument::REQUIRED, 'Nombre de la aplicacion');

    $this->namespace = 'psdf';
    $this->name      = 'enabled-module';
    $this->briefDescription    = 'Habilita un modulo de un plugin symfony en un aplicativo';
    $this->detailedDescription = <<<EOF
La Tarea [psdf:enabled-module|INFO] habilita un modulo en un aplicativo:

  [./symfony psdf:initialize module_name application_name|INFO]
EOF;

  }

  public function execute($arguments = array(), $options = array())
  {
    $file = sfConfig::get('sf_apps_dir').DIRECTORY_SEPARATOR.
                $arguments['application'].DIRECTORY_SEPARATOR.'config'.DIRECTORY_SEPARATOR.'settings.yml';
    
    if(file_exists($file)) {
        $config = sfYaml::load( $file );
        if(!is_array($config['all']['.settings']['enabled_modules']))
            $config['all']['.settings']['enabled_modules']=array();
        if( !in_array($arguments['module'], $config['all']['.settings']['enabled_modules']) ) {
            $config['all']['.settings']['enabled_modules'][] = $arguments['module'];
        }
        file_put_contents($file, sfYaml::dump($config, 4));
    }
  }
}

?>