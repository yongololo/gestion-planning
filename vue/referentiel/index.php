<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Listing des chants</title>
	<link href="vue/referentiel/style.css" rel="stylesheet" /> 
    </head>
        
    <body>
        <h1>Listing des chants du référentiel</h1>
 
<?php
foreach($chants as $chant)
{
?>
<div class="chants">
    <h3>
        <?php echo $chant['titre']; ?>
        <em>le <?php echo $chant['reference']; ?></em>
    </h3>
    
    <p>
    <?php echo $chant['original']; ?>
    <br />
    <em><a href="commentaires.php?billet=<?php echo $billet['id']; ?>">Commentaires</a></em>
    </p>
</div>
<?php
}
?>
</body>
</html>