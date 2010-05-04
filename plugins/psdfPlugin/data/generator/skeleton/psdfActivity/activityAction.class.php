<?php

class ##ACTIVITY##Action extends sfAction
{
  public function execute($request)
  {
    $this->f = $this->getUser()->getCurrentFlow();

    if( !$this->f )
      throw new sfException('No se pudo recuperar flujo de ejecucion');
    if( $this->f->getRelProceso() != ##PROCESS_ID## )
      throw new sfException('El flujo no se corresponde con el proceso instanciado');
    if( $this->f->getRelEstado()!=EstadoFlow::ACTIVO )
      throw new sfException('El flujo ya no se encuentra activo');

    // Logica de/los patron/es
    $this->run();    
          
    $this->redirect('##MODULE##/'.$this->getNextActivity());        
  }
  
  private function run()
  {
    // Instancio el patron
    $ptn = new ##PTN_NAME##Pattern();

    // Seteo parametros de entrada 
    ##PTN_SET_PARAMS##
    
    // Logica particular del patron
    $ptn->execute();
  	
    // Actualizo datafields modificados por la actividad
    ##SET_DATAFIELDS##
  }

  private function getNextActivity()
  {
    // Determino siguiente actividad
    $this->getUser()->setCurrentFlow($this->f);
    
    ##RULES_NEXT##
    
    return $next;
  }    
}

?>
