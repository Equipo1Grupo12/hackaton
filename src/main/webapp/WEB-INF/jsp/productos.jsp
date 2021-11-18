<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="recursos/iconBot.png">
<link rel="stylesheet" href="css/navStyle.css">
<link rel="stylesheet" href="css/RegisterStyle.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>

<div class="navbar">
  <a  href=menu ><i class="fa fa-fw fa-home"></i>Inicio</a> 
  <a href=usuarios><i class="fa fa-fw fa-users"></i> Usuarios </a> 
  <a href=clientes><i class="fa fa-fw fa-suitcase"></i> Clientes</a> 
  <a href=proveedores><i class="fa fa-fw fa-truck"></i> Proveedores</a> 
  <a class="active" href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>
      ${alerta}
      <br>
      ${vleido}
      ${vleido1}
      ${vleido2}
      
<div  >
<form method="post" enctype="multipart/form-data">
  <div  align="center" >
    <div >
       <label  for="inputEmail4">Nombre Archivo:</label>
       <br>
       <input type="file" name="arch">
      <br>
      <br>
      <br>
    </div>
    </div>
    <div class="form-inline" align="center">
    <button type="submit" class="btn btn-primary">Cargar</button>
    </div>
</form>
<br>
<br>
<div align="center"><button id="mta" class="btn btn-success">Ver Estructura.</button></div>
</div>
<br>
<br>
<div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table table-hover table-striped" >
		<thead class="tablas">
		<tr>
			<th>Id.</th>
			<th>Codigo Producto</th>
			<th>Nombre Producto</th>
			<th>Nit Proveedor</th>
            <th>Precio Compra</th>
            <th>Iva Compra</th>
            <th>Precio Venta</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <c:forEach items="${listado}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.codigo_producto}</td>
	            <td>${x.nombre_producto}</td>
	            <td>${x.nit_Proveedor}</td>
	            <td>${x.precio_compra}</td>
	            <td>${x.iva_compra}</td>
	            <td>${x.precio_venta}</td>
	            <td>
	            <a href= "productos/${x.codigo_producto}" title="modalActualizar" class="btn btn-success btn-sm">Actualizar</a>
				<a href="productos/del/${x.codigo_producto}"  title="modalEliminar" class="btn btn-danger btn-sm">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>


<!-- The Modal LISTADO USUARIOS -->
<div id="modT" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <h2>Estructura del archivo.</h2>
    </div>
    <div class="modal-body">
    <div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table .table-bordered table-striped" >
		<thead class="tablas">
		<tr>
			<th>NOMBRE DEL DATO</th>
			<th>TIPO DE DATO</th>
			<th>LONGITUD</th>
        </tr>
        </thead>
			<tr class="tablas">
				<td>código_producto</td>
				<td>BIGINT</td>
	            <td>20</td>
			</tr>
			<tr class="tablas">
				<td>nombre_producto</td>
				<td>VARCHAR</td>
	            <td>50</td>
			</tr>
			<tr class="tablas">
				<td>nitproveedor</td>
				<td>BIGINT</td>
	            <td>20</td>
			</tr>
			<tr class="tablas">
				<td>precio_compra</td>
				<td>DOUBLE</td>
	            <td>N/A</td>
			</tr>
			<tr class="tablas">
				<td>ivacompra</td>
				<td>DOUBLE</td>
	            <td>N/A</td>
			</tr>
			<tr class="tablas">
				<td>precio_venta</td>
				<td>DOUBLE</td>
	            <td>N/A</td>
			</tr>
	</table>
	<br>
	<h3>El formato del archivo debe ser CSV separado por comas (,).</h3>
</div>
    </div>
    <div class="modal-footer">
    <a href=productos type="submit" class="btn btn-danger" >Salir</a>
    </div>
  </div>
</div>

<script >
	var modalT = document.getElementById("modT");
	
	var btnT = document.getElementById("mta");
	
	btnT.onclick = function() {
	  modalT.style.display = "block";
	}
	
	window.onclick = function(event) {
		  if (event.target == modal) {
		    modal.style.display = "none";
		  }
		}
</script>

</body>
</html>