<!DOCTYPE html>
<html>

	<head>
	        <meta charset="utf-8" />
	        <title>Page protégée par mot de passe</title>
	</head>

	<body>
	<?php
	try
	{
		$bdd = new PDO('mysql:host=localhost;dbname=musique', 'root', '');
	}
	catch (Exception $e)
	{
	        die('Erreur : ' . $e->getMessage());
	}

	$reponse = $bdd->query('SELECT * FROM chants');

	while ($donnees = $reponse->fetch())
	{
		
	}

	?>

	</body>
</html>