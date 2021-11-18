<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cumpliendo Sueños</title>
 <link rel="shortcut icon" type="image/png" href="img/lg2.png">
	
	<link rel="stylesheet" href="css/loginCp.css">
  <link href="bootstrap.min.css" rel="stylesheet">
  
   <link href="../css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body> 

 ${alerta}
 <br>
 <br>
 <h1 align="center" style="color:#e0a500;"> BIENVENIDOS </h1>
 
 <div class="login-box ">
      <div align="center"><img src="img/lgavt.png" class="avatar" alt="Avatar Image" width="30%"></div>
      <div class="textos"> <h1 align="center">INICIO DE SESIÓN</h1></div>
      <br>
      
      <form action="" method="post">

        <!-- USERNAME INPUT -->
        <label for="user" style="color:#e0a500; font-size: 150%"><i class="fa fa-fw fa-user-circle"></i>Usuario</label>
        <input  type="text" name="user">
        <!-- PASSWORD INPUT -->
        <label for="contraseña" style="color:#e0a500; font-size: 150%"><i class="fa fa-fw fa-unlock-alt"></i>Contraseña</label>
        <input  type="password" name="pass" >
        <div class="form-group"></div>
        <br>
        <!--button type="submit" class="btn btn-primary"  name="crear">ingresar</button-->
        <input type="submit" class="btn btn-primary" value="Ingresar" name="ingresar">
        <div class="textos"><a href="#olvido">Olvido su contraseña ?</a><br></div>
        <a href=Registro.php>No tiene una cuenta ?</a>
      </form>
    </div>
   
</body>
</html>