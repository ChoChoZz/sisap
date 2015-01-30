<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/bootstrap.css">

        <link rel="stylesheet" href="../css/monitor.css">
		<script src="../js/jquery-2.1.1.min.js"></script>
  		<script src="../js/bootstrap.min.js"></script>
	<title>SISAP</title>
</head>
<body>
	<div class="container">
		<!-- Encabezado -->
		<div class="page-header">
			<h1>SISAP
				<small>Sistema para la prevenci&oacute;n y atenci&oacute;n del delito dentro del Instituto Polit&eacute;cnico Nacional</small>
			</h1>
		</div>
		<nav class="navbar navbar-default" role="navigation">

		  <div class="navbar-header">
		    <button type="button" class="navbar-toggle" data-toggle="collapse"
		            data-target=".navbar-ex1-collapse">
		      <span class="glyphicon glyphicon-tasks"></span>
		    </button>
		    <a class="navbar-brand" href="./descripcion.jsp">SISAP</a>
		  </div>
		  <div class="collapse navbar-collapse navbar-ex1-collapse">
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="./home.jsp">Monitor de denuncias</a></li>
		      <li class="dropdown">
		        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		          Denuncias<b class="caret"></b>
		        </a>
		        <ul class="dropdown-menu">
		          <li><a href="./registrarDenuncia.jsp">Registrar</a></li>
		          <li><a href="./buscarDenuncia.jsp">Buscar</a></li>
		          <li><a href="./estadisticas.jsp">Estadisticas</a></li>
		        </ul>
		      </li>
		    </ul>
		    <ul class="nav navbar-nav">
		      <li class="dropdown">
		        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		          Usuario<b class="caret"></b>
		        </a>
		        <ul class="dropdown-menu">
		          <li><a href="./registrarUsuario.jsp">Registrar</a></li>
		          <li><a href="./buscarUsuario.jsp">Buscar</a></li>
		        </ul>
		      </li>
		    </ul>

			<ul class="nav navbar-nav">
		      <li class="dropdown">
		        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		          Plantel<b class="caret"></b>
		        </a>
		        <ul class="dropdown-menu">
		          <li><a href="./registrarInstitucion.jsp">Registrar</a></li>
		          <li><a href="./buscarInstitucion.jsp">Buscar</a></li>
		        </ul>
		      </li>
		    </ul>

		    <ul class="nav navbar-nav">
		      <li class="dropdown">
		        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		          Protocolo<b class="caret"></b>
		        </a>
		        <ul class="dropdown-menu">
		          <li><a href="./registrarProtocolo.jsp">Registrar</a></li>
		          <li><a href="./buscarProtocolo.jsp">Buscar</a></li>
		        </ul>
		      </li>
		    </ul>

		    <ul class="nav navbar-nav">
		      <li class="dropdown">
		        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		          Prevenci&oacute;n<b class="caret"></b>
		        </a>
		        <ul class="dropdown-menu">
		          <li><a href="./registrarAlerta.jsp">Registrar notificaci&oacute;n</a>
		          </li>
		          <li><a href="./buscarAlerta.jsp">Buscar notificaci&oacute;n</a></li>
		          <li class="divider"></li>
		          <li><a href="./gestionSendero.jsp">Sendero seguro</a></li>
		        </ul>
		      </li>
		    </ul>

		    <ul class="nav navbar-nav">
		      <li><a href="./directorio.jsp">Directorio</a></li>
		    </ul>

		    <ul class="nav navbar-nav navbar-right">
		      <li class=""><a href="#">Cerrar sesi&oacute;n</a></li>
		    </ul>

		  </div>
		</nav>

		<!-- Cuerpo  -->
		<div id="cuerpo">
			<div class="row">
			  <div class="col-xs-4">
			    <div class="thumbnail">
			      <img src="../img/seguridad.png" alt="..." class="img-responsive">
			      <div class="caption">
			        <h3>Descripci&oacute;n</h3>
			        <p>SISAP es una sistema creado por un grupo de alumnos de la ESCOM los cuales se enfocaron en desarrollar una herramienta intuitiva para ayudar a mejorar la seguridad dentro del IPN.</p>
			        <p><a href=".descripcion"  class="btn btn-primary" role="button" data-toggle="modal" data-target="">Ver mas</a> 
			      </div>
			    </div>
			</div>
			<div class="col-xs-4">
			    <div class="thumbnail">
			      <img src="../img/objetivo.png" alt="..." class="img-responsive">
			      <div class="caption">
			        <h3>Misi&oacute;n</h3>
			        <p>SISAP es una sistema creado por un grupo de alumnos de la ESCOM los cuales se enfocaron en desarrollar una herramienta intuitiva para ayudar a mejorar la seguridad dentro del IPN.</p>
			        <p><a href=".mision"  class="btn btn-primary" role="button" data-toggle="modal" data-target="">Ver mas</a> 
			      </div>
			    </div>
			</div>
			<div class="col-xs-4">
			    <div class="thumbnail">
			      <img src="../img/vision.png" alt="..." class="img-responsive">
			      <div class="caption">
			        <h3>Visi&oacute;n</h3>
			        <p>SISAP es una sistema creado por un grupo de alumnos de la ESCOM los cuales se enfocaron en desarrollar una herramienta intuitiva para ayudar a mejorar la seguridad dentro del IPN.</p>
			        	<p><a href=".vision"  class="btn btn-primary" role="button" data-toggle="modal" data-target="">Ver mas</a> 
			      </div>
			    </div>
			</div>
			</div>
			</div>


		<!-- Pie de pagina -->
		<div class="panel panel-info">
	      <div class="panel-heading">
	        <h3 class="panel-title text-center">Instituto Politecnico Nacional</h3>
	      </div>
	      <div class="panel-body text-center">
	        Divisi&oacute;n de seguridad.
	      </div>
	    </div>

	    <!--Ventanas modales-->
	    <div class="modal fade bs-example-modal-lg descripcion" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="description">
		      	<div class="col-xs-6  center-block">
		      		<img src="../img/security.jpg" alt="" class="img-responsive">
		      	</div>
		      	<div class="col-xs-6">
		      		<h4 class="text-center"><strong>SISAP</strong></h4>
		      		<p class="text-justify">El <strong>Sis</strong>tema para la <strong>p</strong>revenci&oacute;n y <strong>a</strong>tenci&oacute;n del delito dentro del Instituto Polit&eacute;cnico Nacional es un sistema desarrollado para mejorar la seguridad dentro del IPN.</p>
		      		<p class="text-justify">Dichas mejoras se lograran teniendo un mejor control de los incidentes delictivos que ocurren dentro del Instituto, SISAP, se compone de 5 modulos los cuales son:</p>
		      		<ul>
		      			<li>Modulo de Monitoreo</li>
		      			<li>Modulo Bot&oacute;n de p&aacute;nico</li>
		      			<li>Modulo Cuestionarios dinamicos</li>
		      			<li>Modulo de prenvencion</li>
		      			<li>Modulo de falsas alarmas</li>
		      		</ul>
		      		<p class="text-justify">El sistema se encontrara disponible para todos los alumnos, profesores y personal administrativo que se encuentre dentro de las instalaciones del instituto.</p>
		      	</div>
		      </div>
		    </div>
		  </div>
		</div>

		<div class="modal fade bs-example-modal-lg mision" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="description">
		      	<div class="col-xs-6">
		      		<h4 class="text-center"><strong>Misi&oacute;n</strong></h4>
		      		<p class="text-justify">El <strong>Sis</strong>tema para la <strong>p</strong>revenci&oacute;n y <strong>a</strong>tenci&oacute;n del delito dentro del Instituto Polit&eacute;cnico Nacional es un sistema desarrollado para mejorar la seguridad dentro del IPN.</p>
		      		<p class="text-justify">Dichas mejoras se lograran teniendo un mejor control de los incidentes delictivos que ocurren dentro del Instituto, SISAP, se compone de 5 modulos los cuales son:</p>
		      		<ul>
		      			<li>Modulo de Monitoreo</li>
		      			<li>Modulo Bot&oacute;n de p&aacute;nico</li>
		      			<li>Modulo Cuestionarios dinamicos</li>
		      			<li>Modulo de prenvencion</li>
		      			<li>Modulo de falsas alarmas</li>
		      		</ul>
		      		<p class="text-justify">El sistema se encontrara disponible para todos los alumnos, profesores y personal administrativo que se encuentre dentro de las instalaciones del instituto.</p>
		      	</div>
		      	<div class="col-xs-6  center-block">
		      		<img src="../img/mision.jpg" alt="" class="img-responsive">
		      	</div>
		      </div>
		    </div>
		  </div>
		</div>

		<div class="modal fade bs-example-modal-lg vision" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="description">
		      	<div class="col-xs-6  center-block">
		      		<img src="../img/vision.jpg" alt="" class="img-responsive">
		      	</div>
		      	<div class="col-xs-6">
		      		<h4 class="text-center"><strong>Visi&oacute;n</strong></h4>
		      		<p class="text-justify">El <strong>Sis</strong>tema para la <strong>p</strong>revenci&oacute;n y <strong>a</strong>tenci&oacute;n del delito dentro del Instituto Polit&eacute;cnico Nacional es un sistema desarrollado para mejorar la seguridad dentro del IPN.</p>
		      		<p class="text-justify">Dichas mejoras se lograran teniendo un mejor control de los incidentes delictivos que ocurren dentro del Instituto, SISAP, se compone de 5 modulos los cuales son:</p>
		      		<ul>
		      			<li>Modulo de Monitoreo</li>
		      			<li>Modulo Bot&oacute;n de p&aacute;nico</li>
		      			<li>Modulo Cuestionarios dinamicos</li>
		      			<li>Modulo de prenvencion</li>
		      			<li>Modulo de falsas alarmas</li>
		      		</ul>
		      		<p class="text-justify">El sistema se encontrara disponible para todos los alumnos, profesores y personal administrativo que se encuentre dentro de las instalaciones del instituto.</p>
		      	</div>
		      </div>
		    </div>
		  </div>
		</div>

        </div>
</body>
</html>