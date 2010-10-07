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
         
        $this->getUser()->setCurrentFlow($this->f);

        ##RULES_NEXT##

        $this->redirect('##MODULE##/'.$next);
    }
}

?>
