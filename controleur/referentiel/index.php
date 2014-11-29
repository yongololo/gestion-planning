<?php

// On demande les 100 premiers chants (modèle)
include_once('modele/referentiel/get_listeDesChants.php');
$chants = get_listeDesChants(0, 100);

// On effectue du traitement sur les données (contrôleur)
// Ici, on doit surtout sécuriser l'affichage
foreach($chants as $cle => $chant)
{
	$chants[$cle]['id'] = htmlspecialchars($billet['id']);
    $chants[$cle]['reference'] = htmlspecialchars($billet['reference']);
    $chants[$cle]['titre'] = htmlspecialchars($billet['titre']);
    $chants[$cle]['original'] = htmlspecialchars($billet['original']);
    $chants[$cle]['auteurs'] = htmlspecialchars($billet['auteurs']);
    $chants[$cle]['arrangements'] = htmlspecialchars($billet['arrangements']);
    $billets[$cle]['lien'] = htmlspecialchars($billet['lien']);
    $chants[$cle]['ton'] = htmlspecialchars($billet['ton']);
    $chants[$cle]['tempo'] = htmlspecialchars($billet['tempo']);
    $chants[$cle]['status'] = htmlspecialchars($billet['status']);
}

// On affiche la page (vue)
include_once('vue/referentiel/index.php');