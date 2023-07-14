<?php 

    function consultaEquipos() {
        //variable de conexión
        require('conexion.php');

        //confeccionar la consulta
        $sql = "SELECT * FROM equipo ORDER BY nombre";

        //trasladar la sentencia al SGBD
        if (!$consulta = mysqli_query($conexionFutbol, $sql)) {
            throw new Exception(mysqli_error($conexionFutbol));
        }

        //extraer las filas de la tabla
        $equipos = mysqli_fetch_all($consulta, MYSQLI_ASSOC);

        //retornar el array
        return $equipos;

    }
    ?>