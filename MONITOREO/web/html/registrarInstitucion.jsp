<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/bootstrap.css">
		<link rel="stylesheet" href="../css/bootstrap.css.map">
        <link rel="stylesheet" href="../css/monitor.css">
		<script src="../js/jquery.js"></script>
  		<script src="../js/bootstrap.min.js"></script>
  		<script src="../js/bootbox.min.js"></script>
	<title>SISAP - Registro Plantel</title>
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
		<h3 class="text-center">Registro del Plantel</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<form class="form-horizontal" role="form">
					  
					  <div class="form-group">
					    <label for="identificador" class="col-lg-2 control-label">Nombre:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="identificador" placeholder="Nombre de la Plantel o plantel" required title="Ingresa el nombre del plantel">
					    </div>
					  </div>

				      <div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Tipo:</label>
					    <div class="col-lg-10">
					      <select name="" id="" class="form-control">
					      		<option>Escuela de nivel superior</option>
						      	<option>Escuela de nivel medio superior</option>
						      	<option>Plantel Administrativo</option>
								<option>Cendis</option>
								<option>Otro</option>
					      </select>
					    </div>
					  </div>
					
					<div class="form-group">
					    <label for="boleta" class="col-lg-2 control-label">Direcci&oacute;n:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="boleta" placeholder="Direcci&oacute;n" required>
					    </div>
					</div>

					<div class="form-group">
					    <label for="coordenadas" class="col-lg-2 control-label">Coordenadas:</label>
					    <div class="col-lg-5">
					      <input type="text" class="form-control" id="coordenada0" placeholder="Latitud" required name="coordenada0">
					    </div>
					    <div class="col-lg-5">
					      <input type="text" class="form-control" id="coordenada1" placeholder="Longitud" required name="coordenada1">
					    </div>
					</div>

					<div class="form-group">
					    <label for="telefonoFijo" class="col-lg-2 control-label">Tel&eacute;fono:</label>
					    <div class="col-lg-5">
					      <input type="text" class="form-control" id="telefonoFijo" placeholder="Telefono fijo" required>
					    </div>
					    <div class="col-lg-5">
					      <input type="password" class="form-control" id="telefonoMovil" placeholder="Extensi&oacute;n">
					    </div>
					  </div>

					  <div class="form-group" id="botones">
					    <div class="col-lg-offset-3 col-lg-1">
					      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					    <div class="col-lg-offset-4 col-lg-1">
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
	        <h3 class="panel-title text-center">Instituto Polit&eacute;cnico Nacional</h3>
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

	    <!--Script para eliminar-->
          <script>
	        $("button.eliminar").click(function(e) {
			    e.preventDefault();
			    bootbox.confirm("¿ Desea eliminar el registro?", function(confirmed) {
			        console.log("El resultado fue: "+confirmed);
			        if(confirmed==false){

			        }
			        else{
			        	bootbox.alert("Se ha eliminado la alerta con &eacute;xito", function(e) {
						  console.log("El resultado fue true");
						  //C&oacute;digo para eliminar al usuario

						});
			        }
			    });
			});
	    </script>
</body>
</html>