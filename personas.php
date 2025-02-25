<?php
$connection = mysqli_connect("localhost", "root", "", "informacion_personas");

$consulta = "SELECT * FROM personas;";

$r = mysqli_query($connection, $consulta);

if ($r && mysqli_num_rows($r) > 0) {
    echo "<table border='1'>
        <tr>
            <th>IDpersona</th>
            <th>Nombre</th>
            <th>DNI</th>
        </tr>";

while ($fila = mysqli_fetch_assoc($r)) {
        echo "<tr>
                <td>{$fila['IDpersona']}</td>
                <td>{$fila['Nombre']}</td>
                <td>{$fila['DNI']}</td>
              </tr>";
        }

        echo "</table>";
} else {
        echo "No se encontró ninguna persona.";
}