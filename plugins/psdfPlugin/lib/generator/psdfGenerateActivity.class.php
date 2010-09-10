<?php

/**
 * Crea una actividad (accion symfony)
 * Argumentos
 *   $arguments['application']
 *   $arguments['module']
 *   $arguments['action']
 *   $arguments['process'] (id, name)
 *   $arguments['activity'] (name, type, is_autocomplete)
 *   $arguments['scripts'] (set_datafields, ptn_name, ptn_set_params, ptn_url_template, rules_next)
 * Opciones
 */
class psdfGenerateActivity {
    static public function execute($arguments=array(), $options=array()) {
        $app = $arguments['application'];
        $module = $arguments['module'];
        $action = $arguments['action'];
        $process = $arguments['process'];
        $activity = $arguments['activity'];
        $scripts = $arguments['scripts'];

        // Fuerzo el cero (0) si no contiene valor
        if( !$activity['is_autocomplete'] ) {
            $activity['is_autocomplete']='0';
        }

        $actionDir = sfConfig::get('sf_apps_dir').'/'.$app.'/modules/'.$module.'/actions';
        $templateDir = sfConfig::get('sf_apps_dir').'/'.$app.'/modules/'.$module.'/templates';

        $actionFile = $action.'Action.class.php';
        $templateFile = $action.'Success.php';
        $errorFile = $action.'Error.php';

        $filesystem = new sfFilesystem();

        if( !is_dir($actionDir) ) {
            throw new sfCommandException(sprintf("No se pudo identificar el modulo symfony '%s' implementacion del paquete '%s'", $actionDir, $module));
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
        if( $activity['type']=='StartEvent' ) {
            $skeletonAction = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/startAction.class.php';
        }
        elseif( $activity['type']=='EndEvent' ) {
            $skeletonAction = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/endAction.class.php';
        }
        elseif( $activity['type']=='TaskUser' or $activity['type']=='TaskManual' ) {
            $skeletonAction = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/activityUserAction.class.php';
            $skeletonTemplate = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/activityUserSuccess.php';
            $skeletonError = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/activityUserError.php';
        }
        else {
            $skeletonAction = dirname(__FILE__).'/../../data/generator/skeleton/psdfActivity/activityAction.class.php';
        }

        // create basic action
        $filesystem->copy($skeletonAction, $actionDir.'/'.$actionFile);

        // customize action
        $constants = array(
                'ACTIVITY' => $action,
                'ACTIVITY_NAME' => $activity['name'],
                'MODULE' => $module,
                'PROCESS_ID' => $process['id'],
                'PROCESS_NAME' => $process['name'],
                'SET_DATAFIELDS' => $scripts['set_datafields'],
                'PTN_NAME' => $scripts['ptn_name'],
                'PTN_SET_PARAMS' => $scripts['ptn_set_params'],
                'PTN_URL_TEMPLATE' => file_exists($scripts['ptn_url_template']) ? file_get_contents($scripts['ptn_url_template']) : '',
                'RULES_NEXT' => $scripts['rules_next'],
                'ACTIVITY_AUTOCOMPLETE' => $activity['is_autocomplete'],
        );

        $finder = sfFinder::type('file')->name($actionFile);
        $filesystem->replaceTokens($finder->in($actionDir), '##', '##', $constants);

        // Personalize template Success y Error
        if( $activity['type']=='TaskUser' or $activity['type']=='TaskManual' ) {

            $filesystem->copy($skeletonTemplate, $templateDir.'/'.$templateFile);
            $finder = sfFinder::type('file')->name($templateFile);
            $filesystem->replaceTokens($finder->in($templateDir), '##', '##', $constants);

            $filesystem->copy($skeletonError, $templateDir.'/'.$errorFile);
            $finder = sfFinder::type('file')->name($errorFile);
            $filesystem->replaceTokens($finder->in($templateDir), '##', '##', $constants);
        }
    }
}
?>