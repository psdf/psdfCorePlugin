<?php

/**
 * psdfTestPattern actions.
 *
 * @package    psdf
 * @subpackage psdfTestPattern
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class psdfTestPatternActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
      // Si recibo patron tomo su informacion actual para visualizar
      // patronName:
      //   Params:
      //     in_param1: valor1
      //     in_param2: valor2
      //     out_paramN: valorN
      if( $this->getUser()->hasFlash('patron_class_test') )
      {
          $ptn = $this->getUser()->getFlash('patron_class_test');

          $this->def =     $ptn->getName().":\n".
                           "  Params:\n";
          
          $params = $ptn->getParameters();
          foreach( $params as $param )
          {
              if( substr($param->getName(),0,3)=='in_' or substr($param->getName(),0,4)=='out_' )
              {
                $this->def.= "    ".$param->getName().": '".$ptn->getParameter($param->getName())."'\n";
              }
          }
      }
      else
      {
        $this->def = "pattern_name: \n".
                     "  Params:\n".
                     "    in_param_1: \n".
                     "    in_param_2: \n".
                     "    out_param_3: \n";
      }
  }

  public function executeRun(sfWebRequest $request)
  {
    // Cargo definicion
    $def = sfYaml::load($request->getParameter('definicion'));

    // Extraigo nombre del patron y parametros
    $patternClassName = key($def).'Pattern';
    $params = $def[key($def)]['Params'];

    // Instancio el patron
    $ptn = new $patternClassName();

    // Seteo parametros de entrada
    foreach( $params as $key => $value )
        $ptn->setParameter( $key, $value );

    // Logica particular del patron antes de visualizar interfaz
    $ptn->execute();
  
    if( $ptn->hasTemplate() )
    {
        // Con interfaz. Paso parametros a la interfaz
        $this->include = $ptn->getTemplate();
        $this->patternName = $ptn->getName();

        // Tomo los datos del patron que van a la interfaz
        foreach( $ptn->getTplParameters() as $name => $value )
          $this->$name = $value;
    }

    // Seteo instancia del patron en la sesion del usuario
    // para leerlo cuando vuelva de la interfaz del patron
    // y/o finalize.
    $this->getUser()->setFlash('patron_class_test', $ptn);

    // Si el patron no tiene interfaz, finalizo redireccionando al index.
    if( !$ptn->hasTemplate() )
    {
        $this->redirect('psdfTestPattern/index');
    }
  }

  public function executeResume(sfWebRequest $request)
  {
    // Recupero instancia del patron
    $ptn = $this->getUser()->getFlash('patron_class_test');

    // Proceso datos de la interfaz
    $ptn->resume($request);

    // Vuelvo a actualiza instancia en session y finalizo redireccionando
    $this->getUser()->setFlash('patron_class_test', $ptn);
    $this->redirect('psdfTestPattern/index');
  }
}
