<?php

class psdfGenerateActivityTask extends psdfBaseGenerateActivityTask
{
  public function configure()
  {
    $this->namespace = 'psdf';
    $this->name      = 'generate-activity';
    $this->briefDescription    = 'Genera una nueva tarea PSDF';

    $this->addArgument('macro', sfCommandArgument::REQUIRED, 'Nombre del Macro');
    $this->addArgument('package', sfCommandArgument::REQUIRED, 'Nombre del Paquete');
    $this->addArgument('process', sfCommandArgument::REQUIRED, 'Nombre del proceso contenido en el paquete xpdl');
    $this->addArgument('process_id', sfCommandArgument::REQUIRED, 'Id del proceso contenido en el paquete xpdl');
    $this->addArgument('activity', sfCommandArgument::REQUIRED, 'Nombre de la actividad contenido en el paquete xpdl');
    $this->addArgument('activity_id', sfCommandArgument::REQUIRED, 'Id de la actividad contenido en el paquete xpdl');
    $this->addOption('force', null, sfCommandOption::PARAMETER_OPTIONAL, 'Forzar si ya existiese el proceso', false);
  }

  public function execute($arguments = array(), $options = array())
  {
    $this->logSection('psdf:generate-activity', sprintf("Generando actividad '%s'...", $arguments['activity']));
    $this->logSection('psdf:generate-activity', sprintf("Nombre: '%s' Id: '%s' Type: '%s'", $arguments['activity'], $this->psdf_activity_data['id'], $this->psdf_activity_data['type']));

    //$this->log( 'Datos de la actividad:' );
    //$this->log( sfYaml::dump($this->psdf_activity_data) );

    // --------------------------------
    // Creo la accion y template correspondiente
    // --------------------------------

    // Nombres de actividad parseado a implementar
    $action = str_replace(' ', '_', $arguments['activity']);

    $actionDir = sfConfig::get('sf_apps_dir').'/'.$arguments['macro'].'/modules/'.$arguments['package'].'/actions';
    $templateDir = sfConfig::get('sf_apps_dir').'/'.$arguments['macro'].'/modules/'.$arguments['package'].'/templates';

    $actionFile = $action.'Action.class.php';
    $templateFile = $action.'Success.php';
    $errorFile = $action.'Error.php';

    $filesystem = new sfFilesystem();

    if( !is_dir($actionDir) ) {
        throw new sfCommandException(sprintf("No existe el directorio '%s' del modulo '%s' sobre el cual implementar la accion '%s'", $actionDir, $arguments['package'], $action));
    }
    if (is_file($actionDir.'/'.$actionFile)) {
        // Borro el archivo porque lo voy a recrear
        $filesystem->remove($actionDir.'/'.$actionFile);
        //throw new sfCommandException(sprintf('The action "%s" already exists.', $actionFile));
    }
    if (is_file($templateDir.'/'.$templateFile)) {
        // Borro el archivo porque lo voy a recrear
        $filesystem->remove($templateDir.'/'.$templateFile);
        //throw new sfCommandException(sprintf('The template "%s" already exists.', $templateFile));
    }

    // Activity Type determine skeleton
    $skeletonAction   = dirname(__FILE__).sprintf( '/skeleton/activity/action/%sAction.class.php', $this->psdf_activity_data['type'] );
    $skeletonTemplate = dirname(__FILE__).sprintf( '/skeleton/activity/template/%sSuccess.php', $this->psdf_activity_data['type'] );
    $skeletonError    = dirname(__FILE__).sprintf( '/skeleton/activity/template/%sError.php', $this->psdf_activity_data['type'] );

    if( !is_file($skeletonAction) ) {
        throw new sfCommandException(sprintf("No hay definido un esqueleto para crear la actividad del tipo '%s'", $this->psdf_activity_data['type']));
    }

    // --------------------------------
    // Personalizacion comun a todas las actividades
    // --------------------------------

    $scripts['set_datafields'] = $this->genScriptSetDatafield();
    $scripts['rules_next'] = $this->genScriptNextActivity();
    $scripts['pattern'] = $this->genScriptsPattern();

    // customize action
    $constants = array(
            'ACTION' => $action,
            'MODULE' => $arguments['package'],
            'PROCESS_ID' => $arguments['process_id'],
            'RULES_NEXT' => $scripts['rules_next'],
            'SET_DATAFIELDS' => $scripts['set_datafields'],
            'PTN_NAME' => $scripts['pattern']['name'],
            'PTN_SET_PARAMS' => $scripts['pattern']['set_parameter'],
            'PTN_SET_TEMPLATE' => $scripts['pattern']['set_template'],
            'PTN_SET_DATAFIELDS' => $scripts['pattern']['set_datafield'],
            'PROCESS_NAME' => $arguments['process'],
            'ACTIVITY_NAME' => $arguments['activity'],

        );

    // create basic action
    $filesystem->copy($skeletonAction, $actionDir.'/'.$actionFile);
    $finder = sfFinder::type('file')->name($actionFile);
    $filesystem->replaceTokens($finder->in($actionDir), '##', '##', $constants);

    if( is_file($skeletonTemplate) ) {
        $filesystem->copy($skeletonTemplate, $templateDir.'/'.$templateFile);
        $finder = sfFinder::type('file')->name($templateFile);
        $filesystem->replaceTokens($finder->in($templateDir), '##', '##', $constants);
    }

    if( is_file($skeletonError) ) {
        $filesystem->copy($skeletonError, $templateDir.'/'.$errorFile);
        $finder = sfFinder::type('file')->name($errorFile);
        $filesystem->replaceTokens($finder->in($templateDir), '##', '##', $constants);
    }

    $this->logSection('psdf:generate-activity', sprintf("Fin generacion actividad", $arguments['activity']));
  }
}

?>