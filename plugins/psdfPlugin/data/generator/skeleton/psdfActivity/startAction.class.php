<?php

class ##ACTIVITY##Action extends sfAction
{
  public function execute($request)
  {
    // Nuevo flujo, nueva instancia
    $this->f = new Flow();
    
    // Por defecto el flujo es inactivo hasta se complete la inicializacion
    $this->f->setRelEstado(EstadoFlow::INACTIVO);
    
    // Seteo al flujo el Proceso que dio inicio
    $this->f->setRelProceso(##PROCESS_ID##);
    
    // Inicializo variables del flujo
    ##SET_DATAFIELDS##
    
    // Cambio estado a activo
    $this->f->setRelEstado(EstadoFlow::ACTIVO);

    // Grabo el flujo (tambien para que genere id)
    $this->f->save();
        
    // Paso a siguiente actividad
    $this->forward('##MODULE##', $this->getNextActivity());
  }
  
  public function getNextActivity()
  {
    $this->getUser()->setAttribute('psdfFlow['.$this->f->getId().']', $this->f);    
    $this->getUser()->setFlash('psdf##PROCESS_ID##', $this->f->getId());
  	
    ##RULES_NEXT##
  	
    return $next;
  }
}

?>