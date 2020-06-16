<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Graduados | UFPS Ing. de Sistemas</title>
<link rel="shortcut icon" href="resources/icon.png" type="image/x-icon">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


<style>
#map {
	margin: 20px;
}
</style>

</head>

<body>
	<header>
		<!--ENCABEZADO GENERAL-->
		<div class="navbar-fixed">
			<nav class="nav-extended red darken-4 ">
				<div class="nav-wrapper red darken-2 navbar-fixed">
					<a id="logouno" href="index.jsp"
						class="brand-logo flow-text truncate"><i id="marghea"
						class="material-icons">school</i>Graduados ING. SISTEMAS</a> <a
						href="#" data-target="mobile-demo" class="sidenav-trigger"><i
						class="material-icons">menu</i></a>
					<ul class="right hide-on-med-and-down">
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black" href=""
							data-target="cargas">CARGAR DATOS</a></li>
					</ul>
					<ul id="cargas" class="dropdown-content red darken-2">
						<li><a id="lin" href="addnoticia.jsp">AGREGAR NOTICIA</a></li>
						<li><a id="lin" href="admin.jsp">VOLVER</a></li>
						<li><a id="lin" href="addevento.jsp">AGREGAR EVENTO</a></li>
						<li><a id="lin" href="addexperiencia.jsp">AGREGAR
								EXPERIENCIA</a></li>
						<li><a id="lin" href="addofertalab.jsp">AGREGAR OFERTA
								LAB.</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<!--BARRA LATERAL: SIDENAV-->
		<ul class="sidenav red darken-4" id="mobile-demo">

			<li><a class="subheader">Interes de Graduados</a></li>
			<li><div class="divider"></div></li>
			<li><a id="ext" href="addnoticia.jsp"><i
					class="material-icons">work</i>AGREGAR NOTICIA</a></li>
			<li><a id="ext" href="admin.jsp"><i
					class="material-icons">question_answer</i>VOLVER</a></li>
			<li><a id="ext" href="addevento.jsp"><i
					class="material-icons">view_carousel</i>AGREGAR EVENTO</a></li>
			<li><a id="ext" href="addexperiencia.jsp"><i
					class="material-icons">card_membership</i>AGREGAR EXPERIENCIA</a></li>
			<li><a id="ext" href="addofertalab.jsp"><i
					class="material-icons">card_membership</i>AGREGAR OFERTA LAB.</a></li>
		</ul>

	</header>

	<main>
		<section class="container">
			<div class="row card">
				<h3 class="center-align">REGISTRO DE GRADUADO</h3>
				<article class="offset-s2 col s8 offset-s2">
					<form action="GraduadoController" parent="_blank" method="POST"
						runat="server">
						<div class="input-field">
							<i class="material-icons prefix">perm_identity</i> <label
								for="nombre">Nombre</label> <input type="text" name="nombre"
								required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix">person_pin</i> <label
								for="apellido">Apellido</label> <input type="text"
								name="apellido" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix">date_range</i> <label
								for="fechagra">Fecha de grado</label> <input type="text"
								class="datepicker" name="fechagra">

						</div>

						<div class="input-field">
							<i class="material-icons prefix">credit_card</i> <label
								for="documento">No de Documento</label> <input type="number"
								name="documento" required>
						</div>



						<div class="input-field">
							<i class="material-icons prefix">email</i> <label for="email">Email</label>
							<input type="email" name="email" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix">phone</i> <label for="telefono">Telefono</label>
							<input type="number" name="telefono" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix">my_location</i> <label
								for="pais">Pais</label> <input type="text" name="pais" required>
						</div>


						<div class="input-field">
							<i class="material-icons prefix">my_location</i> <label
								for="ciudad">Ciudad de residencia</label> <input type="text"
								name="ciudad" required>
						</div>




						<p class="center-align">
							<button class="waves-effect waves-light btn red darken-4"
								type="submit">
								<i class="material-icons right">add_circle_outline </i>agregar
							</button>
						</p>

					</form>

				</article>
			</div>
		</section>
	</main>

<footer class="page-footer red darken-2">
		<div class="footer-copyright red darken-4">
			<div class="container">
				2019 © All Rights Reserved. Desarrollado por: <a
					class="grey-text text-lighten-4 right" href="#!">Social media</a>
			</div>
		</div>
	</footer>


	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="js/funcion.js"></script>

</body>

</html>