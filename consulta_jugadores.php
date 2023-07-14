<?php 
	require('funciones/consultaequipoestadio.php');
	require('funciones/consultajugadores.php');
	require('funciones/consultademarcaciones.php');

	//inicializar variables del documento html
	$jugadores = [];

	//recuperar el código del equipo de la URL
	$cod_equipo = $_GET['equipo'] ?? null;

	//validar código de equipo con formato correcto
	if (empty($cod_equipo) || !is_numeric($cod_equipo) || $cod_equipo <= 0) {
		//redirigir a la pantalla de consulta de equipos
		header ("Location: consulta_equipos.php");
	}

	//recuperar el codigo de demarcacion seleccionado en la combo

	$cod_demarcacion = $_GET['demarcacion'] ?? null;

	try {
		//incorporar el fichero de conexión
		require('funciones/conexion.php');

		//consulta de las demarcaciones para cpnfecionar las opciones de la combo

		$demarcaciones = consultaDemarcaciones();

		//Consulta de los datos del equipo y estadio
		$equipo_estadio = consultaEquipoEstadio($cod_equipo);

		//consulta de los jugadores
		$jugadores = consultaJugadores($cod_equipo,$cod_demarcacion);

	} catch (Exception $e) {
		$mensajes = $e->getMessage();
	}	
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="css/futbol.css">
</head>
<body>
	<div class="container">
		<h2 style="text-align:center">JUGADORES DE PRIMERA DIVISION</h2>
		<h2 style='text-align:center'><?php echo $equipo_estadio['nombre_equipo'] ?? null;?></h2>

		<div id='imagenes'>
			<img src="img/equipos/<?php echo $equipo_estadio['foto_equipo'] ?? null;?>">
			<img width='5%' src="img/equipos/<?php echo $equipo_estadio['foto_escudo'] ?? null;?>">
			<img src="img/equipos/<?php echo $equipo_estadio['foto_estadio'] ?? null;?>" title="<?php echo $equipo_estadio['nombre_estadio'] ?? null;?>">
		</div>
		<form action="#">	
			<input type="hidden" name="equipo" 
			value ='<?php echo $cod_equipo;?>'>
			<select name="demarcacion" id='demarcacion' onchange='this.form.submit()'>
				<option value="">TODAS</option>
				<?php 
			foreach ($demarcaciones as $demarcacion) {
				if ($cod_demarcacion == $demarcacion['cod_demarc']) {
				
				echo "<option selected value='$demarcacion[cod_demarc]'>$demarcacion[demarcacion]</option>";
			} else {
				echo "<option value='$demarcacion[cod_demarc]'>$demarcacion[demarcacion]</option>";
				
			}
		
		}

		?>
			</select>
		</form>
		<br><br>
		<?php 
			foreach ($jugadores as $jugador) {
				echo "<div id='jugadores'>";
				echo "<p title='$jugador[descripcion]'>";
				echo "$jugador[numero_camiseta] $jugador[nombre] $jugador[apellidos]";
				echo "</p>";
				echo "</div>";
			}
		?>
		<p class='mensajes'><?php echo $mensajes ?? null;?></p>
		<hr>
		<center>
			<a href="consulta_equipos.php">Volver a selección de equipos</a>
		</center><br><br>
		<iframe width="1000" height="600" frameborder="0" name="calidades"></iframe>
	</div>
</body>
</html>