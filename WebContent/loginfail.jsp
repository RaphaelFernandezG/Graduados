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
    <link rel="shortcut icon" href="resources/LogoSys.png" type="image/x-icon">
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
                    <a id="logouno" href="index.jsp" class="brand-logo flow-text truncate"><i id="marghea"
                            class="material-icons">school</i>Graduados
                        ING. SISTEMAS</a>
                    <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a id="ext" href="">Pagina UFPS</a></li>
                        <li><a id="ext" href="">Pagina de Sistemas</a></li>
                    </ul>
                </div>
            </nav>
        </div>

        <!--BARRA LATERAL: SIDENAV-->
        <ul class="sidenav red darken-4" id="mobile-demo">
            <li><a class="subheader">Sitios Institucionales</a></li>
            <li><a id="ext" href=""><i class="material-icons">web</i>Pagina UFPS</a></li>
            <li><a id="ext" href=""><i class="material-icons">web</i>Pagina de Sistemas</a></li>
        </ul>
    </header>

    <!--FORMULARIOS-->
    <div id="formulario" class="container white z-depth-2">
        <ul class="col s12 tabs red darken-3">
            <li class="tab col s3"><a class="white-text active" href="#login">login</a></li>

        </ul>
        <div id="login" class="col s12">
            <form class="col s12" action="LoginController" parent="_blank" method="POST" runat="server">
                <div class="form-container">
                    <h3 id="titulologin">Ingresar</h3>
                    <div class="row">
                        <div class="input-field col s12">
                            <input name="text" type="text" class="validate">
                            <label for="text">User</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input name="password" type="password" class="validate">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <br>
                    <center>
                        <button class="btn waves-effect waves-light red darken-3" type="submit" name="action"
                            onclick="">Connect</button>
                            <h5>DATOS INCORRECTOS*</h5>
                    </center>
                </div>
            </form>
        </div>
    </div>


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
                2019© All Rights Reserved. Desarrollado por:
                <a class="grey-text text-lighten-4 right" href="#!">Social media</a>

            </div>
        </div>
    </footer>


    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="js/funcion.js"></script>
    <script
        src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js">
        </script>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
</body>

</html>