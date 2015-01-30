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
		<h3 class="text-center">Monitor de denuncias</h3>
		<div class="table-responsive" id="tmonitor">
			<table class="table table-hover">
				<thead>
					<tr >
						<th class="text-rigth">Id denuncia</th>
						<th class="text-rigth">Tipo</th>
						<th class="text-rigth">Plantel</th>
						<th class="text-rigth">Agraviado</th>
						<th class="text-rigth">Fecha</th>
						<th class="text-rigth">Estado</th>
					</tr>
				</thead>
				<tbody>
					<tr class="warning">
						<td> <a role="button" data-toggle="modal" href="#info">#45671</a></td>
						<td>Robo a mano armada</td>
						<td>ESIME Ticoman</td>
						<td>Jos&eacute; Gonzalez Perez</td>
						<td>7/09/14, 2:40</td>
						<td>En proceso</td>
					</tr>
					<tr class="info">
						<td><a role="button" data-toggle="modal" href="#info">#11445</a></td>
						<td>Consumo de drogas</td>
						<td>ESIA Zacatenco</td>
						<td>Mireya Suarez Millan</td>
						<td>7/09/14, 2:45</td>
						<td>Sin atender</td>
					</tr>
                    <tr class="danger">
						<td><a role="button" data-toggle="modal" href="#info">#45671</a></td>
						<td>Robo a mano armada</td>
						<td>ESIME Ticoman</td>
						<td>Jos&eacute; Gonzalez Perez</td>
						<td>7/09/14, 2:56</td>
						<td>Sin atender</td>
					</tr>
                        <tr class="warning">
						<td><a role="button" data-toggle="modal" href="#info">#45671</a></td>
						<td>Robo a mano armada</td>
						<td>ESIME Ticoman</td>
						<td>Jos&eacute; Gonzalez Perez</td>
						<td>7/09/14, 2:40</td>
						<td>En proceso</td>
					</tr>
					<tr class="info">
						<td><a role="button" data-toggle="modal" href="#info">#11445</a></td>
						<td>Consumo de drogas</td>
						<td>ESIA Zacatenco</td>
						<td>Mireya Suarez Millan</td>
						<td>7/09/14, 2:45</td>
						<td>Sin atender</td>
					</tr>
                    <tr class="danger">
						<td><a role="button" data-toggle="modal" href="#info">#45671</a></td>
						<td>Robo a mano armada</td>
						<td>ESIME Ticoman</td>
						<td>Jos&eacute; Gonzalez Perez</td>
						<td>7/09/14, 2:56</td>
						<td>Sin atender</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-offset-4 col-lg-offset-4 col-xs-offset-0 col-sm-offset-0">
			<ul class="pagination">
			  <li class="disabled"><a href="#">&laquo;</a></li>
			  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
			   <li><a href="#">2</a></li>
			   <li><a href="#">3</a></li>
			   <li><a href="#">4</a></li>
			   <li><a href="#">5</a></li>
			   <li><a href="#">6</a></li>
			   <li><a href="#">7</a></li>
			   <li><a href="#">8</a></li>
			   <li><a href="#">&raquo;</a></li>
			</ul>
			</div>
		</div>

		<!--Ventana modal para infromacion de la alerta-->
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
</body>
</html>