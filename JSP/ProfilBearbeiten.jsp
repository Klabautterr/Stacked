<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profil bearbeiten</title>
</head>
<body>

	<!-- Jonathan Vielwerth -->
	<center>
		<h1>
			<u><strong>Profil bearbeiten</strong></u>
		</h1>
	</center>
	
	
	
	<a href="./Profil.jsp"> Zurück zum Profil </a>
	
	
	
	<form method="post" action="../../ProfilBearbeitenServlet"
		enctype="multipart/form-data">
		<fieldset>
			<legend>ProfilBearbeiten</legend>
			<br>
			<div>
				<label for="username">Neuer Nutzername:</label> <input type="text" name="NeuerUsername"
					id="username"/>
			</div>
			<div>
				<label for="passwort">Neues Passwort:</label> <input type="password"
					name="passwort" id="passwort"/>
			</div>
			<div>
			<label for="NewImage">Neues Bild:</label> <input type="file"
					name="NewImage" id="NewImage" accept="images/*"/>
			</div>
			</fieldset>
			<div>
				<button type="submit" id="button">Änderungen speichern</button>
			</div>
			</form>
			

			<!--  Später noch mit JavaScript mit Logik versehen, sodass den Button nur leute angezeigt bekommen die noch keinen offenen Antrag haben -->			
			<form method="post" action="../../ProfiAnfrageStellen">
						<fieldset>
							<div>
								<button type="submit" id="button">Profi Anfrage stellen</button>
							</div>
						</fieldset>
					</form>
	<!-- Jonathan Vielwerth -->
	
</body>
</html>