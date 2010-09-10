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
    
    // Cambio estado a completado y grabo
    $this->f->setRelEstado(EstadoFlow::COMPLETADO);
    $this->f->save();

    // De aqui a donde deberia llamar....
    return sfView::NONE;
  }
}

?>