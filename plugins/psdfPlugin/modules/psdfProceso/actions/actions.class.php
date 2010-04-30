<?php

require_once dirname(__FILE__).'/../lib/psdfProcesoGeneratorConfiguration.class.php';
require_once dirname(__FILE__).'/../lib/psdfProcesoGeneratorHelper.class.php';

/**
 * proceso actions.
 *
 * @package    psdf
 * @subpackage proceso
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class psdfProcesoActions extends autoPsdfProcesoActions
{
  public function executeConstruir($request)
  {
    // Se construye desde el paquete por eso primero instancio el proceso 
  	
    $proc = Doctrine::getTable('Proceso')->find($request->getParameter('id'));
    $proc->getPaquete()->build( $request->getParameter('id') );
    $this->redirect($this->getModuleName().'/index');
  }

  public function executeEjecutar($request)
  {
    // Se construye desde el paquete por eso primero instancio el proceso
    // para obtener relPaquete.

    $proc = Doctrine::getTable('Proceso')->find($request->getParameter('id'));
    $sf = $proc->getInfoSymfony();
    
    UtilPsdf::redirectApp($sf['application'], $sf['module'], $sf['action']);
  }

}
