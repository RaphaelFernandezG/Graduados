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
<!-- Compiled and minified JS -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>
	<jsp:useBean id="evenprinDao" class="graduado.model.EventoprinDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="evenDao" class="graduado.model.EventoDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="experienciaDao" class="graduado.model.ExperienciaDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="expdestDao" class="graduado.model.ExpdestDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="notiDao" class="graduado.model.NoticiaDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="notidestDao" class="graduado.model.NotidestDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="graDao" class="graduado.model.GraduadoDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="gradestDao" class="graduado.model.GraddestacadoDao"
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

	<!--SLIDER PRINCIPAL-->
	<div class="slider" style="margin-top: 18px;">
		<ul class="slides">
			<li><img src="resources/encasa.jpeg" class="responsive-img">
				<!-- random image -->
				<div class="caption right-align">
					<c:forEach var="noti" begin="0" end="0"
						items="${notidestDao.list()}">
						<tr>
							<td>
								<h3 class="right-align">${noti.titular}</h3> <c:forEach var="n"
									begin="0" end="0" items="${notiDao.list()}">
									<tr>
										<td>
											<h5 class="light grey-text text-lighten-3 right-align">${n.descripcion}</h5>
										</td>
									</tr>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</div></li>
			<li><img src="resources/saberpro.jpg"> <!-- random image -->
				<div class="caption right-align">
					<c:forEach var="noti" begin="1" end="1"
						items="${notidestDao.list()}">
						<tr>
							<td>
								<h3>${noti.titular}</h3> <c:forEach var="n" begin="0" end="0"
									items="${notiDao.list()}">
									<tr>
										<td>
											<h5 class="light grey-text text-lighten-3">${n.descripcion}</h5>
										</td>
									</tr>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</div></li>
			<li><img src="resources/virtual.jpg"> <!-- random image -->
				<div class="caption right-align">
					<c:forEach var="noti" begin="2" end="2"
						items="${notidestDao.list()}">
						<tr>
							<td>
								<h3>${noti.titular}</h3> <c:forEach var="n" begin="0" end="0"
									items="${notiDao.list()}">
									<tr>
										<td>
											<h5 class="light grey-text text-lighten-3">${n.descripcion}</h5>
										</td>
									</tr>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</div></li>
			<li><img src="resources/reto.jpg"> <!-- random image -->
				<div class="caption right-align">
					<c:forEach var="noti" begin="3" end="3"
						items="${notidestDao.list()}">
						<tr>
							<td>
								<h3>${noti.titular}</h3> <c:forEach var="n" begin="0" end="0"
									items="${notiDao.list()}">
									<tr>
										<td>
											<h5 class="light grey-text text-lighten-3">${n.descripcion}</h5>
										</td>
									</tr>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</div></li>
		</ul>
	</div>

	<!--CONTENIDO-->

	<!--EVENTOS SLIDER-->
	<h2 class="center-align">EVENTOS</h2>
	<div class="carousel">

		<div id="two" class="carousel-item row valign-wrapper">
			<div class="col s10">
				<img class="responsive-img" width="350"
					src="https://ingsistemas.cloud.ufps.edu.co/rsc/img/logo_ingsistemas_vertical_invertido.png">
			</div>
			<div class="col s2">
				<a class="black-text" href="">
					<h6 class="center flow-text ">
						<c:forEach var="n" begin="0" end="0" items="${evenprinDao.list()}">
							<tr>
								<td><c:out value="${n.evento.nombre}" /></td>
							</tr>
						</c:forEach>
					</h6>
				</a>
			</div>
		</div>
		<div id="two" class="carousel-item row valign-wrapper">
			<div class="col s10">
				<img class="responsive-img" width="350"
					src="https://ingsistemas.cloud.ufps.edu.co/rsc/img/logo_ingsistemas_vertical_invertido.png">
			</div>
			<div class="col s2">
				<a class="black-text" href="">
					<h6 class="center flow-text ">
						<c:forEach var="n" begin="1" end="1" items="${evenprinDao.list()}">
							<tr>
								<td><c:out value="${n.evento.nombre}" /></td>
							</tr>
						</c:forEach>
					</h6>
				</a>
			</div>
		</div>
		<div id="two" class="carousel-item row valign-wrapper">
			<div class="col s10">
				<img class="responsive-img" width="350"
					src="https://ingsistemas.cloud.ufps.edu.co/rsc/img/logo_ingsistemas_vertical_invertido.png">
			</div>
			<div class="col s2">
				<a class="black-text" href="">
					<h6 class="center flow-text ">
						<c:forEach var="n" begin="2" end="2" items="${evenprinDao.list()}">
							<tr>
								<td><c:out value="${n.evento.nombre}" /></td>
							</tr>
						</c:forEach>
					</h6>
				</a>
			</div>
		</div>
		<div id="two" class="carousel-item row valign-wrapper">
			<div class="col s10">
				<img class="responsive-img" width="350"
					src="https://ingsistemas.cloud.ufps.edu.co/rsc/img/logo_ingsistemas_vertical_invertido.png">
			</div>
			<div class="col s2">
				<a class="black-text" href="">
					<h6 class="center flow-text ">
						<c:forEach var="n" begin="3" end="3" items="${evenprinDao.list()}">
							<tr>
								<td><c:out value="${n.evento.nombre}" /></td>
							</tr>
						</c:forEach>
					</h6>
				</a>
			</div>
		</div>
	</div>

	<div class="divider"></div>

	<!--EXPERIENCIAS VIDEOS-->
	<h2 class="center-align">EXPERIENCIAS</h2>
	<div class="container row">
		<div class="col s8 l8">
			<c:forEach var="ed" begin="0" end="0" items="${expdestDao.list()}">
				<tr>
					<td>
						<div class="video-container">
								<iframe width="400" height="200" src="//${ed.experiencia.link}" frameborder="0"
									allowfullscreen></iframe>
							</div>
					</td>
				</tr>
			</c:forEach>
		</div>
		<div class="col s4 l4 ">
			<ul class="collection ">
				<li class="collection-item "><c:forEach var="ed" begin="1"
						end="1" items="${expdestDao.list()}">
						<tr>
							<td>
								<div class="video-container">
									<iframe width="400" height="200" src="//${ed.experiencia.link}"
										frameborder="0" allowfullscreen></iframe>
								</div>
							</td>
						</tr>
					</c:forEach></li>
				<div>
					<li class="collection-item "><c:forEach var="ed" begin="2"
							end="2" items="${expdestDao.list()}">
							<tr>
								<td>
									<div class="video-container">
										<iframe width="400" height="200" src="//${ed.experiencia.link}"
											frameborder="0" allowfullscreen></iframe>
									</div>
								</td>
							</tr>
						</c:forEach></li>
				</div>
			</ul>
		</div>

		
	</div>

	<div class="divider"></div>

	<!--GRADUADO DESTACADO-->
	<h2 class="center-align">GRADUADOS DESTACADOS</h2>
	<div class="container row">
		<div id="gradest" class="col l3 s6 card card-panel hoverable">
			<div class="card-image waves-effect waves-block waves-light">
				<img class="activator" src="resources/perfil_photo.png" width="412"
					height="195">
			</div>
			<div class="card-content">
				<c:forEach var="gd" begin="0" end="0" items="${gradestDao.list()}">
					<tr>
						<td><span
							class="card-title activator grey-text text-darken-4">${gd.graduado.nombre}<i
								class="material-icons right">more_vert</i>
						</span>
							<p>${gd.graduado.fechagrad}</p></td>
					</tr>
				</c:forEach>
			</div>
			<div class="card-reveal">
				<c:forEach var="gd" begin="0" end="0" items="${gradestDao.list()}">
					<tr>
						<td><span class="card-title grey-text text-darken-4"><i
								class="material-icons right">close</i>${gd.titulo}</span>
							<p>${gd.descripcion}</p></td>
					</tr>
				</c:forEach>
			</div>
		</div>
		<div id="gradest" class="col l3 s6 card card-panel hoverable">
			<div class="card-image waves-effect waves-block waves-light">
				<img class="activator" src="resources/perfil_photo.png" width="412"
					height="195">
			</div>
			<div class="card-content">
				<c:forEach var="gd" begin="1" end="1" items="${gradestDao.list()}">
					<tr>
						<td><span
							class="card-title activator grey-text text-darken-4">${gd.graduado.nombre}<i
								class="material-icons right">more_vert</i>
						</span>
							<p>${gd.graduado.fechagrad}</p></td>
					</tr>
				</c:forEach>
			</div>
			<div class="card-reveal">
				<c:forEach var="gd" begin="1" end="1" items="${gradestDao.list()}">
					<tr>
						<td><span class="card-title grey-text text-darken-4"><i
								class="material-icons right">close</i>${gd.titulo}</span>
							<p>${gd.descripcion}</p></td>
					</tr>
				</c:forEach>
			</div>
		</div>
		<div id="gradest" class="col l3 s6 card card-panel hoverable">
			<div class="card-image waves-effect waves-block waves-light">
				<img class="activator" src="resources/perfil_photo.png" width="412"
					height="195">
			</div>
			<div class="card-content">
				<c:forEach var="gd" begin="2" end="2" items="${gradestDao.list()}">
					<tr>
						<td><span
							class="card-title activator grey-text text-darken-4">${gd.graduado.nombre}<i
								class="material-icons right">more_vert</i>
						</span>
							<p>${gd.graduado.fechagrad}</p></td>
					</tr>
				</c:forEach>
			</div>
			<div class="card-reveal">
				<c:forEach var="gd" begin="2" end="2" items="${gradestDao.list()}">
					<tr>
						<td><span class="card-title grey-text text-darken-4"><i
								class="material-icons right">close</i>${gd.titulo}</span>
							<p>${gd.descripcion}</p></td>
					</tr>
				</c:forEach>
			</div>
		</div>

		<div id="gradest" class="col l3 s6 card card-panel hoverable">
			<div class="card-image waves-effect waves-block waves-light">
				<img class="activator" src="resources/perfil_photo.png" width="412"
					height="195">
			</div>
			<div class="card-content">
				<c:forEach var="gd" begin="3" end="3" items="${gradestDao.list()}">
					<tr>
						<td><span
							class="card-title activator grey-text text-darken-4">${gd.graduado.nombre}<i
								class="material-icons right">more_vert</i>
						</span>
							<p>${gd.graduado.fechagrad}</p></td>
					</tr>
				</c:forEach>
			</div>
			<div class="card-reveal">
				<c:forEach var="gd" begin="3" end="3" items="${gradestDao.list()}">
					<tr>
						<td><span class="card-title grey-text text-darken-4"><i
								class="material-icons right">close</i>${gd.titulo}</span>
							<p>${gd.descripcion}</p></td>
					</tr>
				</c:forEach>
			</div>
		</div>
	</div>

	<div class="divider"></div>

	<!--LOCALIZACION-->
	<h2 class="center-align">EN EL MUNDO</h2>

	<div class="container row">
		<div class="video-container">
			<iframe
				src="https://www.google.com/maps/d/u/1/embed?mid=1wMBBVb78vUSeMJjNADpYVXYwvGKG_oHr"
				width="640" height="480"></iframe>
		</div>
	</div>



	<!--PIE DE PAGINA-->
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
				2019 © All Rights Reserved. Desarrollado por: Ing. Sistemas<a
					class="grey-text text-lighten-4 right" href="#!">Social media</a>

			</div>
		</div>

	</footer>

	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script
		src="http://maps.google.com/maps/api/js?sensor=false&callback=iniciar"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyANjWsOk1P_2oAPY7lXYKxEVT8hGAgv4S8&callback=initMap"
		type="text/javascript"></script>
	<script src="js/funcion.js"></script>
</body>

</html>