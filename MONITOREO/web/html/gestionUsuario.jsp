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
	<title>SISAP - Gesti&oacute;n usuario</title>
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
		<h3 class="text-center">Gesti&oacute;n usuario</h3>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-10">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
									<th class="element">Correo</th>
									<th>Nombre</th>
									<th class="element">Plantel</th>
									<th class="element">Tipo</th>
									<th class="element">Ver</th>
									<th class="element">Editar</th>
									<th class="element">Eliminar</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>ghrodriguez@ipn.com.mx</td>
									<td>Gerar Haran Rodr&iacute;guez Molina</td>
									<td>ESCOM</td>
									<td>Estudiante</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href=".info">
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
									<td>afalcon@ipn.com.mx</td>
									<td>Nallely Aiko Falc&oacute;n Lozada</td>
									<td>ESCOM</td>
									<td>Estudiante</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href=".info">
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
									<td>aespina@ipn.com.mx</td>
									<td>Arturo Jonathan Espina Vieyra</td>
									<td>ESCOM</td>
									<td>Estudiante</td>
									<td>
										<a role="button" data-toggle="modal" class="btn btn-warning" href=".info">
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
				<div class="col-xs-4"></div>
				<div class="col-xs-4">
					<form action="" class="form-horizontal">
					<div class="form-group" id="botones">
					    <div class="form-group" id="botones">
					    <div class="col-lg-offset-1 col-lg-1">
					      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
					    </div>
					    <div class="col-lg-offset-5 col-lg-1">
					      <button type="submit" class="btn btn-success">Aceptar</button>
					    </div>
					  </div>
					</div>
				</form>
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

        </div>
<!--Ver Ventanas modales-->
		<div class="modal fade bs-example-modal-lg info" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="infoUsuario">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones">Informaci&oacute;n del usuario</h5>
		      		<div id="infoUsuario"></div>
		      	</div>
		      	<div class="col-xs-1"></div>
		      </div>
		    </div>
		  </div>
		</div>

		
<!-- Editar Ventanas modales-->
		<div class="modal fade bs-example-modal-lg edicion" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="row" id="infoUsuario">
		      	<div class="col-xs-1"></div>
		      	<div class="col-xs-10">
		      		<h5 id="instrucciones">Editar informaci&oacute;n de usuario</h5>
                                <div id="updateUsuario"></div>
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
			    bootbox.confirm("Â¿ Desea eliminar al usuario?", function(confirmed) {
			        console.log("El resultado fue: "+confirmed);
			        if(confirmed==false){

			        }
			        else{
			        	bootbox.alert("Se ha eliminado el usuario", function(e) {
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
            
            <!--Script para Ver-->
            <script>
                function ver() {
                    idUsuario = $('#idUsuario').val();
                    $.post('../ServletVerUsuario', {
                        idUsuario: idUsuario
                    }, function (responseText) {
                        $('#infoUsuario').html(responseText);
                    });
                }
            </script>
            
            <script>
                function editar(idUsuario) {
                    $.post('../ServletEditarUsuario', {
                        idUsuario: idUsuario
                    }, function (responseText) {
                        $('#updateUsuario').html(responseText);
                    });
                }
            </script>
</body>
</html>