<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/monitor.css">
		<script src="../js/jquery.js"></script>
  		<script src="../js/bootstrap.min.js"></script>
  		<script src="../js/bootbox.min.js"></script>
	<title>SISAP - Gesti&oacute;n Notificaci&oacute;n</title>
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
		<h3 class="text-center">Gesti&oacute;n Notificaci&oacute;n</h3>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-10">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="element">#Identificador</th>
									<th>Asunto</th>
									<th class="element">Fecha</th>
									<th class="element">Destino</th>
									<th class="element">Ver</th>
									<th class="element">Editar</th>
									<th class="element">Eliminar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>#567881</td>
									<td>Atencion con tu lap</td>
									<td>18/05/2014</td>
									<td>Todos</td>
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
									<td>#567881</td>
									<td>Atencion con tu lap</td>
									<td>18/05/2014</td>
									<td>Todos</td>
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
									<td>#567881</td>
									<td>Atencion con tu lap</td>
									<td>18/05/2014</td>
									<td>Todos</td>
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
			<tr>
			<div class="row">
				<div class="col-xs-4"></div>
				<div class="col-xs-4">
					<div class="form-group" id="botones">
					    <div class="col-lg-offset-4 col-lg-1">
					    	<a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					</div>
				</div>
				<div class="col-xs-4"></div>
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



        <!--Ventanas modales-->
        <!--Ventana modal para infromacion de la alerta-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="info">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="infoUsuario">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones">Informaci&oacute;n de la Notificaci&oacute;n</h5>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <label for="asunto" class="col-lg-3 control-label" >Asunto:</label>
						    <h6 id="asunto" class="col-lg-9 text-left">Cuida tu lap top</h6>
						</div>
						<div class="form-group">
						    <label for="descripcion" class="col-lg-3 control-label" >Descripci&oacute;n:</label>
						    <h6 id="descripcion" class="col-lg-9 text-left" >Cuida tu laptop el indice de robos en tu escuela ha aunmentado en un 40% este &uacute;ltimo mes, debido a que no se tiene la suficiente precauci&oacute;n para cuidar el equipo y dejarlo sin vigilacia.</h6>
						</div>
						<div class="form-group">
						    <label for="destino" class="col-lg-3 control-label" >Destino:</label>
						    <h6 id="destino" class="col-lg-9 text-left" >Escuela superior de computo ESCOM</h6>
						</div>
						<div class="form-group">
						    <label for="plantel" class="col-lg-3 control-label" >Tipo:</label>
						    <h6 id="plantel" class="col-lg-9 text-left" >Prevenci&oacute;n</h6>
						</div>
						<div class="form-group">
						    <label for="identificador" class="col-lg-3 control-label" >Medio de difusi&oacute;n:</label>
						    <h6 id="identificador" class="col-lg-9 text-left" >Aplicaci&oacute;n m&oacute;vil</h6>
						</div>
						<div class="form-group">
						    <label for="usuario" class="col-lg-3 control-label" >Creado por:</label>
						    <h6 id="usuario" class="col-lg-9 text-left" >M.C. Pablo Zamarripa</h6>
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


		<div class="modal fade bs-example-modal-lg edicion" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="infoUsuario">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones">Editar informaci&oacute;n de Notificaci&oacute;n</h5>
		      		<form class="form-horizontal" role="form">
					  
					  <div class="form-group">
					    <label for="identificador" class="col-lg-2 control-label">Asunto:</label>
					    <div class="col-lg-10">
					      <input type="text" class="form-control" id="identificador" placeholder="Ingresa el asunto de la notifiaci&oacute;n" required title="Ingresa el nombre del plantel">
					    </div>
					  </div>

					  <div class="form-group">
					  		<label for="descripcion" class="col-lg-2 control-label">Descripci&oacute;n:</label>
					  		<div class="col-lg-10">
					    	<textarea class="form-control resizable" id="descripcion" rows="3" required title="Ingresa la direcci&oacute;n del plantel"></textarea>
					    	</div>
					  </div>

				      <div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Destino:</label>
					    <div class="col-lg-10">
					      <select name="" id="" class="form-control">
					      		<option>Todos los planteles</option>
					      		<option>Escuela de nivel superior</option>
						      	<option>Escuela de nivel medio superior</option>
						      	<option>Plantel Administrativo</option>
								<option>Cendis</option>
					      </select>
					    </div>
					  </div>
					
					<div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Tipo:</label>
					    <div class="col-lg-10">
					      <select name="" id="" class="form-control">
					      		<option class="warning">Prevenci&oacute;n</option>
					      		<option class="info"> Informativo</option>
						      	<option class="danger">Alta seguridad</option>
					      </select>
					    </div>
					</div>
					
					<div class="form-group">
						<label for="medio" class="col-lg-3 control-label">Medio de difusi&oacute;n:</label>
						<div class="checkbox col-lg-9">
						  <label>
						    <input type="checkbox" value="" id="medio" name="medio" required>
						    Aplicaci&oacute;n m&oacute;vil
						  </label>
						  <label>
						    <input type="checkbox" value="" id="medio" name="medio">
						    Twitter
						  </label>
						  <label>
						    <input type="checkbox" value="" id="medio">
						    Facebook
						  </label>
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
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
		  </div>
		</div>

        <!--Script para eliminar-->
          <script>
	        $("button.eliminar").click(function(e) {
			    e.preventDefault();
			    bootbox.confirm("¿ Desea eliminar el registro?", function(confirmed) {
			        console.log("El resultado fue: "+confirmed);
			        if(confirmed==false){

			        }
			        else{
			        	bootbox.alert("Se ha eliminado la notificaci&oacute;n con &eacute;xito", function(e) {
						  console.log("El resultado fue true");
						  //C&oacute;digo para eliminar al usuario

						});
			        }
			    });
			});
	    </script>

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
        </div>
</body>
</html>