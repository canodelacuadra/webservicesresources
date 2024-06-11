<?php
// Conexión a la base de datos
$db = new PDO("mysql:host=localhost;dbname=recursos_multimedia", "root", "" );

// Consulta a la base de datos
$query = "SELECT * FROM recursos_multimedia";
$result = $db->query($query);
// Obtenemos  los resultados y almacenamos en una variable
$resources = $result->fetchAll();
// Servimos los recursos al cliente
//return $resources;
header('content-type: application/json');
echo json_encode($resources);

