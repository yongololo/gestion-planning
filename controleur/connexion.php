<?php

function erreur($err=''){
	$mess=($err!='')? $err:'Une erreur inconnue s\'est produite';
	exit();
}

echo '<p><i>Vous êtes ici</i> : <a href="./index.php">Index du forum</a> --> Connexion';
if ($id!=0) erreur(ERR_IS_CO);

if (!isset($_POST['pseudo'])){ ?>
<form method="post" action="connexion.php">
	<fieldset>
		<legend>Connexion</legend>
		<p>
			<label for="pseudo">Pseudo : </label><input name="pseudo" type="text" id="pseudo" /><br />
			<label for="password">Mot de passe : </label><input name="password" type="password" id="password" /><br />
		</p>
	</fieldset>
	<p><input type="submit" value="Connexion" /></p></form>
	<a href="register.php">Pas encore inscrit ?</a>

</form>
<?php
}
else{
	$message='';
	if (empty($_POST['pseudo']) OR empty($_POST['password'])){
		$message = '<p>Une erreur s\'est produite pendant votre identification.
		Vous devez remplir tous les champs</p>
		<p>Cliquez <a href="./connexion.php">ici</a> pour revenir</p>';
	}
	else{ //Check password
		
	}
}