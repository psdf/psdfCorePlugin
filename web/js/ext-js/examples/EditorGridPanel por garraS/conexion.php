<?php
function conexion(){
	$opendb= mysql_connect("localhost","root","") or die ("Error al conectarse al servidor");
	mysql_select_db("") or die("Error al tratar de selecccionar bd");
	return  $opendb;
}
?>