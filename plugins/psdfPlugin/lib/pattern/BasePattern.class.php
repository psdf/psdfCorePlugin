<?php 

class BasePattern
{
    protected
        $error=null,               // Setear y chequear cuando el patron produzca error
        $template_params=array();  // Para gestionar datos a la plantilla
    
    /**
     * Recupera el valor de un parametro
     *
     * @param string $name Nombre del parametro
     * @return <type> valor del parametro
     */
    public function getParameter($name)
    {
        if( isset($this->$name) )
            return $this->$name;
	else
            return false;
    }

    /**
     * Asigna un valor a un parametro
     *
     * @param string $name Nombre del parametro
     * @param <type> $value Valor para el parametro
     * @return <type>
     */
    public function setParameter($name, $value)
    {
        $this->$name = $value;
        return true;
    }

    /**
     * Define y Asigna un parametro interno hacia la interfaz
     * (La interfaz del patron luego puede accesarlo como $name)
     * 
     * @param <type> $name Nombre del parametro
     * @param <type> $value valor del parametro
     * @return <type> 
     */
    protected function setTplParameter($name, $value)
    {
        $this->template_params[$name] = $value;
        return true;
    }

    /**
     * Recupera el valor de un parametro hacia la interfaz.
     * (Desde la interfaz del patron puede accesarse como $name)
     *
     * @param <type> $name Nombre del parametro
     * @return <type>  Valor del parametro
     */
    protected function getTplParameter($name)
    {
        if( isset($this->template_params[$name]) )
            return $this->template_params[$name];
        else
            return false;
    }
  
    /**
     * Retorna un array con los parametros interno del patron hacia la interfaz
     * Util por ejemplo para interactuar desde una accion/template symfony
     *
     * @return array Parametros al template
     */
    public function getTplParameters()
    {
        return $this->template_params;
    }
  
    /**
    * Recupera el nombre del patron
    * Es el nombre de la clase sin el postfijo Pattern:
    * TraerListaPattern => TraerLista
    * @return string
    */
    public function getName()
    {
        return str_replace( 'Pattern', '', get_class($this) );
    }
  
    /**
     * Define un error. Intencion de manejar los errores de patrones
     * mediante este set (y get) para hacerlo accesible desde quien
     * ejecute el patron.
     * 
     * @param string $error 
     */
    public function setError( $error )
    {
        $this->error = $error;
    }

    /**
     * Recupera el error del patron, si lo tuviera. Retorna null sino.
     * 
     * @return string Mensaje de error o null. 
     */
    public function getError()
    {
        return $this->error;
    }

    /**
     * Determina si el patron tiene una interfaz de interaccion con el usuario.
     * 
     * @return boolean
     */
    public function hasTemplate()
    {
        $path = $this->getTemplate();
        if( file_exists($path))
            return $path;
        else
            return false;
    }
  
  /**
   * Recupero la ruta completa del template del patron. Determino 
   * la subcarpeta patron a partir del nbre de la clase:
   *    TraerListaPattern => traer_lista
   * @return unknown_type
   */
  public function getTemplate()
  {
    return UtilPattern::getUrl($this->getName()).'/template.php';
  }

  public function getParameters()
  {
    $reflection = new ReflectionClass($this);
    $defaults = $reflection->getProperties();
    return $defaults;
  }

}

