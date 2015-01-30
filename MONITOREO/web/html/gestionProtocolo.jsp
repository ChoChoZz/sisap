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
  		<script src="../js/jquery.remodal.js"></script>
        <link rel="stylesheet" href="../css/jquery.remodal.css">
	<title>SISAP - Gesti&oacute;n de protocolos</title>
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
		<h3 class="text-center">Gesti&oacute;n de Protocolos</h3>
			<div class="row">
				<div class="col-xs-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Nombre</th>
									<th>Tipo</th>
									<th class="element text-center">Versi&oacute;n</th>
									<th class="element text-center">Aprobaci&oacute;n</th>
									<th class="element text-center">Agr. Act.</th>
									<th class="element text-center">Mov. Act.</th>
									<th class="element text-center">Ver</th>
									<th class="element text-center">Editar</th>
									<th class="element text-center">Eliminar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Protocolo de reacci&oacute;n para robo a mano armada</td>
									<td>Seguridad</td>
									<td>1.0</td>
									<td>Si</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-success" href="#addActividad">
									      <span class="glyphicon glyphicon-plus text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#movActividad">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-info" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td class="text-center">
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
								<tr>
									<td>Protocolo de reacci&oacute;n para robo a mano armada</td>
									<td>Seguridad</td>
									<td>1.0</td>
									<td>Si</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-success" href="#addActividad">
									      <span class="glyphicon glyphicon-plus text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#movActividad">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-info" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td class="text-center">
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
								<tr>
									<td>Protocolo de reacci&oacute;n para robo a mano armada</td>
									<td>Seguridad</td>
									<td>1.0</td>
									<td>Si</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-success" href="#addActividad">
									      <span class="glyphicon glyphicon-plus text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#movActividad">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-info" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#edicion">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
									<td class="text-center">
										<button type="button" class="btn btn-danger eliminar">
									      <span class="glyphicon glyphicon-remove"></span>
									    </button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
				    <div class="text-center" id="botones">
				      <a class="btn btn-danger" href="./home.jsp">Cancelar</a>
				    </div>
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
			
		
		<!--Ventanas modales-->
        <!--Ventana modal para infromacion de la alerta-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="info">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		      <div class="row" id="">
		      	<div class="col-xs-3"></div>
		      	<div class="col-xs-6">
		      		<h5 id="instrucciones" class="text-center"><strong>Informaci&oacute;n del Protocolo</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <label for="nombre" class="col-lg-3 control-label">Nombre:</label>
						    <h6 id="nombre" class="col-lg-9 text-left">Protocolo de reacci&oacute;n para robo a mano armada</h6>
						</div>
						<div class="form-group">
						    <label for="tipo" class="col-lg-3 control-label">Tipo:</label>
						    <h6 id="tipo" class="col-lg-9 text-left">Seguridad</h6>
						</div>
						<div class="form-group">
						    <label for="descripcion" class="col-lg-3 control-label">Descripci&oacute;n:</label>
						    <h6 id="descripcion" class="col-lg-9 text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro at culpa, nisi. Labore quod, at unde voluptas quasi odio consectetur voluptatum magnam nam eum? Quod velit delectus in minus. Doloribus. </h6>
						</div>
						<div class="form-group">
						    <label for="objetivo" class="col-lg-3 control-label">Objetivo:</label>
						    <h6 id="objetivo" class="col-lg-9 text-left">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro at culpa, nisi. Labore quod, at unde voluptas quasi odio consectetur voluptatum magnam nam eum? Quod velit delectus in minus. Doloribus. </h6>
						</div>
						<div class="form-group">
						    <label for="version" class="col-lg-3 control-label">Versi&oacute;n:</label>
						    <h6 id="version" class="col-lg-9 text-left">2.0</h6>
						</div>
						<div class="form-group">
						    <label for="aprobacion" class="col-lg-3 control-label">Leyes Aplicadas:</label>
						    <h6 id="aprobacion" class="col-lg-9 text-left">Art. 45 Frac. II, Art. 5 Frac. IV</h6>
						</div>
						<div class="form-group" id="botones">
						    <div class="text-center">
						      <button type="submit" class="btn btn-success">Aceptar</button>
						    </div>
						  </div>
		      		</form>
		      	</div>
		      	<div class="col-xs-3"></div>
		      </div>
		    </div>
		  </div>
		</div>


		<div class="modal fade bs-example-modal-lg" id="edicion" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones" class="text-center"><strong>Editar informaci&oacute;n del protocolo</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="nombre" class="col-lg-3 control-label">Nombre:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="nombre" placeholder="Nombre del protocolo" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">Tipo</label>
							    <div class="col-lg-9">
							      <select name="" id="" class="form-control">
							      		<option>Seguridad</option>
							      		<option>Emergencia Medica</option>
							      </select>
							    </div>
					  	</div>

					  	<div class="form-group">
							<label for="descripcion" class="col-lg-3 control-label">Descripci&oacute;n:</label>
							<div class="col-lg-9">
								<textarea type="text" class="form-control" id="descripcion" placeholder="Descripcion del protocolo" required> </textarea>
							</div>
						</div>

						<div class="form-group">
							<label for="version" class="col-lg-3 control-label">Objetivo:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="version" placeholder="Objetivo" required>
							</div>
						</div>

						<div class="form-group">
							<label for="version" class="col-lg-3 control-label">Versi&oacute;n:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="version" placeholder="1.0" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">Aprobado:</label>
							    <div class="col-lg-9">
							      <select name="" id="" class="form-control">
							      		<option value="true">Si</option>
							      		<option value="false">No</option>
							      </select>
							    </div>
					  	</div>

					  	<div class="form-group">
							<label for="leyes" class="col-lg-3 control-label">Leyes aplicadas:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="leyes" placeholder="Art. 4, Frac. II, Art. 6 Frac. IV">
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
				    </script>
					  <div class="form-group" id="botones">
					    <div class="col-lg-offset-3 col-lg-1">
					      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					    <div class="col-lg-offset-4 col-lg-1">
					      <a role="button" data-toggle="modal" class="btn btn-success" href="#numberAct">Aceptar</a>
					    </div>
					  </div>
					</form>
		      	</div>
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
		  </div>
		</div>

		<div class="modal fade bs-example-modal-lg" id="addActividad" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<div class="row" >
	                <h5 id="instrucciones" class="text-center"><strong>Registro de actividades</strong></h5>
			      		<br>
			      		<form class="form-horizontal" role="form" action="">
			      			<div class="form-group">
							    <div class="form-group">
								    <label for="nameAct" class="col-lg-3 control-label">Nombre:</label>
								    <div class="col-lg-8">
								      <input type="text" min="1" name="nameAct" class="form-control" id="nameAct" required title="Ingresa el nombre de la actividad o">
								    </div>
								  </div>
								<div class="form-group">
								    <label for="descAct" class="col-lg-3 control-label">Descripci&oacute;n:</label>
								    <div class="col-lg-8">
								      <input type="text" min="1" name="descAct" class="form-control" id="descAct" required title="Ingresa el nombre de la actividad o">
								    </div>
								</div>  
								<div class="form-group">
								    <label for="prioridadAct" class="col-lg-3 control-label">Prioridad:</label>
								    <div class="col-lg-8">
										<select name="" id="" class="form-control">
									      		<option value="Alta">Alta</option>
										      	<option value="Media">Media</option>
										      	<option value="Baja">Baja</option>
									      </select>
								    </div>
								</div>  
								<div class="form-group">
								    <label for="prioridadAct" class="col-lg-3 control-label">Tipo:</label>
								    <div class="col-lg-8">
										<select name="" id="" class="form-control">
									      		<option value="envioMedico">Env&iacute;o de doctor</option>
									      		<option value="envioPolicia">Env&iacute;o de polic&iacute;a</option>
									      		<option value="envioPatrulla">Env&iacute;o de patrula</option>
										      	<option value="envioAmbulacia">Env&iacute;o de ambulacia</option>
									      </select>
								    </div>
								</div>

								<br>
								<br>
								<br>
				
								<div class="form-group" id="botones">
								    <div class="col-lg-offset-1 col-lg-1">
								      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
								    </div>
								    <div class="col-lg-offset-7 col-lg-1">
								      <a role="button" data-toggle="modal" class="btn btn-success" href="#numberAct">Agregar</a>
								    </div>
								</div>  
							</div>
			      		</form>
	            </div>
		      	</div>
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
		  </div>
		</div>

		<div class="modal fade bs-example-modal-lg" id="movActividad" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones" class="text-center"><strong>Gesti&oacute;n de recursos</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form">
		      			<h4>Personal</h4>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Nombre</th>
										<th>Tipo</th>
										<th>Prioridad</th>
										<th>Tiempo de respuesta</th>
										<th>Editar</th>
										<th>Eliminar</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Oficial de seguridad para entrada principal</td>
										<td class="text-center">Polic&iacute;a</td>
										<td class="text-center">Media</td>
										<td class="text-center">5 min.</td>
										<td class="text-center">
											<a role="button" class="btn btn-primary" href="#edicionRecurso">
										      <span class="glyphicon glyphicon-pencil"></span>
										    </a>
										</td>
										<td class="text-center">
											<button type="button" class="btn btn-danger eliminar1">
										      <span class="glyphicon glyphicon-remove"></span>
										    </button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
					<form class="form-horizontal" role="form">
						<h4>Vehiculos</h4>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Nombre</th>
										<th>Tipo</th>
										<th>Prioridad</th>
										<th>Tiempo de respuesta</th>
										<th>Editar</th>
										<th>Eliminar</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Patrulla Charger 0R13T </td>
										<td class="text-center">Patrulla</td>
										<td class="text-center">Alta</td>
										<td class="text-center">1 min.</td>
										<td class="text-center">
											<a role="button" class="btn btn-primary" href="#edicionRecurso">
										      <span class="glyphicon glyphicon-pencil"></span>
										    </a>
										</td>
										<td class="text-center">
											<button type="button" class="btn btn-danger eliminar1">
										      <span class="glyphicon glyphicon-remove"></span>
										    </button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
		      	</div>
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
		  </div>
		</div>


		<!-- Ventana Modal para edicion de Recursos -->
		<div class="remodal" data-remodal-id="edicionRecurso">
            <h2>Editar Actividad</h2>
            <div class="row" >
                <h5 id="instrucciones" class="text-center"><strong>Registro de actividades</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <div class="form-group">
							    <label for="nameAct" class="col-lg-3 control-label">Nombre:</label>
							    <div class="col-lg-8">
							      <input type="text" min="1" name="nameAct" class="form-control" id="nameAct" required title="Ingresa el nombre de la actividad o">
							    </div>
							  </div>
							<div class="form-group">
							    <label for="descAct" class="col-lg-3 control-label">Descripci&oacute;n:</label>
							    <div class="col-lg-8">
							      <input type="text" min="1" name="descAct" class="form-control" id="descAct" required title="Ingresa el nombre de la actividad o">
							    </div>
							</div>  
							<div class="form-group">
							    <label for="prioridadAct" class="col-lg-3 control-label">Prioridad:</label>
							    <div class="col-lg-8">
									<select name="" id="" class="form-control">
								      		<option value="Alta">Alta</option>
									      	<option value="Media">Media</option>
									      	<option value="Baja">Baja</option>
								      </select>
							    </div>
							</div>  
							<div class="form-group">
							    <label for="prioridadAct" class="col-lg-3 control-label">Tipo:</label>
							    <div class="col-lg-8">
									<select name="" id="" class="form-control">
								      		<option value="envioMedico">Env&iacute;o de doctor</option>
								      		<option value="envioPolicia">Env&iacute;o de polic&iacute;a</option>
								      		<option value="envioPatrulla">Env&iacute;o de patrula</option>
									      	<option value="envioAmbulacia">Env&iacute;o de ambulacia</option>
								      </select>
							    </div>
							</div>

							<br>
							<br>
							<br>
			
							<div class="form-group" id="botones">
							    <div class="col-lg-offset-1 col-lg-1">
							      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
							    </div>
							    <div class="col-lg-offset-7 col-lg-1">
							      <a role="button" data-toggle="modal" class="btn btn-success" href="#numberAct">Agregar</a>
							    </div>
							</div>  
						</div>
		      		</form>
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

	     <!--Script para eliminar-->
          <script>
	        $("button.eliminar1").click(function(e) {
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

        </div>
</body>
</html>