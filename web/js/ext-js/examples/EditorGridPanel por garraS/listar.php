<?php
	include("conexion.php");
	$conexion = conexion();
	
	$table = 'datos';
	
	listar();
	
	function listar(){
		global $table;
 
	    $sql = 'SELECT * FROM ' . $table;
	    
	    $result_count = mysql_query($sql);
	    $rows = mysql_num_rows($result_count);
	    
	    $result = mysql_query($sql);
	    
	    while($rec = mysql_fetch_array($result, MYSQL_ASSOC)){
			$tmp['id']      		= $rec['id'];
			$tmp['campo1'] 			= utf8_encode($rec['campo1']);
			$tmp['campo2']			= utf8_encode($rec['campo2']);
			$tmp['campo3'] 			= utf8_encode($rec['campo3']);
			$tmp['campo4']			= utf8_encode($rec['campo4']);
			$tmp['campo5']			= utf8_encode($rec['campo5']);
			$arr[] = $tmp;
	    };
	    if (version_compare(PHP_VERSION,"5.2","<")){    
	        require_once("../../extjs/php/JSON.php");
	        $json = new Services_JSON();
	        $data = $json->encode($arr);
	    }else{
	        $data = json_encode($arr);
	    }
	       
	    echo '({"resultados":' . $data . '})';
	}
	
    mysql_close($conexion);
?>