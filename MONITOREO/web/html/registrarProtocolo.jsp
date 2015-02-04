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
	<title>SISAP - Registrar protocolo</title>
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
		<h3 class="text-center">Registrar protocolo</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
                                    <form class="form-horizontal" role="form" action="../ServletRegistrarProtocolo" method="post">
						<div class="form-group">
							<label for="nombre" class="col-lg-3 control-label">Nombre:</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="nombre" placeholder="Nombre del protocolo" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">Tipo</label>
							    <div class="col-lg-9">
							      <select name="proto" id="proto" class="form-control">
                                                                  <option value="Seguridad">Seguridad</option>
                                                                  <option value="Emergencia Medica">Emergencia Medica</option>
							      </select>
							    </div>
					  	</div>

					  	<div class="form-group">
							<label for="descripcion" class="col-lg-3 control-label">Descripci&oacute;n:</label>
							<div class="col-lg-9">
                                                            <textarea type="text" class="form-control" name="descripcion" id="descripcion" placeholder="Descripcion del protocolo" required> </textarea>
							</div>
						</div>

						<div class="form-group">
							<label for="version" class="col-lg-3 control-label">Objetivo:</label>
							<div class="col-lg-9">
                                                            <input type="text" class="form-control" id="objetivo" name="objetivo" placeholder="Objetivo" required>
							</div>
						</div>

						<div class="form-group">
							<label for="version" class="col-lg-3 control-label">Versi&oacute;n:</label>
							<div class="col-lg-9">
                                                            <input type="text" class="form-control" id="version" name="version" placeholder="1.0" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">Aprobado:</label>
							    <div class="col-lg-9">
							      <select name="aprobado" id="aprobado" class="form-control">
							      		<option value="true">Si</option>
							      		<option value="false">No</option>
							      </select>
							    </div>
					  	</div>

					  	<div class="form-group">
							<label for="leyes" class="col-lg-3 control-label">Leyes aplicadas:</label>
							<div class="col-lg-9">
                                                            <input type="text" class="form-control" name="leyes" id="leyes" placeholder="Art. 4, Frac. II, Art. 6 Frac. IV">
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
				<div class="col-xs-2"></div>	
			</div>
		</div>
		<!-- Pie de pagina -->
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

	    <!--Ventana modal para infromacion de la alerta-->
		<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="numberAct">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content" id="description">
		      <div class="row" id="">
		      	<div class="col-xs-3"></div>
		      	<div class="col-xs-6">
		      		<br>
		      		<br>
		      		<h5 id="instrucciones" class="text-center"><strong>Registro de actividades</strong></h5>
		      		<br>
		      		<form class="form-horizontal" role="form" action="">
		      			<div class="form-group">
						    <div class="form-group">
							    <label for="nameAct" class="col-lg-3 control-label">Nombre:</label>
							    <div class="col-lg-9">
							      <input type="text" min="1" name="nameAct" class="form-control" id="nameAct" required title="Ingresa el nombre de la actividad o">
							    </div>
							  </div>
							<div class="form-group">
							    <label for="descAct" class="col-lg-3 control-label">Descripci&oacute;n:</label>
							    <div class="col-lg-9">
							      <input type="text" min="1" name="descAct" class="form-control" id="descAct" required title="Ingresa el nombre de la actividad o">
							    </div>
							</div>  
							<div class="form-group">
							    <label for="prioridadAct" class="col-lg-3 control-label">Prioridad:</label>
							    <div class="col-lg-9">
									<select name="" id="" class="form-control">
								      		<option value="Alta">Alta</option>
									      	<option value="Media">Media</option>
									      	<option value="Baja">Baja</option>
								      </select>
							    </div>
							</div>  
							<div class="form-group">
							    <label for="prioridadAct" class="col-lg-3 control-label">Tipo:</label>
							    <div class="col-lg-9">
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
							    <div class=" col-lg-1">
							      <a class="btn btn-danger confirm" href="#" onclick="bootbox.confirm();">Cancelar</a>
							    </div>
							    <div class="col-lg-offset-4 col-lg-1">
							      <a role="button" data-toggle="modal" class="btn btn-info" href="#numberAct">Agregar recurso</a>
							    </div>
							    <div class="col-lg-offset-5 col-lg-1">
							      <a role="button" data-toggle="modal" class="btn btn-success" href="#numberAct">Finalizar</a>
							    </div>
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