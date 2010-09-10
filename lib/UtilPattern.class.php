<?php

  class UtilPattern
  {

    /**
     * Recupera el path del patron $patron
     * @return string
     */
    static public function getUrl($patron)
    {
      $file = dirname(__FILE__).'/pattern/'.UtilPsdf::fromCamelCase($patron);
      return $file;    	
    }
    
    /**
     * Valida si un patron existe. La validacion
     * consiste en chequear el archivo clase correspondiente 
     * @return unknown_type
     */
    static public function exists($patron)
    {
    	$file = self::getUrl($patron).'/'.$patron.'Pattern.class.php';
    	if( file_exists($file) )
        return true;
      else
        return false;      
    }
  }