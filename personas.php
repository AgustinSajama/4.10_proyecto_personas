<?php
$connection = mysqli_connect("localhost", "root", "", "informacion_personas");

$consulta = "SELECT * FROM personas;";

$r = mysqli_query($connection, $consulta);