<?php

/**
 * Proceso form base class.
 *
 * @method Proceso getObject() Returns the current form's model object
 *
 * @package    psdf
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProcesoForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'nombre'      => new sfWidgetFormInputText(),
      'rel_paquete' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'add_empty' => true)),
      'imagen'      => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'nombre'      => new sfValidatorString(array('max_length' => 30)),
      'rel_paquete' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'required' => false)),
      'imagen'      => new sfValidatorString(array('max_length' => 30, 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'Proceso', 'column' => array('nombre')))
    );

    $this->widgetSchema->setNameFormat('proceso[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Proceso';
  }

}