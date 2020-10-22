
<?php
   
   
   $servername = "localhost";
   $username = "root";
   $password = "";
   $dbname = "nueva";

   $postdata = file_get_contents("php://input");
   $request = json_decode($postdata);
   
   $email = $request->email;
   $pass = $request->password;
  
    $usuarios=[];

   $conn = mysqli_connect($servername, $username, $password, $dbname);
   // Check connection
   if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
   
   $sql = "SELECT Id, Nombre, Apellido, Email, Password, Es_Admin FROM usuarios WHERE usuarios.Email = '$email' and usuarios.Password = '$pass'";
   $resultado = mysqli_query($conn,$sql);
   if($resultado !== false){
        while($fila = mysqli_fetch_assoc($resultado))
        {
            $usuarios[] = $fila;
        }

        print json_encode($usuarios);
   }
   

//    if ($conn->query($sql) === TRUE) {
//        header("Location: ../Ingreso.html");
//    } else {
//    echo"Error: " . $sql . "<br>" . $conn->error;
//    }
   
   
   $conn->close();


  //  $errores = '';
  //  if ($_SERVER['REQUEST_METHOD'] == 'POST'){

  //           $email = filter_var(strtolower($_POST['email']),FILTER_SANITIZE_STRING);
  //           $password = $_POST['password'];

  //         $sql =  "SELECT * FROM usuarios WHERE email = '$email' AND password = '$password' ";
  //         $resultado = $db->query($sql);
  //         var_dump($resultado);
  //         json_encode($resultado);
  //         $row = $resultado->fetch_array(MYSQLI_ASSOC);
  //         var_dump($resultado);
  //         if($resultado){

  //           $_SESSION['email']= $email;
  //           header("Location: ../Home.html"); 
  //         }else{
  //           $errores .='<li>Datos Incorrectos</li>' ; 
  //         }
      
      
  //  }  
  //  Datos para conectar a la base de datos.
   
   
  //  Crear conexión con la base de datos.

    
   // Consulta segura para evitar inyecciones SQL.
  //  $sql =  "SELECT * FROM usuarios WHERE email = '$email' and password ='$password' ";
  //  $resultado = $db->query($sql);
    
  //  $row = $resultado->fetch_array(MYSQLI_ASSOC);
  //  // Verificando si el usuario existe en la base de datos.
  //  if($resultado){
  //    // Guardo en la sesión el email del usuario.
  //    $_SESSION['email'] = $email;
  //     if($password == $row['password'])
  //     $_SESSION['loggedin']=true;
  //     $_SESSION['nombre']= $email;
  //     $_SESSION['start']= time();
  //     $_SESSION['expire'] =   $_SESSION['start'] + (5*60);
  //    // Redirecciono al usuario a la página principal del sitio.
  //    header("Location: ../Home.html"); 
  //  }else{
  //    echo 'El email o password es incorrecto, <a href="index.html">vuelva a intenarlo</a>.<br/>';
  //  }
   
?>