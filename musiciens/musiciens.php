<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Déclaration des musiciens</title>
		<link rel="stylesheet" type="text/css" href="styles.css">
	</head>
	
	<body>

	<?php

	if (($_POST['musicien']) AND ($_POST['instrument'])){
		echo "<p>POST musicien : " . $_POST['musicien'] . "</p>";
		echo "<p>POST instrument : " . $_POST['instrument'] . "</p>";
		echo "<br /><hr />";
		//INSERT INTO `musique`.`personnes_instruments` (`id_personnes`, `id_instruments`) VALUES ('2', '2');
	}	

	// Connexion à la base
	$bdd = new PDO('mysql:host=localhost;dbname=musique', 'root', '') or die(mysql_error());

	// Requete pour populer la liste
	$liste_musiciens = $bdd->query('SELECT id, prenom, nom FROM personnes ORDER BY prenom, nom') or die(mysql_error());
	$liste_instruments = $bdd->query('SELECT id, nom FROM instruments ORDER BY nom') or die(mysql_error());

	// Formulaire
	?>
	<form action="musiciens.php" method="post" class="smart-green">
		<h1>Formulaire Musiciens
			<span>Merci de remplir le formulaire d'ajout d'instruments.</span>
		</h1>

	<?php
	// Liste déroulante musiciens
	echo "<label><span>Musiciens : </span><select name='musicien'>";
	while ( $musicien = $liste_musiciens->fetch()) 
	{
		echo '<option value=\'' . $musicien['id'] . '\'>' . htmlspecialchars($musicien['prenom']) . ' ' . htmlspecialchars($musicien['nom']) . '</option>';
	}
	echo "</select></label>";
	$liste_musiciens->closeCursor();

	// Liste déroulante instruments
	echo "<label><span>Instruments : </span><select name='instrument'>";
	while ( $instrument = $liste_instruments->fetch())
	{
		echo '<option value=\'' . $instrument['id'] . '\'>' . htmlspecialchars(utf8_encode($instrument['nom'])) . '</option>';
	}
	echo "</select></label>";
	$liste_instruments->closeCursor();	

	?>

		<p>
			<label><span>&nbsp;</span>
			<input type="submit" class="button" value="Créer" />
		</p>
	</form>

	<?php


	// Liste des entrées existantes
		// Requete
		$liste_musiciens_instruments = $bdd->query('SELECT i.nom AS instru, p.prenom, p.nom
		FROM personnes AS p, instruments AS i, personnes_instruments AS p_i 
		WHERE p_i.id_instruments = i.id AND p_i.id_personnes = p.id') or die(mysql_error());
	?>

	<table>

		<caption>Liste des musiciens et instruments</caption>

		<thead> <!-- Entête tableau -->
			<tr>
				<th>Musicien</th>
				<th>Instrument</th>
				<th>Actions</th>
			</tr>

		<tbody>
			<tr>
			<?php
				while ( $resultat = $liste_musiciens_instruments->fetch() ){
					echo "<td>" . $resultat['prenom'] . "</td>\n" . 
						"<td>" . $resultat['instru'] . "</td>\n" . 
						"<td>" . "test" . "</td>\n";
				}
				$liste_musiciens_instruments->closeCursor();
			?>
			</tr>
		</tbody>
	</table>

	</body>

</html>