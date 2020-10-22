<?php

define("DBUSER", "root");
define("DBPASS", "");
define("DBHOST", "localhost");
define("DBBASE", "nueva");

header('Content-Type: application/json');
$kolla = [];


$conexion = mysqli_connect(DBHOST, DBUSER, DBPASS, DBBASE);
  
  if ($conexion!==false)
  {
  	mysqli_set_charset($conexion, 'utf8'); // dice que tipo de conexion va a usar 
  	 	  $res = mysqli_query($conexion, "SELECT * from kolla");
	 while ($fila = mysqli_fetch_assoc($res)) 
  	 	 	$kolla[] = $fila ; 
  	 	 	mysqli_free_result($res);
  	 	 	mysqli_close($conexion);
  	 	 

  	 

   }
      print json_encode($kolla);





/*
$metodo = strtolower($_SERVER['REQUEST_METHOD']);
$comandos = explode('/', strtolower($_GET['comando']));
$funcionKolla = $metodo.ucfirst($comandos[0]);

$parametros = array_slice($comandos, 1);
if(count($parametros) >0 && $metodo == 'get')
    $funcionKolla = $funcionkolla.'ConParametros';

if(function_exists($funcionkolla))
    call_user_func_array ($funcionKolla, $parametros);
else
    header('', true, 400);

function output ($val,$headerstatus=200){

header('',true,$headerstatus);
header('Content-Type:appplication/json');
print json_encode($val);
die;
}
function outputError($headerstatus){
	header('',true,$headerstatus);
	die;
}
 function conectarBBDD(){
 	 $link=mysqli_connect(DBHOST,DBUSER,DBPASS,DBBASE);
 	 if($link===false){
 	 	outputError(500);
 	 }
 	 return $link;
 }
 function getKolla (){
  $kolla = [];
  $link = conectarBBDD();
  $sql = "SELECT * from kolla ";
  $result = mysqli_query($link,$sql);
  while ($fila = mysqli_fetch_assoc($result)){
  	$kolla []= $fila ; 
  }
  	mysqli_free_result($result);
  	mysqli_close($link);
  	output($kolla);
 }
 */ 
?>
