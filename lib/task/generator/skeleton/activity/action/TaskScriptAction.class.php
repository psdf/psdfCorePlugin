<?php

class ##ACTION##Action extends sfAction {
    
    public function execute($request) {

        // Recupero y Valido identificador del flujo
        $this->f = $this->getUser()->getCurrentFlow();

        if( !$this->f )
            throw new sfException('No se pudo recuperar flujo de ejecucion');
        if( $this->f->getXpdlProcessId() != '##PROCESS_ID##' )
            throw new sfException('El flujo no se corresponde con el proceso instanciado');
        if( $this->f->getRelEstado()!=EstadoFlow::ACTIVO )
            throw new sfException('El flujo ya no se encuentra activo');

        // Instancio el patron
        $ptn = new ##PTN_NAME##Pattern();

        // Seteo parametros de entrada
        ##PTN_SET_PARAMS##

        // Logica particular del patron
        $ptn->execute();

        if( $ptn->getError() ) {
            $this->error = $ptn->getError();
            return sfView::ERROR;
        }

        // Actualizo datafields modificados por la actividad
        ##SET_DATAFIELDS##

        ##RULES_NEXT##

        $this->getUser()->setCurrentFlow($this->f);

        $this->redirect('##MODULE##/'.$next);
  }
      
}

?>
