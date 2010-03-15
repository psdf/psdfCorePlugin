<?php

  class UtilXpdl
  {
  	static public function genRandId()
  	{
		  $length = 22;
		  $possible = '0123456789' .
		               'abcdefghjiklmnopqrstuvwxyz' .
		               'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		  $str = "";
		  while (strlen($str) < $length) {
		     $str .= substr($possible, (rand() % strlen($possible)), 1);
		  }
		  
		  return "_".$str;
    }
  }
?>