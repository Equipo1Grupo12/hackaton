<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="../recursos/iconBot.png">
<link rel="stylesheet" href="../css/navStyle.css">
<link rel="stylesheet" href="../css/RegisterStyle.css">
<link href="bootstrap.min.css" rel="stylesheet">
 
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="navbar">
  <a  href=menu><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a class="active" href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>
${alerta}
<div class="form-group" >
<form name="userForm" action="" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label  for="cedula">Cedula:</label>
      <input type="text" class="form-control" value="${olldC}" name="ced" placeholder="Cedula" required="true" ">
    </div>
    <div class="form-group col-md-6">
      <label for="usuario">Usuario:</label>
      <input type="text" class="form-control" value="${olldU}" name="user" placeholder="Usuario" required="true">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="nombre">Nombre Completo:</label>
      <input type="text" class="form-control" value="${olldN}" name="nom_comp" placeholder="Nombre Completo" required="true">
    </div>
    <div class="form-group col-md-6">
      <label for="pass">Contraseña:</label>
      <input type="password" class="form-control" value="${olldP}" name="contra" placeholder="Contraseña" required="true">
      <br>
    </div>
  </div>
  <div class="form-group col-md-12">
      <label for="correo">Correo Electronico:</label>
      <input type="email" class="form-control" value="${olldE}" name="correo" placeholder="Correo Electronico" required="true">
      <br>
    </div>
    
    <div class="form-inline " align="center">
    <!--  button type="submit" class="btn btn-primary" name="consultar">Consultar</button-->
    <button type="submit" class="btn btn-primary"  name="crear">Crear usuario</button>
    ${btnact} 
    ${btncancel}
    <!--  button type="submit" class="btn btn-primary" name="actualizar">Actualizar</button-->
    <!-- button type="submit" class="btn btn-primary" name="borrar">Borrar</button-->
    </div>
</form>
</div>
<br>

<div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table table-hover table-striped" >
		<thead class="tablas">
		<tr>
			<th>Id.</th>
			<th>Cedula</th>
			<th>Nombre</th>
			<th>Correo Electronico</th>
            <th>Usuario</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <c:forEach items="${listado}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.cedula}</td>
	            <td>${x.nombre_usuario}</td>
	            <td>${x.email_usuario}</td>
	            <td>${x.usuario}</td>
	            <td>
	            <a href= "usuarios/${x.cedula}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
				<a href="usuarios/del/${x.cedula}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>