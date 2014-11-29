<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Listing des chants</title>
	<link href="vue/referentiel/style.css" rel="stylesheet" /> 
    </head>
        
    <body>
        <h1>Listing des chants du référentiel</h1>
 
        <div class="chants" >
            <table >
                <tr>
                    <td>Référence</td>
                    <td>Titre</td>
                    <td>Titre original</td>
                    <td>Auteurs</td>
                    <td>Arrgt</td>
                    <td>Ton / Tempo</td>
                    <td>Actions</td>
                </tr>

                <?php foreach($chants as $chant) { ?>

                <tr>
                    <td><?php echo $chant['reference']; ?></td>
                    <td><?php echo $chant['titre']; ?></td>
                    <td><?php echo $chant['original']; ?></td>
                    <td><?php echo $chant['auteurs']; ?></td>
                    <td><?php echo $chant['arrangement']; ?></td>
                    <td><?php echo $chant['ton'] . ' / ' . $chant['tempo']; ?></td>
                    <td><a href="referentiel.php?section=detail&id=<?php echo $chant['id']; ?>">détail</a></td>
                </tr>

                <?php } ?>

            </table>
        </div>

</body>
</html>