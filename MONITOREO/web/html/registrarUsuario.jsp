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

		<script src="../js/jquery-2.1.1.min.js"></script>
  		<script src="../js/bootstrap.min.js"></script>
  		<script src="../js/jquery-ui.min.js"></script>
  		<script src="../js/bootbox.min.js"></script>
	<title>SISAP - Registro usuario</title>
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
		<h3 class="text-center">Registro usuario</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<form class="form-horizontal" role="form">
					  
					  <div class="form-group">
					    <label for="identificador" class="col-lg-2 control-label">Nombre:</label>
					    <div class="col-lg-4">
					      <input type="text" class="form-control" id="identificador" placeholder="Nombre(s):" required title="Ingresa un nombre">
					    </div>
					    <div class="col-lg-3">
					      <input type="text" class="form-control" id="identificador" placeholder="Primer apellido" required title="Ingresa el primer apellido">
					    </div>
					    <div class="col-lg-3">
					      <input type="text" class="form-control" id="identificador" placeholder="Segundo apellido" required title="Ingresa un segundo apellido">
					    </div>

					  </div>
					  <div class="row" id="tipoSelect">
					  			<label for="alumno" class="col-lg-2 control-label">Tipo:</label>
					  		<div class="col-lg-10">
							  <div class="input-group ">
						      <span class="input-group-addon">
						        <input type="radio" id="alumno" name="tipo" class="text-cen" required>
						        <label for="alumno">Alumno</label>
						      </span>

						      <span class="input-group-addon">
						        <input type="radio" id="docente" name="tipo">
						        <label for="docente">Docente</label>
						      </span>
						      
						      <span class="input-group-addon">
						        <input type="radio" id="administrativo" name="tipo">
						        <label for="administrativo">Administrativo</label>
						      </span>

						      <span class="input-group-addon">
						        <input type="radio" id="seguridad" name="tipo">
						        <label for="seguridad">Seguridad</label>
						      </span>

						      </div><!-- /input-group -->
						    </div>
				      </div>

				      <div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Plantel:</label>
					    <div class="col-lg-10">
					      <select name="" id="" class="form-control">
					      		<option>ESCOM</option>
					      	<option>ESIA</option>
					      	<option>ESIA Tecamachalco</option>
							<option>ESIME TICOMAN</option>
					      </select>
					    </div>
					  </div>
					
					<div class="form-group">
					    <label for="boleta" class="col-lg-2 control-label">Identificador:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="boleta" placeholder="Boleta" required>
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="correo" class="col-lg-2 control-label">Correo:</label>
					    <div class="col-lg-10">
					      <input type="email" class="form-control" id="correo" placeholder="grodriguez@ipn.com.mx">
					    </div>
					  </div>

					
					  <div class="form-group">
					    <label for="contrasenia1" class="col-lg-2 control-label">Contrase&ntilde;a:</label>
					    <div class="col-lg-5">
					      <input type="password" class="form-control" id="contrasenia1" placeholder="Contrase&ntilde;a 1">
					    </div>
					    <div class="col-lg-5">
					      <input type="password" class="form-control" id="contrasenia2" placeholder="Contrase&ntilde;a 2">
					    </div>
					  </div>

					<div class="form-group">
					    <label for="" class="col-lg-2 control-label">Sexo:</label>
					    <div class="col-lg-10">
							  <div class="input-group ">
						      <span class="input-group-addon">
						        <input type="radio" id="Femenino" name="tipo" class="text-cen" required value="femenino">
						        <label for="Femenino">Femenino</label>
						      </span>

						      <span class="input-group-addon">
						        <input type="radio" id="docente" name="" value="masculino">
						        <label for="docente">Masculino</label>
						      </span>
							</div>
						</div>
					</div>

					<div class="form-group">
					    <label for="edad" class="col-lg-2 control-label">Edad:</label>
					    <div class="col-lg-10">
					      <input type="number" class="form-control" id="edad" placeholder="18" min="15" required>
					    </div>
					  </div>

					<div class="form-group">
					    <label for="telefonoFijo" class="col-lg-2 control-label">Tel&eacute;fono:</label>
					    <div class="col-lg-5">
					      <input type="text" class="form-control" id="telefonoFijo" placeholder="Telefono fijo">
					    </div>
					    <div class="col-lg-5">
					      <input type="text" class="form-control" id="telefonoMovil" placeholder="Telefono m&oacute;vil">
					    </div>
					  </div>

					<div class="form-group">
						<label for="tipoDeSangre" class="col-lg-3 col-md-offset-2 control-label">Tipo de sangre:</label>
					    <div class="col-lg-4">
					      	<select name="tipoDeSangre" id="tipoDeSangre" class="form-control">
					      		<option value="O-">O-</option>
						      	<option value="O+">O+</option>
						      	<option value="A-">A-</option>
								<option value="A+">A+</option>
								<option value="B-">B-</option>
								<option value="B+">B+</option>
								<option value="AB-">AB-</option>
								<option value="AB+">AB+</option>
						    </select>
					    </div>
					</div>

					  <div class="form-group" id="botones">
					    <div class="col-lg-offset-2 col-lg-1">
					      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					    <div class="col-lg-offset-6 col-lg-1">
					      <button type="submit" class="btn btn-success">Aceptar</button>
					    </div>
					  </div>
					</form>
				</div>
				<div class="col-xs-2"></div>
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

        </div>
       	<!--Script para cancelar-->
	    <script>
	        $("a.confirm").click(function(e) {
			    e.preventDefault();
			    bootbox.confirm("¿Desea cancelar la operaci&oacute;n?", function(confirmed) {
			        console.log("El resultado fue: "+confirmed);
			        if(confirmed==false){

			        }
			        else{
			        	window.location.replace("./home.jsp");
			        }
			    });
			});
	    </script>
</body>
</html>