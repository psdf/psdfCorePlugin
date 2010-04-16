<?php

class ##ACTIVITY##Action extends sfAction
{
  public function execute(sfWebRequest $request)
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
    $this->getUser()->setAttribute('psdfFlow['.$this->f->getId().']', $this->f);    
    $this->getUser()->setFlash('psdf##PROCESS_ID##', $this->f->getId());
    
    ##RULES_NEXT##
    
    return $next;
  }    
}

?>
