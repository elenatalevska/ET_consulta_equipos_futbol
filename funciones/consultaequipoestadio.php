<?php 

    function consultaEquipoEstadio($cod_equipo) {
        //variable de conexión
       global $conexionFutbol;

        //confeccionar la consulta de las tablas equipo y estadio utilizando un JOIN
        $sql = "SELECT a.nombre AS nombre_equipo, a.foto_equipo, a.foto_escudo, b.nombre AS nombre_estadio, b.foto_estadio  
                FROM equipo AS a INNER JOIN estadio AS b
                ON a.equipo_cod = b.equipo_cod
                WHERE a.equipo_cod = $cod_equipo";

        //trasladar la sentencia al SGBD
        if (!$consulta = mysqli_query($conexionFutbol, $sql)) {
            throw new Exception(mysqli_error($conexionFutbol));
        }

        //extraer las filas de la tabla
        $equipo_estadio = mysqli_fetch_assoc($consulta);

        //retornar el array
        return $equipo_estadio;

    }