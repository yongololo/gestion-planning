<?php

// On affiche un simple chant identifié par son id passé en paramètre
include_once('modele/referentiel/get_simpleChant.php');
$id = $_GET['id']; // On récupère l'id passé en GET

$chant = get_simpleChant($id);

$chant['id'] = htmlspecialchars($chant['id']);
$chant['reference'] = htmlspecialchars($chant['reference']);
$chant['titre'] = htmlspecialchars($chant['titre']);
$chant['original'] = htmlspecialchars($chant['original']);
$chant['auteurs'] = htmlspecialchars($chant['auteurs']);
$chant['arrangement'] = htmlspecialchars($chant['arrangement']);
$chant['lien'] = htmlspecialchars($chant['lien']);
$chant['ton'] = htmlspecialchars($chant['ton']);
$chant['tempo'] = htmlspecialchars($chant['tempo']);
$chant['status'] = htmlspecialchars($chant['status']);

if (empty($chant['arrangement']))
{
	$chant['arrangement'] = "Aucun";
}

// On affiche la page (vue)
include_once('vue/referentiel/detail.php');