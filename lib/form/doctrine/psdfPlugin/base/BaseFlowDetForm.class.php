<?php

/**
 * FlowDet form base class.
 *
 * @method FlowDet getObject() Returns the current form's model object
 *
 * @package    psdf
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFlowDetForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'activity_id' => new sfWidgetFormInputText(),
      'rel_estado'  => new sfWidgetFormInputText(),
      'rel_flow'    => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Flow'), 'add_empty' => true)),
      'rel_usuario' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Usuario'), 'add_empty' => true)),
      'tstart'      => new sfWidgetFormTime(),
      'tend'        => new sfWidgetFormTime(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'activity_id' => new sfValidatorString(array('max_length' => 30)),
      'rel_estado'  => new sfValidatorInteger(array('required' => false)),
      'rel_flow'    => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Flow'), 'required' => false)),
      'rel_usuario' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Usuario'), 'required' => false)),
      'tstart'      => new sfValidatorTime(array('required' => false)),
      'tend'        => new sfValidatorTime(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('flow_det[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'FlowDet';
  }

}
