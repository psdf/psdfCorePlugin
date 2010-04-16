<?php

class ##ACTIVITY##Action extends sfAction
{ 
  public function execute(sfWebRequest $request)
  {
    if( !$request->isMethod('post') )
    {
      // Valido la continuidad del flujo para la misma sesion
      if( $this->getUser()->hasFlash('psdf##PROCESS_ID##'))
      {
        // Recupero flujo
        $this->f = $this->getUser()->getAttribute('psdfFlow['.$this->getUser()->getFlash('psdf##PROCESS_ID##').']');
        
        // Validaciones
        if( !$this->f )
          throw new sfException('No se pudo instanciar flujo de ejecucion');          
        if( $this->f->getRelEstado()!=EstadoFlow::ACTIVO )
          throw new sfException('El flujo ya no se encuentra activo');
      }
      else
      {
        throw new sfException('Resumen de flujo aun no implementado...');
      }

      // Logica de/los patron/es previo a interfaz
      $this->run();
    }
    else
    {
      // Recupero y Valido identificador del flujo
      if( !$request->getParameter('f') )
        throw new sfException('No se pudo determinar continuidad del flujo');       
  
      $this->f = $this->getUser()->getAttribute('psdfFlow['.$request->getParameter('f').']');
  
      // Validaciones
      if( !$this->f )
          throw new sfException('No se pudo instanciar flujo de ejecucion');          
      if( $this->f->getRelEstado()!=EstadoFlow::ACTIVO )
        throw new sfException('El flujo ya no se encuentra activo');  
      
      // Logica de/los patron/es post interfaz
      $this->resume($request);
        
      $this->forward('##MODULE##', $this->getNextActivity());
    }
  }
   
  private function run()
  {
  	// Instancio el patron
  	$ptn = new ##PTN_NAME##Pattern();
  	
    // Seteo parametros de entrada 
    ##PTN_SET_PARAMS##
    
    // Logica particular del patron antes de visualizar interfaz
    $ptn->execute();
    
    // paso parametros a la interfaz si la tuviese
    ##PTN_SET_TEMPLATE##
    
    // Tomo los datos del patron que van a la interfaz
    foreach( $ptn->getTplParameters() as $name => $value )
      $this->$name = $value;
    
    // Llevo a la sesion la instancia actual del patron para recuperarla luego de la interfaz
    $this->getUser()->setFlash($this->f->getId().'/##PTN_NAME##', $ptn);
  }
  
  private function resume($request)
  {
  	$ptn = $this->getUser()->getFlash($this->f->getId().'/##PTN_NAME##');
  	
    // Logica particular del patron post interfaz
    $ptn->resume($request);
  	
    // Actualizo datafields modificados por la actividad
    ##SET_DATAFIELDS##
  }
        
  private function getNextActivity()
  {
    $this->getUser()->setAttribute('psdfFlow['.$this->f->getId().']', $this->f);    
    $this->getUser()->setFlash('psdf##PROCESS_ID##', $this->f->getId());
    
    ##RULES_NEXT##
    
    return $next;
  }
  
  /**
   * Paso a la accion los parametros que necesite el patron para la interfaz
   */
  private function parseTemplateParams($patternParams)
  {
  	foreach( $patternParams as $name => $value )
  	{
  		$this->$name = $value;
  	}
  }

}
    
?>
