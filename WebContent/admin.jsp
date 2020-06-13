<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%
	if (session.getAttribute("text") == null) {
	response.sendRedirect("login.jsp");
}
%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Graduados | UFPS Ing. de Sistemas</title>
<link rel="shortcut icon"
	href="http://200.93.148.29/ingsistemas_viejo/images/imagenesArticulos/ing_sistemas.png"
	type="image/x-icon">
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
	<jsp:useBean id="notideDao" class="graduado.model.NotidestDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="notiDao" class="graduado.model.NoticiaDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="graDao" class="graduado.model.GraduadoDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="gradestDao" class="graduado.model.GraddestacadoDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="expeDao" class="graduado.model.ExperienciaDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="expdestDao" class="graduado.model.ExpdestDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="diradmDao" class="graduado.model.DiradminDao"
		scope="request"></jsp:useBean>



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
						<li><a id="lin" href="admin.jsp">INICIO</a></li>
						<li><a id="lin" href="addnoticia.jsp">agregar noticia</a></li>
						<li><a id="lin" href="addgraduado.jsp">registrar graduado</a></li>
						<li><a id="lin" href="addevento.jsp">agregar evento</a></li>
						<li><a id="lin" href="addexperiencia.jsp">agregar
								experiencia</a></li>
						<li><a id="lin" href="addofertalab.jsp">agregar
								experiencia</a></li>
					</ul>
				</div>
				<div class="nav-content red-darken-4 hide-on-med-and-down">
					<ul class="red-darken-4 hide-on-med-and-down">
						<li class="tab"><a
							class="dropdown-trigger waves-effect waves-black" href=""
							data-target="ofertas">OFERTA LABORAL</a></li>
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
							data-tooltip="Aprende acerca de los beneficios como graduado de nuestra UFPS">SERVICIOS</a>
						</li>

					</ul>
				</div>
			</nav>
		</div>

		<ul id="ofertas" class="dropdown-content red darken-2">
			<li><a id="lin" href="ofertaslabs.jsp">Ofertas del Programa</a></li>
			<li><a id="lin" href="http://tutrabajo.ufps.trabajando.com.co/">TuTrabajo</a></li>
		</ul>

		<ul id="cargas" class="dropdown-content red darken-2">
			<li><a id="lin" href="addnoticia.jsp">agregar noticia</a></li>
			<li><a id="lin" href="addgraduado.jsp">registrar graduado</a></li>
			<li><a id="lin" href="addevento.jsp">agregar evento</a></li>
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


	<div class="container" style="padding-top: 30px;">
		<div class="card-panel row valign-wrapper">
			<div class="col s12 l2">
				<img
					src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
					class="responsive-img" width="200" height="200">
			</div>
			<div class="col s12 l8">
				<c:forEach var="n" begin="0" end="0" items="${diradmDao.list()}">
					<tr>
						<td><span class="black-text flow-text">${n.nombres}</span><span class="black-text flow-text">${' '}</span><span class="black-text flow-text">${n.apellidos}</span></td>
					</tr>
				</c:forEach>
				<br> <span class="black-text flow-text">Director de
					Ingenieria de Sistemas</span>
			</div>
			<div class="col s12 l2 valign-wrapper center">
				<a class="waves-effect waves-light  btn yellow accent-3 black-text"
					href="index.jsp"><i class="material-icons right">exit_to_app</i>salir</a>
			</div>
		</div>
	</div>

	<div class="row container">
		<div class="card panel col s12 m6 l7">
			<table>
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Cedula</th>
						<th>Fecha de Grado</th>
						<th>Correo</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="n" items="${graDao.list()}">
						<tr>
							<td><c:out value="${n.nombre}" /></td>
							<td><c:out value="${n.numdocum}" /></td>
							<td><c:out value="${n.fechagrad}" /></td>
							<td><c:out value="${n.email}" /></td>
						</tr>
					</c:forEach>
					<%
			session.setAttribute("graduado", graDao);
		%>
				</tbody>
			</table>
			<a href=reportegraduados.jsp>Generar Reporte</a>
		</div>
		<div class="col s12 m6 l5">
			<div class="row">
				<div class="col s12">
					<ul class="tabs col s12  red darken-3">
						<li class="tab col s3"><a class="white-text active truncate"
							href="#news">NOTICIA</a></li>
						<li class="tab col s3"><a class="white-text active truncate"
							href="#event">EVENTO</a></li>
						<li class="tab col s3"><a class="white-text active truncate"
							href="#grad">GRADUADO</a></li>
						<li class="tab col s3"><a class="white-text active truncate"
							href="#exp">EXPERIENCIA</a></li>

					</ul>
				</div>

				<!-- NOTICIA DESTACADA -->
				<div id="news" class="col s12">
					<form class="col s12" action="AdNoticiaController" parent="_blank"
						method="POST" runat="server">
						<div class="form-container">
							<h3 class="flow-text" id="titulologin">Destacar Noticia</h3>
							<div class="row">
								<div class="input-field col s12">
									<select name="posnotides" id="posnotides">
										<option value="" disabled selected>Escoja la posicion</option>
										<c:forEach var="nod" items="${notideDao.list()}">
											<option value="${nod.idNd}"><c:out
													value="${nod.idNd}" /></option>
										</c:forEach>
									</select> <label>Posiciones</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<select name="notinombre" id="notinombre">
										<option value="" disabled selected>Seleccione la
											noticia</option>
										<c:forEach var="no" items="${notiDao.list()}">
											<option value="${no.id}"><c:out
													value="${no.descripcion}" /></option>
										</c:forEach>
										
									</select> <label>Lista de noticias</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input name="titular" type="text" class="validate" required>
									<label for="titular">Titular de la noticia</label>
								</div>
							</div>

							<br>
							<center>
								<button class="btn waves-effect waves-light red darken-3"
									type="submit" name="action" onclick="">CARGAR</button>
							</center>
						</div>
					</form>
				</div>
				<!-- EVENTO DESTACADO -->
				<div id="event" class="col s12">
					<form class="col s12" action="AdEventoController" parent="_blank"
						method="POST" runat="server">
						<div class="form-container">
							<h3 class="flow-text" id="titulologin">Destacar Evento</h3>
							<div class="row">
								<div class="input-field col s12">
									<select name="posevenprin" id="posevenprin">
										<option value="" disabled selected>Escoja la posicion</option>
										<c:forEach var="n" items="${evenprinDao.list()}">
											<option value="${n.id}"><c:out value="${n.id}" /></option>
										</c:forEach>
									</select> <label>Posciones</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<select name="evenombre" id="evenombre">
										<option value="" disabled selected>Escoja el evento</option>
										<c:forEach var="e" items="${evenDao.list()}">
											<option value="${e.idEve}"><c:out
													value="${e.nombre}" /></option>
										</c:forEach>
									</select> <label>Lista de eventos</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input name="descri_eveprin" type="text" class="validate"
										required> <label for="descri">Realice una
										descripcion del evento</label>
								</div>
							</div>
							<br>
							<center>
								<button class="btn waves-effect waves-light red darken-3"
									type="submit" name="action" onclick="">CARGAR</button>
							</center>
						</div>
					</form>
				</div>
				<!-- GRADUADO DESTACADO -->
				<div id="grad" class="col s12">
					<form class="col s12" action="AdGraduadoController" parent="_blank"
						method="POST" runat="server">
						<div class="form-container">
							<h3 class="flow-text" id="titulologin">Destacar Graduado</h3>
							<div class="row">
								<div class="input-field col s12">
									<select name="posgraddest" id="posgraddest">
										<option value="" disabled selected>Escoja la posicion</option>
										<c:forEach var="n" items="${gradestDao.list()}">
											<option value="${n.posgraddest}"><c:out
													value="${n.posgraddest}" /></option>
										</c:forEach>
									</select> <label>Posiciones</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<select name="gradnombre" id="gradnombre">
										<option value="" disabled selected>Escoja el graduado</option>
										<c:forEach var="g" items="${graDao.list()}">
											<option value="${g.numdocum}"><c:out
													value="${g.nombre}" /><c:out value="${' '}" /><c:out
													value="${g.apellidos}" /></option>
										</c:forEach>
									</select> <label>Lista de graduados</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input name="title" id="title" type="text" class="validate"
										required> <label for="title">Descripcion del
										nivel de grado academico</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input name="descr" id="descr" type="text" class="validate"
										required> <label for="descr">Realice una
										descripcion del graduado</label>
								</div>
							</div>
							<br>
							<center>
								<button class="btn waves-effect waves-light red darken-3"
									type="submit" name="action" onclick="">CARGAR</button>
							</center>
						</div>
					</form>
				</div>
				<!-- EXPERIENCIA DESTACADA -->
				<div id="exp" class="col s12">
					<form class="col s12" action="AdVideoController" parent="_blank"
						method="POST" runat="server">
						<div class="form-container">
							<h3 class="flow-text" id="titulologin">Destacar Experiencia</h3>
							<div class="row">
								<div class="input-field col s12">
									<select name="posexpdest" id="posexpdest">
										<option value="" disabled selected>Escoja la posicion</option>
										<c:forEach var="n" items="${expdestDao.list()}">
											<option value="${n.idDest}"><c:out
													value="${n.idDest}" /></option>
										</c:forEach>
									</select> <label>Posiciones</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<select name="expnombre" id="expnombre">
										<option value="" disabled selected>Seleccione la
											experiencia</option>
										<c:forEach var="x" items="${expeDao.list()}">
											<option value="${x.link}"><c:out
													value="${x.descripcion}" /></option>
										</c:forEach>
									</select> <label>Lista de videos</label>
								</div>
							</div>
							<br>
							<center>
								<button class="btn waves-effect waves-light red darken-3"
									type="submit" name="action" onclick="">CARGAR</button>
							</center>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!--FOOTER-->
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