<?php
if(true){
	$campo1 = $_POST['campo1'];
	$campo2 = $_POST['campo2'];
	$campo3 = $_POST['campo3'];
	$campo4 = $_POST['campo4'];
	
	if($campo2){
		$campo2 = 'Verdadero';
	}else{
		$campo2 = 'Falso';
	}
	
	$mensaje_completo = $campo1.'<br>'.$campo2.'<br>'.$campo3.'<br>'.$campo4;
	
	echo '{"success": true, "message": "'.$mensaje_completo.'"}';
}else{
	echo '{"success": false, "message": "ERROR!!!!!!!!"}';
}
?>