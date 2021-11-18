<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/iconBot.png">
<link rel="stylesheet" href="../css/navStyle.css">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/RegisterStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>

<div class="navbar">
  <a  href=menu ><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a class="active" href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>

<div class="form-group" >
<form method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
       <label  for="nit">Nit:</label>
      <input type="text" class="form-control" value="${olldNi}" name="nit" placeholder="Nit">
    </div>
    <div class="form-group col-md-6">
      <label for="telefono">Telefono:</label>
      <input type="text" class="form-control" value="${olldT}" name="telefono" placeholder="Telefono">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="nom_comp">Nombre Proveedor:</label>
      <input type="text" class="form-control" value="${olldN}" name="nom_comp" placeholder="Nombre Proveedor">
    </div>
    <div class="form-group col-md-6">
      <label for="ciudad">Ciudad:</label>
      <input type="text" class="form-control" value="${olldC}" name="ciudad" placeholder="Ciudad">
      <br>
    </div>
  </div>
  <div class="form-group col-md-12 ">
      <label for="direccion">Direccion:</label>
      <input type="text" class="form-control" value="${olldD}" name="direccion" placeholder="Direccion">
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
			<th>Nit</th>
			<th>Nombre</th>
            <th>Telefono</th>
            <th>Ciudad</th>
            <th>Direccion</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <c:forEach items="${listado}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.nit}</td>
	            <td>${x.nombre_proveedor}</td>
	            <td>${x.telefono}</td>
	            <td>${x.ciudad}</td>
	            <td>${x.direccion}</td>
	            <td>
	            <a href= "proveedores/${x.nit}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
				<a href="proveedores/del/${x.nit}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>