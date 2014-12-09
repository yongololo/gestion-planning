<!DOCTYPE html>
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Portail des musiciens</title>
	<link href="vue/referentiel/style.css" rel="stylesheet" /> 
    </head>

    <body>
    	<div id="wrapper">
    		<div id="headerwrap">
    			<div id="header">
    				<h1>Portail des musiciens</h1>
    				<p>Voisins le Bretonneux</p>
    			</div>
        	</div>

	        <div id="contentliquid">
	        	<div id="contentwrap">
	        		<div id="content">
			    		<?php
							include_once('modele/connexion_sql.php');

							if (!isset($_GET['section']) OR $_GET['section'] == 'index'){
							    include_once('controleur/referentiel/index.php');
							}

							elseif ($_GET['section'] == 'detail'){
								include_once('controleur/referentiel/detail.php');
							}

							elseif ($_GET['section'] == 'ajouter') {
								include_once('controleur/referentiel/ajouter.php');
							}

							elseif ($_GET['section'] == 'suppr') {
								include_once('controleur/referentiel/suppr.php');
							}

							else{
								include_once('controleur/referentiel/index.php');
							}
						?>
					</div>
				</div>
			</div>

			<div id="leftcolumnwrap">
				<div id="leftcolumn">
					<p>menu de gauche</p>
				</div>
			</div>

			<div id="footerwrap">
				<div id="footer">
					<p>copyright</p>
				</div>

			</div>
		</div>

    </body>
</html>