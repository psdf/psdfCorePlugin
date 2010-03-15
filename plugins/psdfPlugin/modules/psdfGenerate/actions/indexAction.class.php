<?php

class psdfIndexAction extends sfAction
{

  public function execute($request)
  { 
  	$idorg = 2; // Soltic

  	$this->orgList = Doctrine::getTable('Organizacion')
         ->createQuery('o')
         ->where('o.id = ?', $idorg)
         ->execute();  	

    $this->paqList = Doctrine::getTable('Paquete') 
         ->createQuery('p')
         ->where('p.rel_organizacion = ?', $idorg)
         ->andWhere('coalesce(p.rel_paquete,0) <= ?', 0)
         ->execute();   
       
  }

}
