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
		
	<title>SISAP - Registrar denuncia</title>
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
		<h3 class="text-center">Registrar denuncia</h3>
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
                                    <form class="form-horizontal" role="form" action="../ServletRegistrarDenuncia" method="post">
						<div class="form-group">
							<label for="Nombre" class="col-lg-3 control-label">Persona agraviada:</label>
							<div class="col-lg-9">
                                                            <input type="text" class="form-control" id="denunciante" name="denunciante" placeholder="Identificador del denunciante" required>
							</div>
						</div>

						<div class="form-group">
						    <label for="institucion" class="col-lg-3 control-label">¿Qué sucedio?</label>
							    <div class="col-lg-9">
							      <select name="que" id="que" class="form-control">
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
                                                <input id="cuando" name="cuando" type="text" class="date-picker form-control" required/>
				                <label for="fecha" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>
				                </label>
				            </div>
				        </div>
				   	  </div>

				   	  <div class="form-group">
							<label for="Como" class="col-lg-3 control-label">¿C&oacute;mo sucedio?</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="como" name="como" placeholder="Describe brevemente la situaci&oacute;n" required>
							</div>
						</div>

						<div class="form-group">
							<label for="donde" class="col-lg-3 control-label">¿Donde sucedio?</label>
							<div class="col-lg-9">
						      <select name="plantel" id="plantel" class="form-control">
                                                                <option value="1">ESCOM</option>
						      		<option value="2">UPITA</option>
                                                                <option value="3">ESIME ZACATENCO</option>
                                                                <option value="4">ESIA ZACATENCO</option>
                                                                <option value="5">UPIBI</option>
						      </select>
						    </div>
						</div>

						 <div class="form-group">
							<label for="quien" class="col-lg-3 control-label">¿Conoce al ofensor?</label>
							<div class="col-lg-9">
						      <select name="conoce" id="" class="form-control">
                                                                <option value="0">SI</option>
                                                                <option value="1">NO</option>
						      </select>
						      <input type="text" class="form-control" id="quien" placeholder="Nombre completo del ofensor" disabled>
						    </div>
						</div>
                                        
                                                <div class="form-group">
							<label for="donde" class="col-lg-3 control-label">Estado</label>
							<div class="col-lg-9">
						      <select name="estado" id="estado" class="form-control">
                                                                <option value="Pendiente">Pendiente</option>
						      		<option value="En curso">En curso</option>
                                                                <option value="Resuelto">Resuelto</option>
						      </select>
						    </div>
						</div>

						<!--<div class="form-group">
							<label for="porque" class="col-lg-3 control-label">Â¿Por qu&eacute; sucedio?</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="porque" placeholder="Describa la cuasa del incidente delictivo" >
							</div>
						</div>

						<div class="form-group">
							<label for="paraque" class="col-lg-3 control-label">Â¿Para qu&eacute;?</label>
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
		    bootbox.confirm("Â¿Desea cancelar la operaci&oacute;n?", function(confirmed) {
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