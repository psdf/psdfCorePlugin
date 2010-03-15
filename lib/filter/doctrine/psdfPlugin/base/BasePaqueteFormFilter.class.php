<?php

/**
 * Paquete filter form base class.
 *
 * @package    psdf
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BasePaqueteFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'nombre'           => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'xpdl'             => new sfWidgetFormFilterInput(),
      'rel_organizacion' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Organizacion'), 'add_empty' => true)),
      'rel_paquete'      => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'nombre'           => new sfValidatorPass(array('required' => false)),
      'xpdl'             => new sfValidatorPass(array('required' => false)),
      'rel_organizacion' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Organizacion'), 'column' => 'id')),
      'rel_paquete'      => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Paquete'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('paquete_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Paquete';
  }

  public function getFields()
  {
    return array(
      'id'               => 'Number',
      'nombre'           => 'Text',
      'xpdl'             => 'Text',
      'rel_organizacion' => 'ForeignKey',
      'rel_paquete'      => 'ForeignKey',
    );
  }
}
