<?php

class indexAction extends sfAction
{
  public function execute($request)
  {
  	// Recupero todos los procesos
    $this->procList = Doctrine::getTable('Proceso')
         ->createQuery('a')
         ->execute();
    //$this->listaProc = new sfWidgetFormDoctrineChoice(array('model' => Doctrine::getTable('Proceso')->execute(), 'add_empty' => false));
    //echo $this->listaProc->render('proceso');exit;
    //sfWidgetFormChoice
  }
  
}
