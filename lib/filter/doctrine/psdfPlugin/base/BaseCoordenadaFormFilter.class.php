<?php

/**
 * Coordenada filter form base class.
 *
 * @package    psdf
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseCoordenadaFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'nombre'      => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'pxtop'       => new sfWidgetFormFilterInput(),
      'pxleft'      => new sfWidgetFormFilterInput(),
      'rel_picture' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Picture'), 'add_empty' => true)),
      'rel_proceso' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Proceso'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'nombre'      => new sfValidatorPass(array('required' => false)),
      'pxtop'       => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'pxleft'      => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rel_picture' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Picture'), 'column' => 'id')),
      'rel_proceso' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Proceso'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('coordenada_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Coordenada';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'nombre'      => 'Text',
      'pxtop'       => 'Number',
      'pxleft'      => 'Number',
      'rel_picture' => 'ForeignKey',
      'rel_proceso' => 'ForeignKey',
    );
  }
}
