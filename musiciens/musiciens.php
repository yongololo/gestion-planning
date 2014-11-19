<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Déclaration des musiciens</title>
	</head>
	
	<body>

	<?php

	if (($_POST['musicien']) AND ($_POST['instrument'])){
		echo "<p>POST musicien : " . $_POST['musicien'] . "</p>";
		echo "<p>POST instrument : " . $_POST['instrument'] . "</p>";
		//INSERT INTO `musique`.`personnes_instruments` (`id_personnes`, `id_instruments`) VALUES ('2', '2');
	}	

	// Connexion à la base
	$bdd = new PDO('mysql:host=localhost;dbname=musique', 'root', '') or die(mysql_error());

	// Requete pour populer la liste
	$liste_musiciens = $bdd->query('SELECT id, prenom, nom FROM personnes ORDER BY prenom, nom') or die(mysql_error());
	$liste_instruments = $bdd->query('SELECT id, nom FROM instruments ORDER BY nom') or die(mysql_error());

	// Formulaire
	?>
	<form action="musiciens.php" method="post">

	<?php
	// Liste déroulante musiciens
	echo "<p><label>Musiciens : <select name='musicien'>";
	while ( $musicien = $liste_musiciens->fetch()) 
	{
		echo '<option value=\'' . $musicien['id'] . '\'>' . htmlspecialchars($musicien['prenom']) . ' ' . htmlspecialchars($musicien['nom']) . '</option>';
	}
	echo "</select></label></p>";
	$liste_musiciens->closeCursor();

	// Liste déroulante instruments
	echo "<p><label>Instruments : <select name='instrument'>";
	while ( $instrument = $liste_instruments->fetch())
	{
		echo '<option value=\'' . $instrument['id'] . '\'>' . htmlspecialchars(utf8_encode($instrument['nom'])) . '</option>';
	}
	echo "</select></label></p>";
	$liste_instruments->closeCursor();	

	?>

	<p><input type="submit" /></p>
	</form>

	<?php
		$liste_musiciens_instruments = $bdd->query('SELECT i.nom, p.prenom\
			FROM personnes AS p, instruments AS i, personnes_instruments AS p_i\
			WHERE p_i.id_instruments = i.id AND p_i.id_personnes = p.id') or die(mysql_error());
		/*
		SELECT i.nom, p.prenom 
		FROM personnes AS p, instruments AS i, personnes_instruments AS p_i
		WHERE p_i.id_instruments = i.id AND p_i.id_personnes = p.id
		*/
	?>

	</body>

</html>