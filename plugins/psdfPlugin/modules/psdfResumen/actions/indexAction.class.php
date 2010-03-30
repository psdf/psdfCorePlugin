<?php

class indexAction extends sfAction {
    public function execute($request) {
        // Recupero todos los procesos
        $this->procList = Doctrine::getTable('Proceso')
                ->createQuery('a')
                ->execute();

        $q = Doctrine_Query::create()
                ->select('p.id, p.nombre')
                ->from('Proceso p')
                ->fetchArray();

        $this->listaProc = new sfWidgetFormDoctrineChoice(array(
                        'model' => 'Proceso',
                        'add_empty' => false,
                        'multiple' => false
                )
        );


        
        //$this->listaProc = new sfWidgetFormSelect(array('choices' => $q));

    }

}
