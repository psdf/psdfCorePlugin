<?php

class psdfCorePluginConfiguration extends sfPluginConfiguration
{
  /**
   * @see sfPluginConfiguration
   */
  public function initialize()
  {
    sfConfig::set( 'psdf_xpdl_dir', sfConfig::get('sf_data_dir').'/xpdl' );
    sfConfig::set( 'psdf_xmi_dir', sfConfig::get('sf_data_dir').'/xmi' );
  }
}
