<?php

require_once dirname(__FILE__).'/../lib/vendor/symfony/lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();
sfConfig::set('psdf_web_url',dirname($_SERVER['SCRIPT_NAME' ]));
class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
    $this->enablePlugins( array( 'sfDoctrinePlugin',
                                 'psdfPlugin',
                                 'sfDoctrineGuardPlugin' ) );
  }
}
