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
	<title>SISAP - Gesti&oacute;n sendero seguro</title>
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
		<h3 class="text-center">Gesti&oacute;n sendero seguro</h3>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-10">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Plantel</th>
									<th>Estado</th>
									<th class="element">Ver</th>
									<th class="element">Editar</th>
									<th class="element">Eliminar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Escuela superior de computo, ESCOM</td>
									<td>Terminado</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-primary" href=".edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td>
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
								<tr>
									<td>Escuela superior de ingenieria y arquitectura, ESIA</td>
									<td>Inconcluso</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-primary" href=".edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td>
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
								<tr>
									<td>Escuela sueperior de medicina, ESM.</td>
									<td>Terminado</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-primary" href=".edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td>
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-xs-1"></div>
			</div>
			<div class="row">
				<div class="col-xs-3"></div>
				<div class="col-xs-6">
					<div class="form-group" id="botones">
					    <div class="col-lg-offset-1 col-lg-1">
					      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					    <div class="col-lg-offset-6 col-lg-1">
					      <a href="./registrarSendero.jsp" class="btn btn-success">Agregar Sendero</a>
					    </div>
					</div>
				</div>
				<div class="col-xs-3">
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
        <!--Ventana modal para infromacion de la alerta-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="info">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		      <div class="row" id="">
		      	<div class="col-xs-6">
		      		<h5 id="instrucciones"><strong>Informaci&oacute;n del sendero</strong></h5>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <label for="plantel" class="col-lg-3 control-label">Plantel:</label>
						    <h6 id="plantel" class="col-lg-9 text-left">Escuela Superior de C&oacute;mputo - ESCOM</h6>
						</div>
						<div class="form-group">
						    <label for="estado" class="col-lg-3 control-label">Estado:</label>
						    <h6 id="estado" class="col-lg-9 text-left">Terminado</h6>
						</div>
						<div class="form-group">
						    <label for="descripcion" class="col-lg-3 control-label">Descripci&oacute;n:</label>
						    <h6 id="descripcion" class="col-lg-9 text-left">El sendero seguro se creo para la ruta de la escuela al mero Politecnico, se encuentra ilumniado y con camaras de vigilancia</h6>
						</div>
		      		</form>
		      	</div>
		      	<div class="col-xs-6  center-block">
		      		<label for="descripcion" class="col-lg-6 control-label">Ruta del sendero seguro:</label>
		      		<img src="../img/map.gif" alt="" class="img-responsive">
		      	</div>
		      </div>
		    </div>
		  </div>
		</div>


		<div class="modal fade bs-example-modal-lg edicion" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones">Editar informaci&oacute;n del sendero</h5>
		      		<form class="form-horizontal" role="form">
					  
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
				    <label for="exampleInputFile" class="col-lg-3 control-label" required>Imagen de la ruta:</label>
				    <input type="file" id="exampleInputFile" class="col-lg-9">
				  </div>


					<div class="row" id="tipoSelect">
					  		<label for="alumno" class="col-lg-2 control-label">Estado:</label>
					  		<div class="col-lg-10">
							  <div class="input-group ">
						      <span class="input-group-addon">
						        <input type="radio" id="terminado" name="tipo" class="text-cen" required>
						        <label for="terminado">Terminado</label>
						      </span>

						      <span class="input-group-addon">
						        <input type="radio" id="Proceso" name="tipo">
						        <label for="Proceso">Inconcluso</label>
						      </span>

						      </div><!-- /input-group -->
						    </div>
				      </div>
				    <div class="form-group">
						<label for="alumno" class="col-lg-2 control-label">Descripci&oacute;n:</label>
				    	<div class="col-lg-10">
				    	<textarea class="form-control" rows="3"></textarea>
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
					  <div class="form-group" id="botones">
						    <div class="text-center">
						      <button type="submit" class="btn btn-success">Aceptar</button>
						    </div>
						  </div>
					</form>
		      	</div>
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
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