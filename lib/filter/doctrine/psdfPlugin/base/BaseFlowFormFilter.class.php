<?php

/**
 * Flow filter form base class.
 *
 * @package    psdf
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFlowFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'datafields'  => new sfWidgetFormFilterInput(),
      'rel_estado'  => new sfWidgetFormFilterInput(),
      'rel_proceso' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'datafields'  => new sfValidatorPass(array('required' => false)),
      'rel_estado'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rel_proceso' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Proceso'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('flow_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Flow';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'datafields'  => 'Text',
      'rel_estado'  => 'Number',
      'rel_proceso' => 'ForeignKey',
    );
  }
}
