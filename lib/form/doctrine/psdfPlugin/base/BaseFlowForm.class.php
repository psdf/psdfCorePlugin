<?php

/**
 * Flow form base class.
 *
 * @method Flow getObject() Returns the current form's model object
 *
 * @package    psdf
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFlowForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'datafields'  => new sfWidgetFormTextarea(),
      'rel_estado'  => new sfWidgetFormInputText(),
      'rel_proceso' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'datafields'  => new sfValidatorString(array('required' => false)),
      'rel_estado'  => new sfValidatorInteger(array('required' => false)),
      'rel_proceso' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('flow[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Flow';
  }

}
