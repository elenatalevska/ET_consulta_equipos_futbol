<?php 

    function consultaDemarcaciones() {
        //variable de conexión
        global $conexionFutbol;

        //confeccionar la consulta
        $sql = "SELECT * FROM posicion ORDER BY demarcacion";

        //trasladar la sentencia al SGBD
        if (!$consulta = mysqli_query($conexionFutbol, $sql)) {
            throw new Exception(mysqli_error($conexionFutbol));
        }

        //extraer las filas de la tabla
        return mysqli_fetch_all($consulta, MYSQLI_ASSOC);

      
    }
    ?>