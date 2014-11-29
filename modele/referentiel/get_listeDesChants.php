<?php
function get_listeDesChants($offset, $limit, $status)
{
	/* On prépare une requête qui renvoie la liste des chants. On passe en paramètres :
		+ le status : on peut requêter sur les chants actifs ou inactifs
		+ l'offset et la limite : pour avoir par exemple les chants de 0 à 50, ou de 150 à 200...*/
    global $bdd;
    $offset = (int) $offset;
    $limit = (int) $limit;
    $status = $status;
        
    // Préparation de la requete
    $req = $bdd->prepare('SELECT id, reference, titre, original, auteurs, arrangement, lien, ton, tempo, status FROM `chants` WHERE `status` LIKE :status ORDER BY reference LIMIT :offset, :limit');
    // Les variables passées en paramètres
    $req->bindParam(':status', $status, PDO::PARAM_INT);
    $req->bindParam(':offset', $offset, PDO::PARAM_INT);
    $req->bindParam(':limit', $limit, PDO::PARAM_INT);
    $req->execute();

    // La variables $chants recueille le résultat
    $chants = $req->fetchAll();
    
    return $chants;
}