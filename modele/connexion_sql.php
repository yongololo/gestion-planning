<?php

// Connexion à la base
$bdd = new PDO('mysql:host=localhost;dbname=musique', 'root', '') or die(mysql_error());
$bdd->exec("SET CHARACTER SET utf8");

?>
