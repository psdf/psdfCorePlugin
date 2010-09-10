<?php

  /**
   * Retorna un xpdl generado a partir de una plantilla 
   * o default si no es especificada.
   * Argumentos
   *   $arguments['package_id']
   *   $arguments['package_name']
   *   $arguments['plantilla']
   */
  class psdfGenerateXpdlPackage
  {
    static public function execute($arguments=array(), $options=array())
    {    
      $package_id = $arguments['package_id'];
      $package_name = $arguments['package_name'];
      $package_display_name = $arguments['package_display_name'];
      $package_macro_id = $arguments['package_macro_id'];
      $plantilla = $arguments['plantilla'];
      
      if(!$plantilla) $plantilla='default';

      $skeleton = dirname(__FILE__).'/../../data/generator/skeleton/psdfXpdl/'.$plantilla.'.xpdl';

      if (!is_file($skeleton))
      {
        throw new sfCommandException(sprintf('La plantilla "%s" no es correcta o no existe', $skeleton));
      }
      
      $xpdl = file_get_contents($skeleton);       

      // customize xpdl
      $constants = array(
        'PACKAGE_ID' => $package_id,
        'PACKAGE_NAME' => $package_name,
        'PACKAGE_DISPLAY_NAME'  => $package_display_name,
        'PACKAGE_DATE'  => '',
        'PACKAGE_AUTHOR'  => isset($properties['symfony']['author']) ? $properties['symfony']['author'] : 'Your name here',
        'PACKAGE_VERSION'  => '1',
        'PACKAGE_MACRO_ID'  => $package_macro_id,
      );
      
      foreach( $constants as $key => $value)
      {
      	$xpdl = str_replace('##'.$key.'##', $value, $xpdl);
      }
      
      return $xpdl;      
    }   
  }
?>