<?php
$id=100;
// Conexión a la base de datos
   $db = new PDO("mysql:host=localhost;dbname=recursos_multimedia", "root", "");
   // Consulta a la base de datos
   $query = "SELECT * FROM recursos_multimedia WHERE id = :id";
   $statement = $db->prepare($query);
   $statement->bindParam(":id", $id);
   $statement->execute();
   // Obtenemos el recurso
   $resource = $statement->fetch();
    // Mostramos el recurso en json
   echo json_encode($resource);