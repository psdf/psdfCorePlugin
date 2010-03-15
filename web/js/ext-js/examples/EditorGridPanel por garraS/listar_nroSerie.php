<?php
	include("conexion.php");
	$conexion = conexion();
	
	$table = 'combo';
	
	listar();
	
	function listar(){
		global $table;
 
	    $sql = 'SELECT * FROM ' . $table;
	    
	    $result_count = mysql_query($sql);
	    $rows = mysql_num_rows($result_count);
	    
	    $result = mysql_query($sql);
	    
	    while($rec = mysql_fetch_array($result, MYSQL_ASSOC)){
			$tmp['ID']      		= $rec['ID'];
			$tmp['SERIE'] 			= utf8_encode($rec['SERIE']);
			$arr[] = $tmp;
	    };
	    if (version_compare(PHP_VERSION,"5.2","<")){    
	        require_once("../../extjs/php/JSON.php");
	        $json = new Services_JSON();
	        $data = $json->encode($arr);
	    }else{
	        $data = json_encode($arr);
	    }
	       
	    echo '({"nroSerie":' . $data . '})';
	}
	
    mysql_close($conexion);
?>