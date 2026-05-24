<?php

$host = "localhost";
$user = "root";
$password = "";
$dbname = "db_dontono";
$conn = new mysqli($host, $user, $password, "db_dontono");

if ($conn->connect_error) {
    die("Error de conexión". $conn->connect_error);
}

$conn->set_charset("utf8mb4");

?>