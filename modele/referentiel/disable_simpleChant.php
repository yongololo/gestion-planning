<?php
function disable_simpleChant($id)
{
	/* On prépare une requête qui passe un chant du status "actif" à "inactif". On passe en paramètres :
		+ l'id : on peut requêter sur les chants actifs ou inactifs
    */
    global $bdd;
    $id = (int) $id;
        
    // Préparation de la requete
    $req = $bdd->prepare('UPDATE musique.chants SET status = \'inactif\' WHERE chants.id = :id');
    //UPDATE musique.chants SET status = 'inactif' WHERE chants.id = :id;
    
    // Les variables passées en paramètres
    $req->bindParam(':id', $id, PDO::PARAM_INT);

    // On exécute et on teste dans la foulée...
    if ($req->execute()) {
        return "OK";
    }
    else{
        return "KO";
    }
}