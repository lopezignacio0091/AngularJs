    
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nueva";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$email = $request->Email;
$nombre = $request->Nombre;
$apellido = $request->Apellido;
$pass = $request->Contraseña;

$conn =  mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO usuarios (Nombre,Apellido,Email,Password)  VALUES ('$nombre',  '$apellido','$email','$pass')";
mysqli_query($conn,$sql);






?>
