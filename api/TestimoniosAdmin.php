<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nueva";

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$Id = $request->Id;


$conn =  mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "DELETE FROM testimonios WHERE 'ID' = '$Id'";
mysqli_query($conn,$sql);



?>