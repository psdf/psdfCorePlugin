<?php

/**
 * Extensión de la clase User para los aplicativos. Aqui se extiende la 
 * clase previamente extendida por el plugin sfDoctrineGuard:
 * psdfUser
 *   sfGuardSecurityUser
 *     sfBasicSecurityUser
 */
class psdfUser extends sfGuardSecurityUser
{
  protected $menu;

  public function setCurrentFlow(Flow $flow) {
    $flows = $this->getAttribute('flows', array(), 'psdf');
    array_push( $flows, $flow );
    $this->setAttribute( 'flows', $flows, 'psdf');
  }

  public function getCurrentFlow() {
    $flows = $this->getAttribute('flows', array(), 'psdf');
    $flow = array_pop( $flows);
    $this->setAttribute( 'flows', $flows, 'psdf');
    return $flow;
  }

  public function setCurrentPattern($pattern) {
    $patterns = $this->getAttribute('patterns', array(), 'psdf');
    array_push( $patterns, $pattern );
    $this->setAttribute( 'patterns', $patterns, 'psdf');
  }

  public function getCurrentPattern() {
    $patterns = $this->getAttribute('patterns', array(), 'psdf');
    $pattern = array_pop( $patterns);
    $this->setAttribute( 'patterns', $patterns, 'psdf');
    return $pattern;
  }

  public function setMenu() {

      if( !$this->isAuthenticated() ) {
        // No hay usuario autenticado asumo el invitado
        $usr = Doctrine::getTable('sfGuardUser')->findByUsername('invitado');
        $usr = $usr[0];
      }
      else {
        $usr = $this->getGuardUser();
      }

      //die('Usuario: '.$usr->getUsername() );
      
      // Ojo! el usuario puede tener más de una organizacion
      // Esto debería ajustarse
      $usuorgs = Doctrine::getTable('Usuorg')->findByRelUsuario($usr->getId());
      $menuYml = sfYaml::load( $usuorgs[0]->getMenu() );
      $this->menu = UtilPsdf::convertMenu( $menuYml );
  }

  public function getMenu() {
      // Si aun no está seteado el menu, lo cargo
      if( !$this->menu ) {
          $this->setMenu();
      }
      return $this->menu;
  }

}

?>