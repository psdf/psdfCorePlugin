<?php 

class psdfCrearMacroAction extends sfAction
{

  public function execute($request)
  { 
    $orgList = Doctrine::getTable('Organizacion')
         ->createQuery('a')
         ->where('a.id = ?', $this->getRequestParameter('macro[rel_organizacion]'))         
         ->execute();
     
    $orgList[0]->generate($this->getRequestParameter('macro[nombre]'));    

    return sfView::NONE;
  }
  
}