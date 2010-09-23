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

    $task = new sfGenerateAppTask($this->dispatcher, $this->formatter);
    $task->run(array($arguments['macro']), array());

    // --------------------------------
    // Personalizacion comun a todos los macros
    // --------------------------------

    $appDir = sfConfig::get('sf_apps_dir').'/'.$arguments['macro'];
    $skeletonDir = dirname(__FILE__).'/skeleton/macro';
    // Clase user propia del psdf
    $this->getFilesystem()->copy($skeletonDir.'/app/lib/myUser.class.php', $appDir.'/lib/myUser.class.php', array("override"=>true));
    // Layout redefinido
    $this->getFilesystem()->copy($skeletonDir.'/app/templates/layout.php', $appDir.'/templates/layout.php', array("override"=>true));

    $emTask = new psdfEnabledModuleTask($this->dispatcher, $this->formatter);

    // Modulo seguridad sfDoctrineGuardPlugin
    $emTask->run(array('sfGuardAuth', $arguments['macro']), array());

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
    $emTask->run(array('default', $arguments['macro']), array());
    $emTask->run(array('psdfComponents', $arguments['macro']), array());

    // --------------------------------
    // Personalizacion particular del macro (debería leer de alguna configuracion)
    // --------------------------------
    
    // Modulos administracion sfDoctrineGuardPlugin y psdfCorePlugin para el macro psdf
    if( $arguments['macro']=='psdf' ) {
        $emTask->run(array('sfGuardGroup', $arguments['macro']));
        $emTask->run(array('sfGuardUser', $arguments['macro']));
        $emTask->run(array('sfGuardPermission', $arguments['macro']));

        $emTask->run(array('psdfOrganizacion', $arguments['macro']));
        $emTask->run(array('psdfUnidadorg', $arguments['macro']));
        $emTask->run(array('psdfProyecto', $arguments['macro']));
        $emTask->run(array('psdfPaquete', $arguments['macro']));
        $emTask->run(array('psdfProceso', $arguments['macro']));
    }

  }
}

?>