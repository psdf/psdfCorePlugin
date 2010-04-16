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
    
    // Cambio estado a completado y grabo
    $this->f->setRelEstado(EstadoFlow::COMPLETADO);
    $this->f->save();

    // De aqui a donde deberia llamar....
    return sfView::NONE;
  }
}

?>