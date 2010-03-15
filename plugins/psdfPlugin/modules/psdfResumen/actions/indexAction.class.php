<?php

class indexAction extends sfAction
{

  public function execute($request)
  {
  	// Recupero todos los procesos
    $this->procList = Doctrine::getTable('Proceso')
         ->createQuery('a')
         ->execute();    
  }
  
}
