<?php

/**
 * Paquete form.
 *
 * @package    form
 * @subpackage Paquete
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 6174 2007-11-27 06:22:40Z fabien $
 */
abstract class PluginPaqueteForm extends BasePaqueteForm
{
  var $xpdl_upload_dir;

  public function setXpdlUploadDir($dirname)
  {
      $this->xpdl_upload_dir = $dirname;
  }

  public function getXpdlUploadDir()
  {
      return $this->xpdl_upload_dir;
  }

  public function setup()
  {
    parent::setup();

    $this->setXpdlUploadDir(sfConfig::get('sf_upload_dir').'/xpdls');

    $this->widgetSchema['xpdl'] = new sfWidgetFormInputFile(array(
        'label' => 'Xpdl', ));

    $this->setValidator('xpdl', new sfValidatorFile(array(
        'mime_types' => array('text/xml'),
        'path' => $this->getXpdlUploadDir(),
        'required' => false,
        )));
  }

  /**
   * Obtengo aquí el archivo levantado para cargar y setear su contenido
   * en el atributo xpdl
   *
   * @param <type> $values
   */
  protected function doUpdateObject($values)
  {
      $file = $this->getXpdlUploadDir() .'/'. $values['xpdl'];
      $xpdl = false;

      if( file_exists($file) )
      {
        $xpdl = file_get_contents($file);
      }

      $values['xpdl'] = $xpdl;

      parent::doUpdateObject($values);
  }
}