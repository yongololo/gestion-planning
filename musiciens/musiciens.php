<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Déclaration des musiciens</title>
		<link rel="stylesheet" type="text/css" href="styles.css">

		<script language="JavaScript">
		function toggleContent(){
			// Get the DOM reference
			var contentId = document.getElementById('sub3');
			// Toggle
			contentId.style.display == "block" ? contentId.style.display = "none" : contentId.style.display = "block";
		}
		</script>

	</head>
	
	<body>

	<?php

	// Connexion à la base
	include("connexion.php");

	// Requete pour populer la liste
	$liste_musiciens = $bdd->query('SELECT id, prenom, nom FROM personnes ORDER BY prenom, nom') or die(mysql_error());
	$liste_instruments = $bdd->query('SELECT id, nom FROM instruments ORDER BY nom') or die(mysql_error());
	?>


	<?php


	// Liste des entrées existantes
		// Requete
		$liste_musiciens_instruments = $bdd->query('SELECT i.nom AS instru, p.prenom, p.nom
		FROM personnes AS p, instruments AS i, personnes_instruments AS p_i 
		WHERE p_i.id_instruments = i.id AND p_i.id_personnes = p.id') or die(mysql_error());
	?>

	<br />
	
	<div class="tableau">
		<table>
			<caption>Liste des musiciens</caption>

			<!-- Entête -->
			<tr>
			<td>Musicien</td>
			<td>Instrument</td>
			<td>Actions</td>
			</tr>

			<?php
				while ( $resultat = $liste_musiciens_instruments->fetch() ){
					echo "<tr>\n" .
						"<td>" . utf8_encode($resultat['prenom']) . "</td>\n" . 
						"<td>" . utf8_encode($resultat['instru']) . "</td>\n" . 
						"<td>" . "test" . "</td>\n" .
						"</tr>\n";
				}
				$liste_musiciens_instruments->closeCursor();
			?>
	</table>
	<input type="image" src="add.png" alt="Nouveau" align="center" name="new_entry" onclick="toggleContent()"/>
</div>

<!-- Formulaire -->
<br />
<div id="sub3" style="display:none;">
<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" class="smart-green">
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
		<input type="submit" class="button" value="Créer" />
	</p>
</form>
</div>


	</body>

</html>