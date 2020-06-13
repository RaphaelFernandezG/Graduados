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
	<jsp:useBean id="graDao" class="graduado.model.GraduadoDao"
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
						<li><a id="lin" href="addnoticia.jsp">AGREGAR NOTICIA</a></li>
						<li><a id="lin" href="addgraduado.jsp">REGISTRAR GRADUADO</a></li>
						<li><a id="lin" href="addevento.jsp">AGREGAR EVENTO</a></li>
						<li><a id="lin" href="admin.jsp">VOLVER</a></li>
						<li><a id="lin" href="addofertalab.jsp">AGREGAR	OFERTA LAB.</a></li>
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
			<li><a id="ext" href="addgraduado.jsp"><i class="material-icons">question_answer</i>REGISTRAR GRADUADO</a></li>
			<li><a id="ext" href="addevento.jsp"><i
					class="material-icons">view_carousel</i>AGREGAR EVENTO</a></li>
			<li><a id="ext" href="admin.jsp"><i
					class="material-icons">card_membership</i>VOLVER</a></li>
			<li><a id="ext" href="addofertalab.jsp"><i
					class="material-icons">card_membership</i>AGREGAR OFERTA LAB.</a></li>
		</ul>

	</header>

	<main>
		<section class="container">
			<div class="row card">
				<h3 class="center-align">REGISTRO DE EXPERIENCIAS</h3>
				<article class="offset-s2 col s8 offset-s2">
					<form action="ExperienciaController" parent="_blank" method="POST"
						runat="server">
						<div class="input-field ">
                            <i class="material-icons prefix">person_pin</i>
                            <select name=gralist id=gralist>
                                <option value="" disabled selected>Lista de Graduados</option>
                                <c:forEach var="n" items="${graDao.list()}">
									<option value="${n.numdocum}"><c:out value="${n.nombre}"/></option>
									</c:forEach>
                            </select>
                            <label>Graduado del video</label>
                        </div>
						<div class="input-field">
                            <i class="material-icons prefix">link</i>
                            <label for="video">Video</label>
                            <input type="text" name="video" required>
                        </div>
						<div class="input-field">
                            <i class="material-icons prefix">visibility</i>
                            <textarea name="descri" class="materialize-textarea" data-length="120"></textarea>
                            <label id="descri" for="descri">Descripcion</label>
                        </div>
						<p class="center-align">
                            <button class="waves-effect waves-light btn red darken-4" type="submit"><i
                                    class="material-icons right">add_circle_outline
                                </i>agregar</button>
                        </p></form>

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