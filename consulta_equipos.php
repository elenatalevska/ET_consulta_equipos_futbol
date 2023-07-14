<?php 
	require('funciones/consultaequipos.php');

	try {
		$equipos = consultaEquipos();
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
		<h2 style="text-align:center">EQUIPOS DE PRIMERA DIVISION</h2>		
		<?php 
			//confeccionar las tablas de equipos
			foreach ($equipos as $equipo) {
				echo "<table class='equipos' border='1'>";
				echo "<tr>";
				echo "<td class='escudo' rowspan='3'>";
					echo "<a href='consulta_jugadores.php?equipo=$equipo[equipo_cod]'>";
						echo "<img src='img/equipos/$equipo[foto_escudo]'>";
					echo "</a>";
				echo "</td>";
				echo "<td>Nombre: $equipo[nombre]</td>";
				echo "</tr>";
				echo "<tr>";
				echo "<td>Fundación: $equipo[fundacion]</td>";
				echo "</tr>";
				echo "<tr>";
				echo "<td>Presidente: $equipo[presidente]</td>";
				echo "</tr>";
				echo "</table>";
			}
		?>
		<p class='mensajes'><?php echo $mensajes ?? null;?></p>
	</div>
</body>
</html>