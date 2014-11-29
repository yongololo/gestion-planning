<?php
function get_simpleChant($id)
{
	/* On prépare une requête qui renvoie un seul chant. On passe en paramètres :
		+ l'id : on peut requêter sur les chants actifs ou inactifs
    */
    global $bdd;
    $id = (int) $id;
        
    // Préparation de la requete
    $req = $bdd->prepare('SELECT * FROM chants WHERE id = :id');
    
    // Les variables passées en paramètres
    $req->bindParam(':id', $id, PDO::PARAM_INT);
    $req->execute();

    // La variables $chants recueille le résultat
    $chant = $req->fetchAll();
    
    return $chant;
}