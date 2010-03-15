<?php
	include("conexion.php");
	$conexion = conexion();
	
	$table = 'datos';
	
	actualizar();
	
	function actualizar(){    
        global $table, $conexion;
		$datos = $_POST['data'];
	    if (version_compare(PHP_VERSION,"5.2","<")){    
	        require_once("JSON.php");
	        $json = new Services_JSON();
	        $data = $json->decode(stripslashes($datos));
	    }else{
	        $data = json_decode(stripslashes($datos));
	    }
	    
	    foreach ($data as $record){
	       	$id = (integer) $record->id;
	        if($id == NULL){
				$campo1 = utf8_decode($record->campo1);
	            $campo2 = utf8_decode($record->campo2);
	            $campo3 = utf8_decode($record->campo3);
				$campo4 = utf8_decode($record->campo4);
				$campo5 = utf8_decode($record->campo5);
	            $sql = "INSERT INTO ".$table." (id, campo1, campo2, campo3, campo4, campo5) VALUES ('', '".$campo1."', '".$campo2."', '".$campo3."', '".$campo4."', '".$campo5."')";
	            $result = mysql_query($sql,$conexion) or die( '{success: false, "mensaje": "'.mysql_error().'"}');
	        }else{
	            foreach($record as $field => $value){
	                if($field == 'id') {
	                    continue;
	                }
	                $value = utf8_decode($value);
	                $query = "UPDATE ".$table." SET ".$field." = '".$value."' WHERE id = ".$id;
	                $result = mysql_query($query) or die( '{success: false, "mensaje": "'.mysql_error().'"}');
	            }
	        }
	    }
	    
	    if($result){
	        echo '{success: true}';
	    }else{
	        echo '{success: false, "mensaje": "Surgi&oacute; un error a la hora de agregar/actualizar la(s) Categor&iacute;a(s).<br>Por favor, intente nuevamente."}';
	    }
	}
	
    mysql_close($conexion);
?>

