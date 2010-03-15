<?php 

class psdfCrearPaqueteAction extends sfAction
{

  public function execute($request)
  { 
    $paqueteList = Doctrine::getTable('Paquete')
         ->createQuery('a')
         ->execute();
     
    $paqueteList[0]->generate();    

    return sfView::NONE;
  }
  
}