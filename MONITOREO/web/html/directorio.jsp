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
		<h3 class="text-center">Directorio de autoridades</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<form class="form-horizontal" role="form">

				      <div class="form-group">
					    <label for="institucion" class="col-lg-2 control-label">Plantel:</label>
					    <div class="col-lg-10">
					      <select name="" id="" class="form-control">
					      	<option>Todo</option>
					      	<option>ESCOM</option>
					      	<option>ESIA</option>
					      	<option>ESIA Tecamachalco</option>
							<option>ESIME TICOMAN</option>
					      </select>
					    </div>
					  </div>

					  <div class="form-group">
					    <label for="tipo" class="col-lg-2 control-label">Tipo:</label>
					    <div class="col-lg-10">
					      <select name="" id="tipo" class="form-control">
					      	<option value="">Todo</option>
					      	<option value="">Robo a mano armada</option>
					      	<option value="">Abuso de drogras</option>
					      	<option value="">Accidentes</option>
							<option value="">Lesiones</option>
					      </select>
					    </div>
					  </div>

					  <div class="form-group" id="botones">
					    <div class="text-center">
					      <a href="#resultado"  class="btn btn-info" role="button" data-toggle="modal" data-target="">Buscar</a>
					    </div>
					  </div>
					</form>
				</div>
				</div>

				<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="resultado">
		  			<div class="modal-dialog modal-lg">
		    			<div class="modal-content">
							<div class="row">
								<div class="col-xs-2"></div>
								<div class="table-responsive col-xs-8">
								<h4 class="text-center">Resultado de b&uacute;squeda</h4>
									<table class="table table-hover bordered">
										<thead>
											<tr>
												<th>Plantel</th>
												<th>Nombre</th>
												<th>Puesto</th>
												<th>Tel&eacute;fono</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>ESCOM</td>
												<td>Rocio Sanch&eacute;s Flores</td>
												<td>Encargado COSECOVI</td>
												<td>12345218  Ext.067</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-xs-2"></div>
							</div>
							<div class="form-group" id="botones">
							    <div class="text-center">
							      <a href="" class="btn btn-success">Aceptar</a>
							    </div>
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

        </div>
</body>
</html>