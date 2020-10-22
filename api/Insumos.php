<?php
define("DBUSER", "root");
define("DBPASS", "");
define("DBHOST", "localhost");
define("DBBASE", "nueva");

header('Content-Type: application/json');
$Insumos = [];


$conexion = mysqli_connect(DBHOST, DBUSER, DBPASS, DBBASE);
  
  if ($conexion!==false)
  {
  	mysqli_set_charset($conexion, 'utf8'); // dice que tipo de conexion va a usar 
  	 	  $res = mysqli_query($conexion, "SELECT * from insumos");
	 while ($fila = mysqli_fetch_assoc($res)) 
  	 	 	$Insumos[] = $fila ; 
  	 	 	mysqli_free_result($res);
  	 	 	mysqli_close($conexion);
  	 	 

  	 

   }
      print json_encode($Insumos);
?>