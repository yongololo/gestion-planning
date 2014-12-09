<?php

// On change le status d'un chant de "actif" vers "inactif"

include_once('modele/referentiel/disable_simpleChant.php');
$id = $_GET['id']; // On récupère l'id passé en GET

$resultat = disable_simpleChant($id);

$resultat = htmlspecialchars($resultat);

// On affiche la page (vue)
include_once('vue/referentiel/suppr.php');