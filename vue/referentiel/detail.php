<div class="chants">

    <h1>Détail de "<?php echo $chant['titre']; ?>" 
        <?php if (!empty($chant['original'])) {echo "(" . $chant['original'] . ")";} ?></h1>

    <p>Référence : <?php echo $chant['reference']; ?><br>
    Auteur : <?php echo $chant['auteurs']; ?><br>
    Arrangement : <?php echo $chant['arrangement']; ?><br>
    Ton : <?php echo $chant['ton']; ?><br>
    Tempo : <?php echo $chant['tempo']; ?><br>
    Lien : <a href="http://<?php echo $chant['lien']; ?>"><?php echo $chant['lien']; ?></a>
    </p>
</div>

<p><a href="index.php" class="btn">Retour</a></p>