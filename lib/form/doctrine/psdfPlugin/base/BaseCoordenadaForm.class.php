<?php

/**
 * Coordenada form base class.
 *
 * @method Coordenada getObject() Returns the current form's model object
 *
 * @package    psdf
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseCoordenadaForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'nombre'      => new sfWidgetFormInputText(),
      'pxtop'       => new sfWidgetFormInputText(),
      'pxleft'      => new sfWidgetFormInputText(),
      'rel_picture' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Picture'), 'add_empty' => true)),
      'rel_proceso' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'nombre'      => new sfValidatorString(array('max_length' => 30)),
      'pxtop'       => new sfValidatorInteger(array('required' => false)),
      'pxleft'      => new sfValidatorInteger(array('required' => false)),
      'rel_picture' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Picture'), 'required' => false)),
      'rel_proceso' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'Coordenada', 'column' => array('nombre')))
    );

    $this->widgetSchema->setNameFormat('coordenada[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Coordenada';
  }

}
