<?php

  /**
   * Crea un paquete (modulo symfony)
   * Argumentos
   *   $arguments['application']
   *   $arguments['module']
   *   $arguments['module_name']
   * Opciones
   * Extension de la tarea generate:module de symfony
   * (ver symfony/lib/task/generator/sfGenerateModuleTask.class.php, metodo execute())
   */
  class psdfGeneratePackage
  {
  	static public function execute($arguments=array(), $options=array())
  	{    
	    $app    = $arguments['application'];
	    $module = $arguments['module'];

	    // Validate the module name
	    if (!preg_match('/^[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*$/', $module))
	    {
	      throw new sfCommandException(sprintf('The module name "%s" is invalid.', $module));
	    }

	    $moduleDir = sfConfig::get('sf_apps_dir').'/'.$app.'/modules/'.$module;

	    if (is_dir($moduleDir))
	    {
	      throw new sfCommandException(sprintf('The module "%s" already exists in the "%s" application.', $moduleDir, $app));
	    }
	    
	    $filesystem = new sfFilesystem();	    

	    $properties = parse_ini_file(sfConfig::get('sf_config_dir').'/properties.ini', true);

	    $constants = array(
	      'PROJECT_NAME' => isset($properties['symfony']['name']) ? $properties['symfony']['name'] : 'symfony',
	      'APP_NAME'     => $app,
	      'MODULE_NAME'  => $module,
	      'AUTHOR_NAME'  => isset($properties['symfony']['author']) ? $properties['symfony']['author'] : 'Your name here',
	    );

      $skeletonDir = dirname(__FILE__).'/../../data/generator/skeleton/psdfPackage';
	
	    // create basic application structure
	    $finder = sfFinder::type('any')->discard('.sf');
	    $filesystem->mirror($skeletonDir.'/module', $moduleDir, $finder);
	
	    // create basic test
	    $filesystem->copy($skeletonDir.'/test/actionsTest.php', sfConfig::get('sf_test_dir').'/functional/'.$app.'/'.$module.'ActionsTest.php');
	
	    // customize test file
	    $filesystem->replaceTokens(sfConfig::get('sf_test_dir').'/functional/'.$app.DIRECTORY_SEPARATOR.$module.'ActionsTest.php', '##', '##', $constants);
	
	    // customize php and yml files
	    $finder = sfFinder::type('file')->name('*.php', '*.yml');
	    $filesystem->replaceTokens($finder->in($moduleDir), '##', '##', $constants);  		
  	}  	
  }
?>