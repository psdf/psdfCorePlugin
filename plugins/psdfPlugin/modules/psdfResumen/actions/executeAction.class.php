<?php 

class executeAction extends sfAction
{
 
  public function execute($request)
  {
    $proc = Doctrine::getTable('Proceso')->find($request->getParameter('proceso[id]'));
    $pack = Doctrine::getTable('Paquete')->find($proc->getRelPaquete());
    $macro = $pack->getMacroPaquete();
    
    $app = $macro->getXpdlName();
    $mod = $pack->getXpdlName();
    $acc = $proc->getXpdlName().'_Start';
        
    UtilPsdf::redirectApp($app, $mod, $acc);
  }
  
}