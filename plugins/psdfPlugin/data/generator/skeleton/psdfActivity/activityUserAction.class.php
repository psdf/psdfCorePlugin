<?php

class ##ACTIVITY##Action extends sfAction
{ 
  public function execute($request)
  {
    // Recupero y Valido identificador del flujo
    $this->f = $this->getUser()->getCurrentFlow();

    if( !$this->f )
      throw new sfException('No se pudo recuperar flujo de ejecucion');
    if( $this->f->getRelProceso() != ##PROCESS_ID## )
      throw new sfException('El flujo no se corresponde con el proceso instanciado');
    if( $this->f->getRelEstado()!=EstadoFlow::ACTIVO )
      throw new sfException('El flujo ya no se encuentra activo');

    if( !$request->isMethod('post') ) {

      // Logica de/los patron/es previo a interfaz
      $this->run();

      $this->getUser()->setCurrentFlow($this->f);
    }
    else {
  
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
    foreach( $ptn->getTplParameters() as $name => $value ) {
      $this->$name = $value;
    }
    
    // Llevo en el flujo la instancia actual del patron para recuperarla luego de la interfaz
    $this->getUser()->setCurrentPattern($ptn);
    //$this->getUser()->setFlash($this->f->getId().'.##PTN_NAME##', $ptn);
  }
  
  private function resume($request)
  {
    $ptn = $this->getUser()->getCurrentPattern();
    if( !$ptn )
      throw new sfException('No se pudo recuperar instancia del patron ##PTN_NAME##');
  	
    // Logica particular del patron post interfaz
    $ptn->resume($request);
  	
    // Actualizo datafields modificados por la actividad
    ##SET_DATAFIELDS##
  }
        
  private function getNextActivity()
  {
    $this->getUser()->setCurrentFlow($this->f);
    
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
