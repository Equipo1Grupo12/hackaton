<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cumpliendo Sueños</title>
	<link rel="shortcut icon" type="image/png" href="img/lg2.png">
	<link rel="stylesheet" href="../css/menuCp.css">
	<link rel="stylesheet" href="../css/navStyleCp.css">
	<link rel="stylesheet" href="../css/footerStyleCp.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<header class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a href="#" class="navbar-brand">
				<img alt="Logo Cumpliendo Sueños" src="img/lg3.png" width="170" height="170">
			</a>
			<button class="navbar-toggler ml-5" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   				<span class="navbar-toggler-icon"></span>
   			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a href=clientes><i class="fa fa-fw fa-suitcase"></i> Inicia tu proyecto</a>
					</li>
					<li class="nav-item">
						<a href="proveedores"><i class="fa fa-fw fa-search"></i> Buscar Proyectos</a>
					</li>
				</ul>
			</div> 
		</div>
	</header>
	<article>
		<div class="parallax">
			<br>
			<br>
			<h2 style="text-align: center; color:#e0a500;">Estas solo a un paso de encontrar un inversionista.</h2>
			<br>
			<h2 align="center" style="color:#136F63;" class="mb-5">Proyectos Destacados</h2>
			<div class="row mx-3" >
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="card">
						<img src="img/p1.jpg" alt="Jane" class="card-img-top">
						<div class="card-body">
							<h2>Agro Ciervo</h2>
							<p class="title">Agro</p>
							<p>Tecnicas especializadas en crianza...</p>
							<p>jane@example.com</p>
							<p><button class="button" style="width:auto">Leer más.</button></p>
						</div>
					</div>
				</div>
				
				<div class="col-12 col-sm-6 col-lg-4">
					<div class="card">
						<img src="img/p2.jpg" alt="Mike" class="card-img-top">
						<div class="card-body">
							<h2>Aprende En Casa</h2>
							<p class="title">Educacion</p>
							<p>Estrategias de aprendizaje autodidacta en casa...</p>
							<p>mike@example.com</p>
							<button class="button" style="width:auto">Leer más.</button>
						</div>
					</div>
				</div>
				
				<div class="col-12 col-sm-6 col-lg-4">
				    <div class="card">
						<img src="img/p3.jpg" alt="John" class="card-img-top">
						<div class="card-body">
							<h2>Bolsa al Día.</h2>
							<p class="title">Negocios, Finansas</p>
							<p>Analisis y manejo de activos en la bolsa de valores...</p>
							<p>john@example.com</p>
							<p><button class="button" style="width:auto">Leer más.</button></p>
						</div>
				    </div>
				</div>
			</div>
			
			<div id="message" style="height:20vh; background-color: #e5ebe9; font-size:2vh; margin-top: 20px; display: flex; align-items: center; justify-content:center">
				<h2 style="">Si buscas resultados distintos... no hagas siempre lo mismo.</h2>
			</div>
			
			<section id="nosotros" class="mb-5">
				<br>
				<h2 class="text-center mb-5" style="color:#136F63;">Sobre Nosotros</h2>
				<div class="row mx-3" >
					<div class="col-12 col-sm-4">
						<h3 style="color:#e0a500;">Hacemos realidad tu iniciativa.</h3>
						<br>
						<h4>Aquí podrás publicar tu idea de negocio y los inversionistas te contactarán para apalancar tu proyecto.</h4>
						<h3 style="color:#136F63;" >!Estamos contigo! </h3>
					</div>
					<div class="col-12 col-sm-8" style="overflow:hidden">
						<img src="img/img1.svg" alt="Jane" style="width:65vw">
					</div>
				</div>
			</section>
			
			<!-- Footer -->
			<footer class="page-footer font-small blue">
				<!-- Footer Links -->
				<div class="container-fluid text-center">
					<!-- Grid row -->
					<div class="row">
						<hr class="clearfix w-100 d-md-none pb-3">
						<!-- Grid column -->
						<div class="col-md-4 mb-md-0 mb-3">
							<!-- Links -->
							<h5 class="text-uppercase">Cumpliendo Sueños</h5>
							<p align="left">Busca conectar emprendedores con socios e inversionistas para que se puedan poner en marcha toda clase de ideas de negocios y hacer realidad los sueños de muchas personas.
							</p>
						</div>
						<!-- Grid column -->
						<!-- Grid column -->
						<div class="col-md-5 mb-md-0 mb-3">
							<!-- Links -->
							<h5 class="text-uppercase" align="center">Conocenos</h5>
							<ul class="form-inline">
								<a href="#!">Preguntas frecuentes</a>
								<a>-</a>
								<a href="#!">Contáctanos</a>
							</ul>
						</div>
						<!-- Grid column -->
						<div class="col-md-3 mb-md-0 mb-3">
							<!-- Links -->
							<h5 class="text-uppercase">Síguenos por nuestras redes sociales</h5>
							<a href="https://www.facebook.com/CumpliendoSue%C3%B1os-110258968145255/about/?ref=page_internal"><i class="fa fa-facebook-square"></i></a>
							<a href="#"><i class="fa fa-instagram"></i></a>
							<a href="https://www.youtube.com/channel/UCrxKZJpLjvCDGGn7kfKzAFg"><i class="fa fa-youtube"></i></a>
							<a href="https://twitter.com/Cumpliendosue21"><i class="fa fa-twitter"></i></a>
						</div>
					</div>
					<!-- Grid row -->
				</div>
				<!-- Footer Links -->
				<br>
				<br>
				<!-- Copyright -->
				<div class="contenedor text-center text-md-left" style="">
					<ul>
						<a href="#!"><i class="fa fa-map-marker"></i> Bogotá D.C.</a>
						<a href="#!"><i class="fa fa-mobile"></i>  (+57 1) 321 200 8765  </a>
						<a href="#!"><i class="fa fa-envelope"></i> cumpliendosuenos2021@outlook.com</a>
						<a href="#!">Términos y Condiciones</a>
						<a href="#!">Tratamiento de datos</a>
					</ul>
					<ul>
						<!-- Copyright -->
						<div class="footer-copyright text-center py-3" style="color:#fff">© 2020 Copyright:</div>
					</ul>
				</div>
				
			</footer>
			<!-- Footer -->
		</div>
		<div style="height:150vh; background-image: url('img/bckgr.svg'); background-repeat: no-repeat;">
		</div>
	</article>
</body>
</html>