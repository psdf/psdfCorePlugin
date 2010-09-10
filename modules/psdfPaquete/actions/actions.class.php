<?php

require_once dirname(__FILE__).'/../lib/psdfPaqueteGeneratorConfiguration.class.php';
require_once dirname(__FILE__).'/../lib/psdfPaqueteGeneratorHelper.class.php';

/**
 * paquete actions.
 *
 * @package    psdf
 * @subpackage paquete
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class psdfPaqueteActions extends autoPsdfPaqueteActions
{
  public function executeXpdlimp($request)
  {
    if (!$request->isMethod('post'))
  	{
  		$this->id = $request->getParameter('id');
  	}
    else
    {
      // Instancio objeto
    	$pkg = Doctrine::getTable('Paquete')->find($request->getParameter('id'));
            
    	// Chequeo tenga contenido
  		if ($_FILES['data']['size'] == 0) 
  		{
        die("ERROR: Zero byte file upload");
      }
  		
      // checkeo el archivo sea permitido
      $allowedFileTypes = array("application/octet-stream");
      if (!in_array($_FILES['data']['type'], $allowedFileTypes))
      {
        die("ERROR: File type not permitted");
      }
      
      // checkeo el archivo sea valido para subirlo
      if (!is_uploaded_file($_FILES['data']['tmp_name']))
      {
        die("ERROR: Not a valid file upload");
      }
      
      // Leo el contenido y asigno al paquete
      $xpdl = file_get_contents($_FILES['data']['tmp_name']);
      $pkg->setXpdl($xpdl);
      $pkg->save();
      
      $this->forward($this->getModuleName(), 'index');
    }
  }
  
  public function executeXpdlexp($request)
  {
    $pkg = Doctrine::getTable('Paquete')->find($request->getParameter('id'));
    
    // Creo el archivo como temporal para descargarlo
    $tmpfname = tempnam(sfConfig::get('sf_upload_dir'), "xpdl");
    $handle = fopen($tmpfname, "w");
		fwrite($handle, $pkg->getXpdl());
		fclose($handle);
        
    header ("Content-Type: application/octet-stream");
    header ("Content-Length: " . @filesize($tmpfname));
    header ("Content-Disposition: attachment; filename=".str_replace(' ', '', $pkg->getNombre()).".xpdl");
    // send file to client
    readfile($tmpfname);

    header ("Content-Type: text/html");
    
    $this->forward($this->getModuleName(), 'index');
  }
}
