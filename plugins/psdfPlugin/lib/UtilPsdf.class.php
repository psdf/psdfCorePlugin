<?php

class UtilPsdf
{
  /**
   * Redireccionamiento hacia un modulo/accion de otro aplicativo
   * El controlador frontal por defecto debe existir con el nombre
   * del aplicativo. Por ejemplo app1.php (ademas del index.php)
   * Soltic S.R.L. 2008
   *
   * @param string $appName Nombre del aplicativo
   * @param string $moduleName Nombre del modulo
   * @param string $actionName Nombre de la accion.
   * @param array $parametros un array con los parametros para la redireccion,
   * debe ser asociativo
   * @return
   */
  static public function redirectApp($appName, $moduleName, $actionName, $parametros = null, $segura = false )
  {
    //$path = sfContext::getInstance()->getRequest()->getRelativeUrlRoot();
    // Obtengo el path completo del controlador actual
    // Ejemplo: http://localhost/test/app1_dev.php
    $path = sfContext::getInstance()->getRequest()->getUriPrefix().
    sfContext::getInstance()->getRequest()->getScriptName();

    // Quito la parte del controlador dejando solo la uri
    // Ejemplo: http://localhost/test
    $part=strrpos($path, '/');
    $path=substr($path, 0, $part);

    $path = $path . '/';

    // Agrego el nuevo controlador
    if (strtolower(sfConfig::get('sf_environment'))=='prod'){
      $path = $path.$appName.'.php';
    }
    else
    {
      $path = $path.$appName.'_'.sfConfig::get('sf_environment').'.php';
    }

    $path = $path .'/';
    // Concateno el modulo y accion a ejecutar

    $path = $path . $moduleName.'/'.$actionName;

    if ($parametros){
      //recorro el array de parametros!
      foreach ($parametros as $key => $value){
        $path = $path ."/". $key ."/". $value;
      }
    }

    // segura, depende si deseo que sea redireccion segura o no
    if ($segura){
      $path = str_replace('http://', 'https://', $path);
    }else{
      $path = str_replace('https://', 'http://', $path);
    }

    // Redirecciono al app/modulo/accion del parametro
    sfContext::getInstance()->getController()->redirect($path);
    //matamos la ejecucion!
    //esto es el error de symfony que no lo detiene.. en el 1.0
    throw new sfStopException();
  }
	  
  /**
   * Extension a funcion str_replace() de php para que
   * lo haga recursivamente mientras queden ocurrencias
   * Por ejemplo, elimina
   * @return unknown_type
   */
  static public function recursiveReplace( $search, $replace, $subject)
  {
        $new = $subject;
        while( strpos($new, $search)>0 )
        {
          $new = str_replace( $search, $replace, $new);
        }
        return $new;
  }
	  
    /**
    * Retorna un string xml con el estado de la instancia $objPHP
    * formato:
    *     <obj class="">
    *       <attrib1>valor</attrib1>
    *       <attrib2>valor</attrib2>
    *     </obj>
    * @param $objPHP Instancia PHP
    * @return String XML estado del objeto
    */
    static public function objInstanceToXml( $objPHP )
    {
        $attribs = $objPHP->toArray();
        $xml = '<obj class="%s">';
        $xml = sprintf( $xml, get_class($objPHP) );
        foreach( $attribs as $key => $value )
        {
            $xml.= '<%s>%s</%s>';
            $xml = sprintf( $xml, $key, $value, $key );
        }
        $xml.= '</obj>';
        return $xml;
    }

    /**
     * Crea una instancia con informacion del xml.
     * La instancia puede ser un objeto ya existente (id>0) o no (id=0)).
     * Se omiten atributos y elementos reservados (comienzan con _)
     * formato:
     *   <list>
     *     <obj class="">
     *       <attrib1>valor</attrib1>
     *       <attrib2>valor</attrib2>
     *       <_relations />
     *     </obj>
     *   <list>
     * @param XML estado del objeto (String o Dom)
     * @param Objeto dom XML estado del objeto (Opcional)
     * @return Object Instancia PHP
    */
    static public function objXmlToInstance( $objXML )
    {
        // Si recibo el estado como string, lo cargo en dom
        if( is_string($objXML) )
        {
            $aux = $objXML;
            $objXML = new DOMDocument('1.0', 'ISO-8859-1');
            $objXML->loadXml( $aux );
        }

        // Recupero nodos objetos y cantidad
        $nodes = $objXML->getElementsByTagName("obj");
        $size = $nodes->length;

        // Obtengo id y clase del objeto
        $classname = $nodes->item(0)->getAttribute('class');
        //$id = $nodes->item(0)->getAttribute('id');

        // Instancia y id
        $obj = new $classname;
        //$obj->setId($id);

        // Recorro atributos
        if ($nodes->item(0)->hasChildNodes())
        {
            $children = $nodes->item(0)->childNodes;
            foreach($children as $node) 
            {
                if( substr($node->nodeName, 1, 1)!='_' )
                {
                    $metodo='set' . ucfirst($node->nodeName);
                    $value = $node->nodeValue;
                    if( is_numeric($node->nodeValue))
                        $value = $value * 1;
                    $obj->$metodo($value);
                }
            }
        }

        return $obj;
    }

    /**
    * Translates a camel case string into a string with underscores (e.g. firstName -&gt; first_name)
    * @param    string   $str    String in camel case format
    * @return    string            $str Translated into underscore format
    */
    static public function fromCamelCase($str)
    {
      $str[0] = strtolower($str[0]);
      $func = create_function('$c', 'return "_" . strtolower($c[1]);');
      return preg_replace_callback('/([A-Z])/', $func, $str);
    }
 
    /**
    * Translates a string with underscores into camel case (e.g. first_name -&gt; firstName)
    * @param    string   $str                     String in underscore format
    * @param    bool     $capitalise_first_char   If true, capitalise the first char in $str
    * @return   string                              $str translated into camel caps
    */
    static public function toCamelCase($str, $capitalise_first_char = false)
    {
      if($capitalise_first_char) 
        $str[0] = strtoupper($str[0]);
      $func = create_function('$c', 'return strtoupper($c[1]);');
      return preg_replace_callback('/_([a-z])/', $func, $str);
    }
    
	}
?>