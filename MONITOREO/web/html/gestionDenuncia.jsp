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
  		<script src="../js/bootbox.min.js"></script>
  		<script src="../js/jquery.remodal.js"></script>
        <link rel="stylesheet" href="../css/jquery.remodal.css">
	<title>SISAP - Gesti&oacute;n Plantel</title>
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
		<h3 class="text-center">Gesti&oacute;n Plantel</h3>
			<div class="row">
				<div class="col-xs-12">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="element text-center">Id. Denuncia</th>
									<th class="text-center">Agraviado</th>
									<th class="text-center">Fecha</th>
									<th class="text-center">Tipo</th>
									<th class="text-center">Plantel</th>
									<th class="element text-center">Estado</th>
									<th class="element text-center">Historial</th>
									<th class="element text-center">Ver</th>
									<th class="element text-center">Editar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>#45671</td>
									<td>Jos&eacute; Gonzalez Perez</td>
									<td>7/09/14, 2:56</td>
									<td>Robo, Asalto, Atraco</td>
									<td>ESIME Ticoman</td>
									<td>Sin atender</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#history">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-default" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#editDenuncia">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
								</tr>
								<tr>
									<td>#45671</td>
									<td>Jos&eacute; Gonzalez Perez</td>
									<td>7/09/14, 2:56</td>
									<td>Robo, Asalto, Atraco</td>
									<td>ESIME Ticoman</td>
									<td>Sin atender</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#history">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-default" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#editDenuncia">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
									</td>
								</tr>
								<tr>
									<td>#45671</td>
									<td>Jos&eacute; Gonzalez Perez</td>
									<td>7/09/14, 2:56</td>
									<td>Robo, Asalto, Atraco</td>
									<td>ESIME Ticoman</td>
									<td>Sin atender</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="text-center btn btn-warning" href="#history">
									      <span class="glyphicon glyphicon-th-list text-center"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-default" href="#info">
									      <span class="glyphicon glyphicon-search"></span>
									    </a>
									</td>
									<td class="text-center">
										<a role="button" data-toggle="modal" class="btn btn-primary" href="#editDenuncia">
									      <span class="glyphicon glyphicon-pencil"></span>
									    </a>
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


		<!--Ventana modal para infromacion de la denuncia-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="editDenuncia">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		     	<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
				<h5 id="instrucciones" class="text-center"><strong>Editar denuncia</strong></h5>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="Nombre" class="col-lg-3 control-label">Persona agraviada:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="Nombre" placeholder="Nombre completo del afectado" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">¿Que sucedio?</label>
							    <div class="col-lg-9">
							      <select name="" id="" class="form-control">
							      		<option value="1">Robo, Atraco, Asalto</option>
							      		<option value="2">Vandalismo, Da&ntilde;o</option>
							      		<option value="3">Agresi&oacute;n</option>
										<option value="4">Agresi&oacute;n sexual</option>
										<option value="5">Acoso Escolar</option>
										<option value="6">Pelea entre grupos</option>
										<option value="7">Perdido, Desaparecido</option>
										<option value="8">Alerta de prueba</option>
							      </select>
							    </div>
					  	</div>

					  	 <div class="form-group">
				        <label for="fecha" class="control-label col-lg-3">¿Cuando sucedio?</label>
				        <div class="controls col-lg-9">
				            <div class="input-group">
				                <input id="fecha" type="text" class="date-picker form-control" required/>
				                <label for="fecha" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>
				                </label>
				            </div>
				        </div>
				   	  </div>

				   	  <div class="form-group">
							<label for="Como" class="col-lg-3 control-label">¿C&oacute;mo sucedio?</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="Como" placeholder="Describe brevemente la situaci&oacute;n" required>
							</div>
						</div>

						<div class="form-group">
							<label for="donde" class="col-lg-3 control-label">¿Donde sucedio?</label>
							<div class="col-lg-9">
						      <select name="" id="" class="form-control">
						      		<option>Plantel 1</option>
						      		<option>Plantel 2</option>
						      		<option>Plantel 3</option>
									<option>Plantel 4</option>
									<option>Plantel 5</option>
						      </select>
						    </div>
						</div>

						 <div class="form-group">
							<label for="quien" class="col-lg-3 control-label">Ofensor</label>
							<div class="col-lg-9">
						      <input type="text" class="form-control" id="quien" placeholder="Desconocido">
						    </div>
						</div>

						<!--<div class="form-group">
							<label for="porque" class="col-lg-3 control-label">¿Por qu&eacute; sucedio?</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="porque" placeholder="Describa la cuasa del incidente delictivo" >
							</div>
						</div>

						<div class="form-group">
							<label for="paraque" class="col-lg-3 control-label">¿Para qu&eacute;?</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="paraque" placeholder="Describe brevemente el motivo o fin del incicente" >
							</div>
						</div>-->

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
					      <button type="submit" class="btn btn-success">Aceptar</button>
					    </div>
					  </div>
					</form>
				</div>
				<div class="col-xs-2"></div>	
			</div> 
		    </div>
		  </div>
		</div>

		<!--Ventana modal para editar denuncia-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="info">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		      <div class="row" id="">
		      	<div class="col-xs-3"></div>
		      	<div class="col-xs-6">
		      		<h5 id="instrucciones" class="text-center"><strong>Informaci&oacute;n de la denuncia</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <label for="agraviado" class="col-lg-3 control-label">Persona agraviada:</label>
						    <h6 id="agraviado" name="agraviado" class="col-lg-9 text-left">Marco Polo Navarrete &Aacute;lvarez</h6>
						</div>
						<div class="form-group">
						    <label for="incidente" class="col-lg-3 control-label">Incidente:</label>
						    <h6 id="incidente" class="col-lg-9 text-left">Agresi&oacute;n sexual</h6>
						</div>
						<div class="form-group">
						    <label for="descripcion" class="col-lg-3 control-label">Descripci&oacute;n:</label>
						    <h6 id="descripcion" class="col-lg-9 text-left">Dos tipos de test morena abusaron al agraviado, amenazandolo con armas de fuego dentro de la ESIME Zacatenco</h6>
						</div>
						<div class="form-group">
						    <label for="fecha" class="col-lg-3 control-label">Fecha:</label>
						    <h6 id="fecha" class="col-lg-9 text-left">24/12/2014</h6>
						</div>
						<div class="form-group">
						    <label for="plantel" class="col-lg-3 control-label">Plantel de atenci&oacute;n:</label>
						    <h6 id="plantel" class="col-lg-9 text-left">Direcci&oacute;n General</h6>
						</div>
						<div class="form-group">
						    <label for="ofensor" class="col-lg-3 control-label">Ofensor:</label>
						    <h6 id="ofensor" class="col-lg-9 text-left">Desconocido</h6>
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

		<!--Ventana modal para historial de denuncia-->
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="history">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		      <div class="row" id="">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones" class="text-center"><strong>Informaci&oacute;n de la denuncia</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <label for="agraviado" class="col-lg-3 control-label">Persona agraviada:</label>
						    <h6 id="agraviado" name="agraviado" class="col-lg-9 text-left">Marco Polo Navarrete &Aacute;lvarez</h6>
						</div>
						<div class="form-group">
						    <label for="incidente" class="col-lg-3 control-label">Incidente:</label>
						    <h6 id="incidente" class="col-lg-9 text-left">Agresi&oacute;n sexual</h6>
						</div>
						
						<div class="row">
						<div class="col-xs-12">
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Movimiento</th>
											<th>Descripci&oacute;n</th>
										</tr>
										<tr>
											<td>1</td>
											<td>Registro de la denuncia</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Cambio de estado ha "En proceso"</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Edici&oacute;n de la denuncia</td>
										</tr>
										<tr>
											<td>4</td>
											<td>Cambio de estado ha "Cerrado"</td>
										</tr>
									</thead>
								</table>
							</div>
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
</body>
</html>