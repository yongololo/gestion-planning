<?php

// On affiche un simple chant identifié par son id passé en paramètre
include_once('modele/referentiel/get_simpleChant.php');
$id = $_GET['section']; // On récupère l'id passé en GET
/*if (!is_numeric($id))
{
    echo 'id incorrect.';
    exit(1);
}*/
$chant = get_simpleChant($id);

// On effectue du traitement sur les données (contrôleur)
// Ici, on doit surtout sécuriser l'affichage
/*foreach($chants as $cle => $chant)
{
	$chants[$cle]['id'] = htmlspecialchars($chant['id']);
    $chants[$cle]['reference'] = htmlspecialchars($chant['reference']);
    $chants[$cle]['titre'] = htmlspecialchars($chant['titre']);
    $chants[$cle]['original'] = htmlspecialchars($chant['original']);
    $chants[$cle]['auteurs'] = htmlspecialchars($chant['auteurs']);
    $chants[$cle]['arrangement'] = htmlspecialchars($chant['arrangement']);
    $billets[$cle]['lien'] = htmlspecialchars($chant['lien']);
    $chants[$cle]['ton'] = htmlspecialchars($chant['ton']);
    $chants[$cle]['tempo'] = htmlspecialchars($chant['tempo']);
    $chants[$cle]['status'] = htmlspecialchars($chant['status']);
}*/

$chants[$cle]['id'] = htmlspecialchars($chant['id']);
$chants[$cle]['reference'] = htmlspecialchars($chant['reference']);
$chants[$cle]['titre'] = htmlspecialchars($chant['titre']);
$chants[$cle]['original'] = htmlspecialchars($chant['original']);
$chants[$cle]['auteurs'] = htmlspecialchars($chant['auteurs']);
$chants[$cle]['arrangement'] = htmlspecialchars($chant['arrangement']);
$billets[$cle]['lien'] = htmlspecialchars($chant['lien']);
$chants[$cle]['ton'] = htmlspecialchars($chant['ton']);
$chants[$cle]['tempo'] = htmlspecialchars($chant['tempo']);
$chants[$cle]['status'] = htmlspecialchars($chant['status']);

// On affiche la page (vue)
include_once('vue/referentiel/index.php');