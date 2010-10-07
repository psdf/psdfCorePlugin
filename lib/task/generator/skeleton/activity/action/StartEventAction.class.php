<?php

class ##ACTION##Action extends sfAction
{
  public function execute($request)
  {
    // Nuevo flujo, nueva instancia
    $this->f = new Flow();
    
    // Por defecto el flujo es inactivo hasta se complete la inicializacion
    $this->f->setRelEstado(EstadoFlow::INACTIVO);
    
    // Seteo al flujo el Proceso que dio inicio
    $this->f->setXpdlProcessId('##PROCESS_ID##');
    
    ##SET_DATAFIELDS##
    
    // Cambio estado a activo
    $this->f->setRelEstado(EstadoFlow::ACTIVO);

    // Grabo el flujo (tambien para que genere id)
    $this->f->save();

    ##RULES_NEXT##

    $this->getUser()->setCurrentFlow($this->f);

    $this->redirect('##MODULE##/'.$next);
  }
  
}

?>
