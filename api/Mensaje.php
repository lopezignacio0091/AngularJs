<?php
   
   
   $servername = "localhost";
   $username = "root";
   $password = "";
   $dbname = "nueva";

   $postdata = file_get_contents("php://input");
   $request = json_decode($postdata);
   
   $email = $request->Email;
   $mensaje = $request->Mensaje;

   $conn =  mysqli_connect($servername, $username, $password, $dbname);
   // Check connection
   if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
   }
   
   $sql = "INSERT INTO testimonios (Mensaje, Email)  VALUES ('$mensaje', '$email')";
   mysqli_query($conn,$sql);

   $conn->close();
   ?>