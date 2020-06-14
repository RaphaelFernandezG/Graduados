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


</head>

<body>
	<jsp:useBean id="eveDao" class="graduado.model.EventoDao"
		scope="request"></jsp:useBean>


	<header>
		<!--ENCABEZADO GENERAL-->
		<div class="navbar-fixed">
			<nav class="nav-extended red darken-4 ">
				<div class="nav-wrapper red darken-2 navbar-fixed">
					<a id="logouno" href="#!" class="brand-logo flow-text truncate"><i
						id="marghea" class="material-icons">school</i>Graduados ING.
						SISTEMAS</a> <a href="#" data-target="mobile-demo"
						class="sidenav-trigger"><i class="material-icons">menu</i></a>
					<ul class="right hide-on-med-and-down">
						<li><a id="ext" href="https://ww2.ufps.edu.co/">UFPS</a></li>
						<li><a id="ext"
							href="https://ingsistemas.cloud.ufps.edu.co/index.php">IngSistemas</a></li>
						<li><a id="login"
							class="waves-effect waves-light btn grey lighten-5"
							href="login.jsp"><i class="material-icons right">person</i>INGRESAR</a></li>
					</ul>
				</div>
				<div class="nav-content red-darken-4 hide-on-med-and-down">
					<ul class="red-darken-4 hide-on-med-and-down">
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black"
							href="ofertaslabs.jsp" data-target="ofertas">OFERTA LABORAL</a></li>
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black"
							href="experiencias.jsp" data-target="encuestas">EXPERIENCIAS</a></li>
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black"
							href="eventos.jsp">EVENTOS</a></li>
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black"
							href="noticias.jsp">NOTICIAS</a></li>
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black tooltipped"
							href="" data-position="bottom"
							data-tooltip="Aprende acerca de los beneficios como graduado de nuestra UFPS">SERVICIOS</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<ul id="ofertas" class="dropdown-content red darken-2">
			<li><a id="lin" href="ofertaslabs.jsp">Ofertas del Programa</a></li>
			<li><a id="lin"
				href="https://ingsistemas.cloud.ufps.edu.co/index.php?pid=77">Oferta
					desde Sistemas</a></li>
		</ul>


		<!--BARRA LATERAL: SIDENAV-->
		<ul class="sidenav red darken-4" id="mobile-demo">
			<li><a id="login"
				class="waves-effect waves-light btn grey lighten-5" href="login.jsp"><i
					class="material-icons right">person</i>INGRESAR</a></li>
			<li>
				<div class="divider"></div>
			</li>
			<li><a class="subheader">Sitios Institucionales</a></li>
			<li><a id="ext" href="ww2.ufps.edu.co"><i
					class="material-icons">web</i>UFPS</a></li>
			<li><a id="ext"
				href="https://ingsistemas.cloud.ufps.edu.co/index.php"><i
					class="material-icons">web</i>IngSistemas</a></li>
			<li>
				<div class="divider"></div>
			</li>
			<li><a class="subheader">Interes de Graduados</a></li>
			<li><a id="ext" href="ofertaslabs.jsp"><i
					class="material-icons">work</i>Ofertas Laborales</a></li>
			<li><a id="ext" href="eventos.jsp"><i class="material-icons">question_answer</i>Eventos</a></li>
			<li><a id="ext" href="noticias.jsp"><i
					class="material-icons">view_carousel</i>Noticias</a></li>
			<li><a id="ext" href="experiencias.jsp"><i
					class="material-icons">card_membership</i>Experiencias</a></li>
		</ul>


</header>

	<main>
		<div class="container">
			<br> <br>
			<h2 class="valign-wrapper">EVENTOS</h2>
			<div class="divider"></div>
			<div class="section">
				<c:forEach var="e" items="${eveDao.list()}">
					<tr>
						<td>
						<h5 class="card-title activator grey-text text-darken-4">${e.nombre}</h5>
							<p>Fecha de inicio: ${e.fechaini}</p>
							<p>Fecha de fin: ${e.fechafin}</p>
							<p>Ciudad donde se ejecuta el evento: ${e.ciudad}</p>
							<p>Lugar y sitio del evento: ${e.lugar}</p>
							<div class="divider"></div>
						</td>
					</tr>
				</c:forEach>
			</div>
		</div>
	</main>

	<footer class="page-footer red darken-2">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<img class="responsive-img" src="resources/logo_horizontal.png"
						width="400">
				</div>
				<div class="col l4 offset-l2 s12">
					<h5 class="white-text">Enlaces de Interes</h5>
					<ul>
						<li><a class="grey-text text-lighten-3" href="#!">Grupo
								de Facebook</a></li>
						<li><a class="grey-text text-lighten-3" href="#!">Biblioteca
								Eduardo Cote Lamus</a></li>
						<li><a class="grey-text text-lighten-3" href="#!">Canal
								UFPS en YouTube</a></li>
					</ul>
				</div>
			</div>
		</div>
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