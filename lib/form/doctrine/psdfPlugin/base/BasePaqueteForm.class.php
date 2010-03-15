<?php

/**
 * Paquete form base class.
 *
 * @method Paquete getObject() Returns the current form's model object
 *
 * @package    psdf
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BasePaqueteForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'               => new sfWidgetFormInputHidden(),
      'nombre'           => new sfWidgetFormInputText(),
      'xpdl'             => new sfWidgetFormTextarea(),
      'rel_organizacion' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Organizacion'), 'add_empty' => true)),
      'rel_paquete'      => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'id'               => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'nombre'           => new sfValidatorString(array('max_length' => 30)),
      'xpdl'             => new sfValidatorString(array('required' => false)),
      'rel_organizacion' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Organizacion'), 'required' => false)),
      'rel_paquete'      => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Paquete'), 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'Paquete', 'column' => array('nombre')))
    );

    $this->widgetSchema->setNameFormat('paquete[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Paquete';
  }

}
