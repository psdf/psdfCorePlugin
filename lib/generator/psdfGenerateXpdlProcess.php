<?php

  /**
   * Genera y retorna la porcion xpdl de un nuevo proceso 
   * Argumentos
   *   $arguments['process_id']
   *   $arguments['process_name']
   */
  class psdfGenerateXpdlProcess
  {
    static public function execute($arguments=array(), $options=array())
    {    
    	$process_id = $arguments['process_id'];
      $process_name = $arguments['process_name'];
      $process_display_name = $arguments['process_display_name'];
      
      $skeleton = dirname(__FILE__).'/../../data/generator/skeleton/psdfXpdl/process.part.xpdl';
      
      if( !is_file($skeleton) )
      {
        throw new sfCommandException(sprintf('No se pudo identificar esquelo de Proceso'));
      }
      
      $xpdl = file_get_contents($skeleton);       

      // customize xpdl
      $constants = array(
        'PROCESS_ID' => $process_id,
        'PROCESS_DISPLAY_NAME' => $process_display_name,
        'PROCESS_NAME'  => $process_name,
      );
      
      foreach( $constants as $key => $value)
      {
        $xpdl = str_replace('##'.$key.'##', $value, $xpdl);
      }
      
      return $xpdl;      
    }   
  }
?>