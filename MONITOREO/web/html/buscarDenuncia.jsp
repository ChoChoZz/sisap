<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/bootstrap.css">
		<link rel="stylesheet" href="../css/bootstrap.css.map">
        <link rel="stylesheet" href="../css/monitor.css">
        <link rel="stylesheet" href="../css/jquery-ui.min.css">

		<script src="../js/jquery.js"></script>
  		<script src="../js/bootstrap.min.js"></script>
  		<script src="../js/jquery-ui.min.js"></script>
		

	<title>SISAP - Buscar denuncia</title>
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
		<h3 class="text-center">Buscar denuncia</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<form class="form-horizontal" role="form">
					  
					  <div class="form-group">
					    <label for="identificador" class="col-lg-2 control-label">Identificador:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="identificador" placeholder="#denuncia">
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="correo" class="col-lg-2 control-label">Denunciante (correo):</label>
					    <div class="col-lg-10">
					      <input type="email" class="form-control" id="correo" placeholder="grodriguez@ipn.com.mx">
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Plantel:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="institucion" placeholder="Escuela Superior de Computo - ESCOM">
					    </div>
					  </div>

					    <div class="form-group">
				        <label for="fecha" class="control-label col-lg-2">Fecha</label>
				        <div class="controls col-lg-5">
				            <div class="input-group">
				                <input id="fecha" type="text" class="date-picker form-control" />
				                <label for="fecha" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>
				                </label>
				            </div>
				        </div>
				        <div class="controls col-lg-5">
				            <div class="input-group">
				                <input id="fecha1" type="text" class="date-picker form-control" />
				                <label for="fecha1" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>
				                </label>
				            </div>
				        </div>
				   	  </div>
				   	 
				   	<script type="text/javascript">
			            $(function () {
			               $(".date-picker").datepicker();

							$(".date-picker").on("change", function () {
							    var id = $(this).attr("id");
							    var val = $("label[for='" + id + "']").text();
							    $("#msg").text(val + " changed");
							});
			            });
			        </script>

			        <script type="text/javascript">
			            $(function () {
			               $(".date-picker1").datepicker();

							$(".date-picker1").on("change", function () {
							    var id = $(this).attr("id");
							    var val = $("label[for='" + id + "']").text();
							    $("#msg").text(val + " changed");
							});
			            });
			        </script>

					  <div class="form-group">
					    <div class="col-lg-offset-2 col-lg-10">
					      <button type="submit" class="btn btn-info">Buscar</button>
					    </div>
					  </div>
					</form>
				</div>
				<div class="col-xs-2"></div>
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

        </div>
</body>
</html>