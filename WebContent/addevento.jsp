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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


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
						<li><a id="lin" href="addgraduado.jsp">REGISTRAR GRADUADO</a></li>
						<li><a id="lin" href="admin.jsp">VOLVER</a></li>
						<li><a id="lin" href="addexperiencia.jsp">AGREGAR EXPERIENCIA</a></li>
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
			<li><a id="ext" href="admin.jsp"><i
					class="material-icons">view_carousel</i>VOLVER</a></li>
			<li><a id="ext" href="addexperiencia.jsp"><i
					class="material-icons">card_membership</i>AGREGAR EXPERIENCIA</a></li>
			<li><a id="ext" href="addofertalab.jsp"><i
					class="material-icons">card_membership</i>AGREGAR OFERTA LAB.</a></li>
		</ul>

	</header>

    <main>
        <section class="container">
            <div class="row card">
                <h3 class="center-align">REGISTRO DE EVENTO</h3>
                <article class="offset-s2 col s8 offset-s2">
                    <form action="EventoController" parent="_blank" method="POST" runat="server">


                        <div class="input-field">
                            <i class="material-icons prefix">my_location</i>
                            <label for="ideve">Identificador</label>
                            <input type="text" name="ideve" required>
                        </div>

                        <div class="input-field">
                            <i class="material-icons prefix">my_location</i>
                            <label for="nombre">Nombre del Evento</label>
                            <input type="text" name="nombre" required>
                        </div>

                        <div class="input-field">
                            <i class="material-icons prefix">my_location</i>
                            <label for="ciudad">Ciudad</label>
                            <input type="text" name="ciudad" required>
                        </div>

                        <div class="input-field">
                            <i class="material-icons prefix">my_location</i>
                            <label for="lugar">Lugar</label>
                            <input type="text" name="lugar" required>
                        </div>

                        <div class="input-field">
                            <i class="material-icons prefix">date_range</i>
                            <label for="fechaini">Fecha de apertura</label>
                            <input type="text" class="datepicker" name="fechaini">
                        </div>

                        <div class="input-field">
                                <i class="material-icons prefix">date_range</i>
                                <label for="fechafin">Fecha de apertura</label>
                                <input type="text" class="datepicker" name="fechafin">
                            </div>

                        <p class="center-align">
                            <button class="waves-effect waves-light btn red darken-4" type="submit"><i
                                    class="material-icons right">add_circle_outline
                                </i>agregar</button>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="js/funcion.js"></script>

</body>

</html>