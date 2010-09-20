<?php

class psdfGenerateMacroTask extends sfBaseTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'generate-macro';
    $this->briefDescription    = 'Genera un nuevo Macro PSDF';

    $this->addArgument('macro', sfCommandArgument::REQUIRED, 'Nombre del Macro');
  }

  public function execute($arguments = array(), $options = array())
  {
    // --------------------------------
    // Creo el aplicativo correspondiente
    // --------------------------------

    $this->runTask('generate:app', array($arguments['macro']));

    // --------------------------------
    // Personalizacion comun a todos los macros
    // --------------------------------

    $appDir = sfConfig::get('sf_apps_dir').'/'.$arguments['macro'];
    $skeletonDir = dirname(__FILE__).'/skeleton/macro';
    // Clase user propia del psdf
    $this->getFilesystem()->copy($skeletonDir.'/app/lib/myUser.class.php', $appDir.'/lib/myUser.class.php', array("override"=>true));
    // Layout redefinido
    $this->getFilesystem()->copy($skeletonDir.'/app/templates/layout.php', $appDir.'/templates/layout.php', array("override"=>true));

    // Modulo seguridad sfDoctrineGuardPlugin
    $this->runTask('psdf:enabled-module', array('sfGuardAuth', $arguments['macro']));
    $file = sfConfig::get('sf_apps_dir').DIRECTORY_SEPARATOR.$arguments['macro'].DIRECTORY_SEPARATOR.'config'.DIRECTORY_SEPARATOR.'settings.yml';
    if(file_exists($file)) {
        $config = sfYaml::load( $file );
        $config['all']['.settings']['login_module']='sfGuardAuth';
        $config['all']['.settings']['login_action']='signin';
        $config['all']['.settings']['secure_module']='sfGuardAuth';
        $config['all']['.settings']['secure_action']='secure';
        file_put_contents($file, sfYaml::dump($config, 4));
    }

    // Modulos del psdf
    $this->runTask('psdf:enabled-module', array('default', $arguments['macro']));
    $this->runTask('psdf:enabled-module', array('psdfComponents', $arguments['macro']));

    // --------------------------------
    // Personalizacion particular del macro (debería leer de alguna configuracion)
    // --------------------------------
    
    // Modulos administracion sfDoctrineGuardPlugin y psdfCorePlugin para el macro psdf
    if( $arguments['macro']=='psdf' ) {
        $this->runTask('psdf:enabled-module', array('sfGuardGroup', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('sfGuardUser', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('sfGuardPermission', $arguments['macro']));

        $this->runTask('psdf:enabled-module', array('psdfOrganizacion', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('psdfUnidadorg', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('psdfProyecto', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('psdfPaquete', $arguments['macro']));
        $this->runTask('psdf:enabled-module', array('psdfProceso', $arguments['macro']));
    }

  }
}

?>