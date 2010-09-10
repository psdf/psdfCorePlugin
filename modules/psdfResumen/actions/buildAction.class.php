<?php 

class buildAction extends sfAction
{
 
  public function execute($request)
  {
  	// Se construye desde el paquete por eso primero instancio el proceso 
  	// para obtener relPaquete.
  	
  	$proc = Doctrine::getTable('Proceso')->find($request->getParameter('proceso[id]'));  	
    $pack = Doctrine::getTable('Paquete')->find($proc->getRelPaquete());
    
    $pack->build( $request->getParameter('proceso[id]') );    
  }
  
}