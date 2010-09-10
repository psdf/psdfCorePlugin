<?php

  /**
   * Crea un proceso (nodo WorkflowProcess en xpdl)
   * Argumentos
   *   $arguments['application']
   *   $arguments['module']
   *   $arguments['process_id']
   *   $arguments['process_name']
   *   $arguments['process_display_name']
   * Opciones
   */
  class psdfGenerateProcess
  {
  	static public function execute($arguments=array(), $options=array())
  	{    
      $app = $arguments['application'];
  		$module = $arguments['module'];
      $process_id = $arguments['process_id'];
	    $process_name = $arguments['process_name'];
      $process_display_name = $arguments['process_display_name'];

      $moduleDir = sfConfig::get('sf_apps_dir').'/'.$app.'/modules/'.$module;
	    $file_pack_xpdl = $moduleDir.'/data/package.xpdl';
      $file_proc_xpdl = dirname(__FILE__).'/../../data/generator/skeleton/psdfProcess/process.part.xpdl';
      $file_pool_xpdl = dirname(__FILE__).'/../../data/generator/skeleton/psdfProcess/pool.part.xpdl';
      
	    if( !is_file($file_pack_xpdl) || !is_file($file_proc_xpdl) || !is_file($file_pool_xpdl))
	    {
	      throw new sfCommandException(sprintf('No se pudo identificar un paquete, parte de proceso o pool'));
	    }

      $contentPack = file_get_contents($file_pack_xpdl);
      $contentProc = file_get_contents($file_proc_xpdl);
      $contentPool = file_get_contents($file_pool_xpdl);      

      $pos = strpos($contentPack, '<xpdl2:WorkflowProcess Id="'.$process_id.'"');
      if( $pos>0 )
      {
        throw new sfCommandException(sprintf('El proceso '.$process_name.' ya existe en el xpdl'));
      }
      
      // Pool
      
      // Defino etiqueta Pools si es el primero
      $pos = strpos($contentPack, '<xpdl2:Pools>');
      if($pos<=0)
        $contentPool = '<xpdl2:Pools>'.$contentPool.'</xpdl2:Pools>';
        
      // Inserto despues de la etiqueta de header redefinibles del paquete  
      $key = '</xpdl2:RedefinableHeader>';
      $contentPack = str_replace($key, $key.$contentPool, $contentPack);
      file_put_contents($file_pack_xpdl, $contentPack);      
      
      // Proceso
      
      // Defino etiqueta WorkflowProcesses si es el primero
      $pos = strpos($contentPack, '<xpdl2:WorkflowProcesses>');
      if($pos<=0)
        $contentProc = '<xpdl2:WorkflowProcesses>'.$contentProc.'</xpdl2:WorkflowProcesses>';
        
      // Inserto antes de la etiqueta de atributos extendidos del paquete  
      $key = '<xpdl2:ExtendedAttributes>';
      $contentPack = str_replace($key, $contentProc.$key, $contentPack);
      file_put_contents($file_pack_xpdl, $contentPack);

      // customize xpdl
      $constants = array(
        'PROCESS_ID' => $process_id,
        'PROCESS_DISPLAY_NAME' => $process_name,
        'PROCESS_NAME'  => str_replace(' ', '', $process_name),
        'POOL_ID'  => UtilXpdl::genRandId(),
        'POOL_DISPLAY_NAME' => 'Pool',
        'POOL_NAME' => 'Pool',
        'LANE_ID' => UtilXpdl::genRandId(),
        'LANE_DISPLAY_NAME' => 'Lane',
        'LANE_NAME' => 'Lane',
      );
      $filesystem = new sfFilesystem();
      $finder = sfFinder::type('file')->name('*.xpdl');
      $filesystem->replaceTokens($finder->in($moduleDir), '##', '##', $constants);            
  	}  	
  }
?>