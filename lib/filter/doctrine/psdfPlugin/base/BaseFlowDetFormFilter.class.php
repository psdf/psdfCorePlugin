<?php

/**
 * FlowDet filter form base class.
 *
 * @package    psdf
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFlowDetFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'activity_id' => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'rel_estado'  => new sfWidgetFormFilterInput(),
      'rel_flow'    => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Flow'), 'add_empty' => true)),
      'rel_usuario' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Usuario'), 'add_empty' => true)),
      'tstart'      => new sfWidgetFormFilterInput(),
      'tend'        => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'activity_id' => new sfValidatorPass(array('required' => false)),
      'rel_estado'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rel_flow'    => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Flow'), 'column' => 'id')),
      'rel_usuario' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Usuario'), 'column' => 'id')),
      'tstart'      => new sfValidatorPass(array('required' => false)),
      'tend'        => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('flow_det_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'FlowDet';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'activity_id' => 'Text',
      'rel_estado'  => 'Number',
      'rel_flow'    => 'ForeignKey',
      'rel_usuario' => 'ForeignKey',
      'tstart'      => 'Text',
      'tend'        => 'Text',
    );
  }
}
