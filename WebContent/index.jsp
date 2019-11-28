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
  <link rel="shortcut icon" href="http://200.93.148.29/ingsistemas_viejo/images/imagenesArticulos/ing_sistemas.png"
    type="image/x-icon">
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Compiled and minified JS -->
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>
<jsp:useBean id="evenprinDao" class="graduado.model.EventoprinDao"
		scope="request"></jsp:useBean>
	<jsp:useBean id="evenDao" class="graduado.model.EventoDao"
		scope="request"></jsp:useBean>
		<jsp:useBean id="evenprin" class="graduado.entities.Eventoprin"
		scope="request"></jsp:useBean>
  <header>
    <!--ENCABEZADO GENERAL-->
    <div class="navbar-fixed">
      <nav class="nav-extended red darken-4 ">
        <div class="nav-wrapper red darken-2 navbar-fixed">
          <a id="logouno" href="#!" class="brand-logo flow-text truncate"><i id="marghea"
              class="material-icons">school</i>Graduados
            ING. SISTEMAS</a>
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          <ul class="right hide-on-med-and-down">
            <li><a id="ext" href="https://ww2.ufps.edu.co/">Pagina UFPS</a></li>
            <li><a id="ext" href="https://ingsistemas.cloud.ufps.edu.co/index.php">Pagina de Sistemas</a></li>
            <li><a id="login" class="waves-effect waves-light btn grey lighten-5" href="login.jsp"><i
                  class="material-icons right">person</i>INGRESAR</a></li>
          </ul>
        </div>
        <div class="nav-content red-darken-4 hide-on-med-and-down">
          <ul class="red-darken-4 hide-on-med-and-down">
            <li class="tab"><a class="dropdown-trigger waves-effect waves-black" href="ofertaslabs.jsp"
                data-target="ofertas">OFERTA
                LABORAL</a></li>
            <li class="tab"><a class="dropdown-trigger waves-effect waves-black" href="experiencias.jsp"
                data-target="encuestas">EXPERIENCIAS</a></li>
            <li class="tab"><a class="dropdown-trigger waves-effect waves-black" href="eventos.jsp">EVENTOS</a>
            </li>
            <li class="tab"><a class="dropdown-trigger waves-effect waves-black" href="noticias.jsp">NOTICIAS</a>
            </li>
            <li class="tab"><a class="dropdown-trigger waves-effect waves-black tooltipped" href=""
                data-position="bottom"
                data-tooltip="Aprende acerca de los beneficios como graduado de nuestra UFPS">SERVICIOS</a></li>
          </ul>
        </div>
      </nav>
    </div>

    <ul id="ofertas" class="dropdown-content red darken-2">
      <li><a id="lin" href="ofertaslabs.jsp">Ofertas del Programa</a></li>
      <li><a id="lin" href="http://tutrabajo.ufps.trabajando.com.co/">TuTrabajo</a></li>
    </ul>


    <!--BARRA LATERAL: SIDENAV-->
    <ul class="sidenav red darken-4" id="mobile-demo">
      <li><a id="login" class="waves-effect waves-light btn grey lighten-5" href="login.jsp"><i
            class="material-icons right">person</i>INGRESAR</a></li>
      <li>
        <div class="divider"></div>
      </li>
      <li><a class="subheader">Sitios Institucionales</a></li>
      <li><a id="ext" href="ww2.ufps.edu.co"><i class="material-icons">web</i>Pagina UFPS</a></li>
      <li><a id="ext" href="https://ingsistemas.cloud.ufps.edu.co/index.php"><i class="material-icons">web</i>Pagina de Sistemas</a></li>
      <li>
        <div class="divider"></div>
      </li>
      <li><a class="subheader">Interes de Graduados</a></li>
      <li><a id="ext" href="ofertaslabs.jsp"><i class="material-icons">work</i>Ofertas Laborales</a></li>
      <li><a id="ext" href="eventos.jsp"><i class="material-icons">question_answer</i>Eventos</a></li>
      <li><a id="ext" href="noticias.jsp"><i class="material-icons">view_carousel</i>Noticias</a></li>
      <li><a id="ext" href="experiencias.jsp"><i class="material-icons">card_membership</i>Experiencias</a></li>
    </ul>


  </header>

  <!--SLIDER PRINCIPAL-->
  <div class="slider" style="margin-top: 18px;">
    <ul class="slides">
      <li>
        <img src="resources/slider1.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="resources/slider2.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="resources/slider3.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="resources/slider4.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
    </ul>
  </div>


  <!--CONTENIDO-->
  <main>

    <!--EVENTOS SLIDER-->
    <h2 class="center-align">EVENTOS</h2>
    <div class="carousel">
	
      <div id="one" class="carousel-item row valign-wrapper">
        <div class="col s10">
          <img class="responsive-img" width="350" src="https://picsum.photos/id/377/350/350">
        </div>
        <div class="col s2">
          <a class="black-text" href="https://materializecss.com/media-css.html">
            <h6 class="center flow-text ">Titulo del Evento 1</h6>
          </a>
        </div>
      </div>
      <div id="two" class="carousel-item row valign-wrapper">
        <div class="col s10">
          <img class="responsive-img" width="350" src="https://picsum.photos/id/377/350/350">
        </div>
        <div class="col s2">
          <a class="black-text" href="https://materializecss.com/media-css.html">
            <h6 class="center flow-text ">Titulo del evento2</h6>
          </a>
        </div>
      </div>
      <div id="three" class="carousel-item row valign-wrapper">
        <div class="col s10">
          <img class="responsive-img" width="350" src="https://picsum.photos/id/377/350/350">
        </div>
        <div class="col s2">
          <a class="black-text" href="https://materializecss.com/media-css.html">
            <h6 class="center flow-text ">Titulo del evento3</h6>
          </a>
        </div>
      </div>
      <div id="four" class="carousel-item row valign-wrapper">
        <div class="col s10">
          <img class="responsive-img" width="350" src="https://picsum.photos/id/377/350/350">
        </div>
        <div class="col s2">
          <a class="black-text" href="https://materializecss.com/media-css.html">
            <h6 class="center flow-text ">Titulo del evento4</h6>
          </a>
        </div>
      </div>
    </div>

    <div class="divider"></div>

    <!--EXPERIENCIAS VIDEOS-->
    <h2 class="center-align">EXPERIENCIAS</h2>
    <div class="container row">
      <div class="col s8 l8">
        <div class="video-container">
          <iframe width="853" height="480" src="//www.youtube.com/embed/Q8TXgCzxEnw?rel=0" frameborder="0"
            allowfullscreen></iframe>
        </div>
      </div>
      <div class="col s4 l4 ">
        <ul class="collection ">
          <li class="collection-item ">
            <div class="video-container">
              <iframe width="853" height="480" src="//www.youtube.com/embed/Q8TXgCzxEnw?rel=0" frameborder="0"
                allowfullscreen></iframe>
            </div>
          </li>
          <div>
            <li class="collection-item ">
              <div class="video-container">
                <iframe width="853" height="480" src="//www.youtube.com/embed/Q8TXgCzxEnw?rel=0" frameborder="0"
                  allowfullscreen></iframe>
              </div>
            </li>
          </div>
        </ul>
      </div>
    </div>

    <div class="divider"></div>

    <!--NOTICIAS-->
    <h2 class="center-align">NOTICIAS</h2>
    <div class="carousel">
      <div class="carousel-item row valign-wrapper">
        <div class="col s12">
          <div class="card">
            <div class="card-image">
              <img src="https://picsum.photos/id/896/412/310">
            </div>
            <div class="card-content">
              <p class="flow-text truncate">Tirtulo de la noticia</p>
            </div>

          </div>

        </div>
      </div>
      <div class="carousel-item row valign-wrapper">
        <div class="col s12">
          <div class="card">
            <div class="card-image">
              <img src="https://picsum.photos/id/896/412/310">
            </div>
            <div class="card-content">
              <p class="flow-text truncate">Tirtulo de la noticia</p>
            </div>

          </div>

        </div>
      </div>
      <div class="carousel-item row valign-wrapper">
        <div class="col s12">
          <div class="card">
            <div class="card-image">
              <img src="https://picsum.photos/id/896/412/310">
            </div>
            <div class="card-content">
              <p class="flow-text truncate">Tirtulo de la noticia</p>
            </div>

          </div>
        </div>
      </div>
    </div>

    <div class="divider"></div>

    <!--GRADUADO DESTACADO-->
    <h2 class="center-align">GRADUADOS DESTACADOS</h2>
    <div class="container row">
      <div id="gradest" class="col l3 card card-panel hoverable">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="https://picsum.photos/id/291/412/310">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Nombre del graduado<i
              class="material-icons right">more_vert</i></span>
          <p>Año de graduado</p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card Title</span>
          <p>Descripcion del graduado</p>
        </div>
      </div>
      <div id="gradest" class="col l3 card card-panel hoverable">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="https://picsum.photos/id/291/412/310">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Nombre del graduado<i
              class="material-icons right">more_vert</i></span>
          <p>Año de graduado</p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card Title</span>
          <p>Descripcion del graduado</p>
        </div>
      </div>
      <div id="gradest" class="col l3 card card-panel hoverable">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="https://picsum.photos/id/291/412/310">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Nombre del graduado<i
              class="material-icons right">more_vert</i></span>
          <p>Año de graduado</p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card Title</span>
          <p>Descripcion del graduado</p>
        </div>
      </div>

      <div id="gradest" class="col l3 card card-panel hoverable">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="https://picsum.photos/id/291/412/310">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Nombre del graduado<i
              class="material-icons right">more_vert</i></span>
          <p>Año de graduado</p>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card Title</span>
          <p>Descripcion del graduado</p>
        </div>
      </div>
    </div>

    <div class="divider"></div>

    <!--LOCALIZACIÓN-->
    <h2 class="center-align">EN EL MUNDO</h2>

    <div class="container row">
      <div class="video-container">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d24195.183065081445!2d-74.0223669993167!3d40.70925674645445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m5!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20Nueva%20York%2C%20EE.%20UU.!3m2!1d40.7127753!2d-74.0059728!4m0!5e0!3m2!1ses-419!2sco!4v1574608245870!5m2!1ses-419!2sco"
          width="853" height="480" frameborder="0" allowfullscreen></iframe>
      </div>
    </div>
  </main>


  <!--PIE DE PAGINA-->
  <footer class="page-footer red darken-2">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <img class="responsive-img" src="resources/logo_horizontal.png" width="400">
        </div>
        <div class="col l4 offset-l2 s12">
          <h5 class="white-text">Enlaces de Interes</h5>
          <ul>
            <li><a class="grey-text text-lighten-3" href="#!">Grupo de Facebook</a></li>
            <li><a class="grey-text text-lighten-3" href="#!">Biblioteca Eduardo Cote Lamus</a></li>
            <li><a class="grey-text text-lighten-3" href="#!">Canal UFPS en YouTube</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright red darken-4">
      <div class="container">
        2019 � All Rights Reserved. Desarrollado por:
        <a class="grey-text text-lighten-4 right" href="#!">Social media</a>

      </div>
    </div>
  </footer>
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

  <script src="js/funcion.js"></script>
</body>

</html>