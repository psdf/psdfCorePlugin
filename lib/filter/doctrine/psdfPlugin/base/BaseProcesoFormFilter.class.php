<?php

/**
 * Proceso filter form base class.
 *
 * @package    psdf
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProcesoFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'nombre'      => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'rel_paquete' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'add_empty' => true)),
      'imagen'      => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'nombre'      => new sfValidatorPass(array('required' => false)),
      'rel_paquete' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Paquete'), 'column' => 'id')),
      'imagen'      => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('proceso_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Proceso';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'nombre'      => 'Text',
      'rel_paquete' => 'ForeignKey',
      'imagen'      => 'Text',
    );
  }
}
