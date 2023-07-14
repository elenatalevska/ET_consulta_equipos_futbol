<?php 

    function consultaJugadores($cod_equipo,$cod_demarcacion) {
        //variable de conexión
        global $conexionFutbol;

        //confeccionar la consulta en funcion de si el codigo de 
        //dematcacion llega vacio o informado
        if (empty($cod_demarcacion)) {
        $sql = "SELECT * FROM jugador
         WHERE equipo_cod = $cod_equipo 
         ORDER BY nombre, apellidos";
        } else {
            $sql = "SELECT * FROM jugador
            WHERE equipo_cod = $cod_equipo 
            AND demarcacion = $cod_demarcacion
            ORDER BY nombre, apellidos";
        }

        //trasladar la sentencia al SGBD
        if (!$consulta = mysqli_query($conexionFutbol, $sql)) {
            throw new Exception(mysqli_error($conexionFutbol));
        }

        //comprobar si la consulta nos devuelve alguna fila
        if ($consulta->num_rows == 0) {
            throw new Exception("Sin datos");
        }

        //extraer las filas de la tabla
        $jugadores = mysqli_fetch_all($consulta, MYSQLI_ASSOC);

        //retornar el array
        return $jugadores;

    }
    ?>