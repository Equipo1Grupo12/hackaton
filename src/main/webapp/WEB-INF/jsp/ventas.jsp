<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Generica</title>
<link rel="shortcut icon" type="image/png" href="../recursos/iconBot.png">
<link rel="stylesheet" href="../css/navStyle.css">
<link rel="stylesheet" href="../css/RegisterStyle.css">
<link href="../css/bootstrap.min.css" rel="stylesheet">
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
  <a href=productos><i class="fa fa-fw fa-cubes"></i> Productos</a>
  <a class="active" href=ventas><i class="fa fa-fw fa-clipboard"></i> Ventas</a>
  <a href=reportes><i class="fa fa-fw fa-file-text-o"></i> Reportes</a>   
  <li style="float:right" ><a> <i class="fa fa-fw fa-user"></i>${user}</a></li>
</div>

<div class="column">
<h1>Detalle Compra.</h1>
<br>
${pru}
<br>
<div class="  my-custom-scrollbar table-wrapper-scroll-y  table-responsive">
	<table class="table table-hover table-striped" >
		<thead class="tablas">
		<tr>
			<th>Id.</th>
			<th>Codigo Producto</th>
			<th>Nombre Producto</th>
			<th>Cantidad</th>
            <th>Vlr. Total</th>
        </tr>
        </thead>
        <c:forEach items="${listadoVentas}" var="x">
			<tr class="tablas">
				<td>#</td>
				<td>${x.codigo_producto}</td>
	            <td>${x.nombre_producto}</td>
	            <td>${x.cantidad}</td>
	            <td>${x.total}</td>
			</tr>
		</c:forEach>
	</table>
</div>

</div>
<div class="column">
<br>
<div class="form-inline" >
<form name="buscaCliente" method="get" >
    <div class="form-inline" >
       <label  for="inputEmail4">Cedula:</label>
      <input type="text" class="form-control" name="ced" value="${olldC}" placeholder="Cedula">
      <button type="submit" class="btn btn-primary">Consultar</button>
      <label  for="inputEmail4">Cliente:</label>
      <input type="text" class="form-control" name="nom_comp" value="${olldN}" placeholder="Cliente" disabled="disabled" >
      <label  for="inputEmail4">Consecutivo:</label>
      <input type="text" class="form-control" name="consec" value="${olldC}" placeholder="Consecutivo">
    </div>
    <br>
    <br>
    <br>
    <div class="form-group" >
    	<div class="form-row">
    <div class="form-group col-md-3 ">
      <label  for="inputEmail4">Cod. Producto:</label>
     	 <input type="text" class="form-control" name="cod" value="" placeholder="Cod. Producto" >
     	 <button type="submit" class="btn btn-primary">Consultar</button>
     	 <a href= "ventas?ced" title="modalActualizar" class="btn btn-success btn-sm">Agregar</a>
    </div>
    <div class="form-group col-md-3">
      <label  for="inputEmail4">Nombre Producto:</label>
      	<input type="text" class="form-control" name="nom_pro" value="${pNom}" placeholder="Nombre Producto" disabled="disabled">
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-2">
      <label  for="inputEmail4">Cantidad    :</label>
      	<input type="text" class="form-control" name="cantidad" value="" placeholder="Cantidad" >
    </div>
    <div class="form-group col-md-2">
     <label  for="inputEmail4">Vlr. Unidad:</label>
      	<input type="text" class="form-control" name="valorUnitario" value="${pVv}" placeholder="Vlr. Unitario" required="required" disabled="disabled">
    </div>
    </div>
    
    
    <div class="form-group col-md-6">
     
      	
    
    </div>
  
    
    
    	
    	
    	
    	
    	
      	<br>
      	<br>
      	
    </div>

</form>

</div>

</div>



</body>
</html>