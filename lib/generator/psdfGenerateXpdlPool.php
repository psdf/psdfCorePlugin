<?php

  /**
   * Genera y retorna la porcion xpdl de un nuevo pool (con un lane incluido)
   * Argumentos
   */
  class psdfGenerateXpdlPool
  {
    static public function execute($arguments=array(), $options=array())
    {    
      $process_id = $arguments['process_id'];
    	
      $skeleton = dirname(__FILE__).'/../../data/generator/skeleton/psdfXpdl/pool.part.xpdl';
      
      if( !is_file($skeleton) )
      {
        throw new sfCommandException(sprintf('No se pudo identificar esquelo de Pool'));
      }
      
      $xpdl = file_get_contents($skeleton);       

      // customize xpdl
      $constants = array(
        'PROCESS_ID' => $process_id,
        'POOL_ID'  => UtilXpdl::genRandId(),
        'POOL_DISPLAY_NAME' => 'Pool',
        'POOL_NAME' => 'Pool',
        'LANE_ID' => UtilXpdl::genRandId(),
        'LANE_DISPLAY_NAME' => 'Lane',
        'LANE_NAME' => 'Lane',
      );
      
      foreach( $constants as $key => $value)
      {
        $xpdl = str_replace('##'.$key.'##', $value, $xpdl);
      }
      
      return $xpdl;      
    }   
  }
?>