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
            <td><a href="index.php?section=detail&id=<?php echo $chant['id']; ?>"><img src="static/images/loupe.png" title="Détail..." alt="détail" border="0" width="15" height="15"></a>
            <a href="index.php?section=suppr&id=<?php echo $chant['id']; ?>" onclick="return confirm('Etes-vous sûr ?');"><img src="static/images/suppression.png" title="Suppression..." alt="suppression" border="0" width="15" height="15"></a></td>
        </tr>

        <?php } ?>

    </table>
</div>