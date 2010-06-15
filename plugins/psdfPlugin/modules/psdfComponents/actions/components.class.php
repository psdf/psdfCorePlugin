<?php
class psdfComponentsComponents extends sfComponents
{ 
  /**
   * Componente Menu
   * @return unknown_type
   */
  public function executeMenuBar()
  {     
    // Recupero menu del usuario
    $this->menu = $this->getUser()->getMenu();

    // Recupero el nombre
    if( $this->getUser()->isAuthenticated() ) {
        $this->usuario = $this->getUser()->getUsername();
    }
    else {
        $this->usuario = 'invitado';
    }

    // Para identificar el login
    $this->module = $this->getModuleName();
    $this->action = $this->getActionName();
  }
}
