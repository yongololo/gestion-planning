<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
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

							if (!isset($_GET['section']) OR $_GET['section'] == 'index')
							{
							    include_once('controleur/referentiel/index.php');
							}

							if ($_GET['section'] == 'detail')
							{
								include_once('controleur/referentiel/detail.php');
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

<!--

	<body>
	    <div id="wrapper">

	        <div id="headerwrap">
		        <div id="header">
		            <p>This is the Header</p>
		        </div>
	        </div>

	        <div id="contentliquid">
	        	<div id="contentwrap">
	        		<div id="content">
	           			<p> rquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. </p>        
	       			</div>
	        	</div>
	        </div>
	        
	        <div id="leftcolumnwrap">
	        	<div id="leftcolumn">
	            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
	        	</div>
	        </div>

	        <div id="footerwrap">
	        	<div id="footer">
	            	<p>This is the Footer</p>
	        	</div>
	        </div>
	    </div>
	</body>
</html>
-->