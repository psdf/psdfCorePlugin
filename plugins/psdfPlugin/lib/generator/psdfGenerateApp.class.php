<?php

  /**
   * Crea un macro (aplicativo symfony)
   * Argumentos
   *   $arguments['application']
   * Opciones
   *   $options['csrf-secret']
   *   $options['escaping-strategy']
   * Extension de la tarea generate:app de symfony
   * (ver symfony/lib/task/generator/sfGenerateAppTask.class.php, metodo execute())
   */
  class psdfGenerateApp
  {
	  public function execute($arguments = array(), $options = array())
	  {
	  	
	    $app = $arguments['application'];
	
	    // Validate the application name
	    if (!preg_match('/^[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*$/', $app))
	    {
	      throw new sfCommandException(sprintf('The application name "%s" is invalid.', $app));
	    }
	
	    $appDir = sfConfig::get('sf_apps_dir').'/'.$app;
	
	    if (is_dir($appDir))
	    {
	      throw new sfCommandException(sprintf('The application "%s" already exists.', $appDir));
	    }
	
	    $filesystem = new sfFilesystem();
      
	    $skeletonDir = dirname(__FILE__).'/../../data/generator/skeleton/psdfApp';
	    
	    // Create basic application structure
	    $finder = sfFinder::type('any')->discard('.sf');
	    $filesystem->mirror($skeletonDir.'/app', $appDir, $finder);
	
	    // Create $app.php or index.php if it is our first app
	    $indexName = 'index';
	    $firstApp = !file_exists(sfConfig::get('sf_web_dir').'/index.php');
	    if (!$firstApp)
	    {
	      $indexName = $app;
	    }
	
	    if (false === $options['csrf-secret'])
	    {
	      $options['csrf-secret'] = 'false';
	    }
	
	    // Set no_script_name value in settings.yml for production environment
	    $finder = sfFinder::type('file')->name('settings.yml');
	    $filesystem->replaceTokens($finder->in($appDir.'/config'), '##', '##', array(
	      'NO_SCRIPT_NAME'    => $firstApp ? 'on' : 'off',
	      'CSRF_SECRET'       => sfYamlInline::dump(sfYamlInline::parseScalar($options['csrf-secret'])),
	      'ESCAPING_STRATEGY' => sfYamlInline::dump((boolean) sfYamlInline::parseScalar($options['escaping-strategy'])),
	    ));
	    
	    $filesystem->copy($skeletonDir.'/web/index.php', sfConfig::get('sf_web_dir').'/'.$indexName.'.php');
	    $filesystem->copy($skeletonDir.'/web/index.php', sfConfig::get('sf_web_dir').'/'.$app.'_dev.php');
	
	    $filesystem->replaceTokens(sfConfig::get('sf_web_dir').'/'.$indexName.'.php', '##', '##', array(
	      'APP_NAME'    => $app,
	      'ENVIRONMENT' => 'prod',
	      'IS_DEBUG'    => 'false',
	      'IP_CHECK'    => '',
	    ));
	
	    $filesystem->replaceTokens(sfConfig::get('sf_web_dir').'/'.$app.'_dev.php', '##', '##', array(
	      'APP_NAME'    => $app,
	      'ENVIRONMENT' => 'dev',
	      'IS_DEBUG'    => 'true',
	      'IP_CHECK'    => '// this check prevents access to debug front controllers that are deployed by accident to production servers.'.PHP_EOL.
	                       '// feel free to remove this, extend it or make something more sophisticated.'.PHP_EOL.
	                       'if (!in_array(@$_SERVER[\'REMOTE_ADDR\'], array(\'127.0.0.1\', \'::1\')))'.PHP_EOL.
	                       '{'.PHP_EOL.
	                       '  die(\'You are not allowed to access this file. Check \'.basename(__FILE__).\' for more information.\');'.PHP_EOL.
	                       '}'.PHP_EOL,
	    ));
	
	    $filesystem->rename($appDir.'/config/ApplicationConfiguration.class.php', $appDir.'/config/'.$app.'Configuration.class.php');
	
	    $filesystem->replaceTokens($appDir.'/config/'.$app.'Configuration.class.php', '##', '##', array('APP_NAME' => $app));
	
      /*$dispatcher = new sfEventDispatcher();
	    $formatter = new sfAnsiColorFormatter();
	    
	    $fixPerms = new sfProjectPermissionsTask($dispatcher, $formatter);
	    $fixPerms->setCommandApplication($this->commandApplication);
	    $fixPerms->run();*/
	
	    // Create test dir
	    $filesystem->mkdirs(sfConfig::get('sf_test_dir').'/functional/'.$app); 
	  }
  }
?>