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
	
	
	
	<a href="./Profil.jsp"> Zur�ck zum Profil </a>
	
	
	
	<form method="post" action="../../../ProfilBearbeitenServlet"
		enctype="multipart/form-data">
		<fieldset>
			<legend>ProfilBearbeiten</legend>
			<br>
						<div>
				<label for="username">Alten Nutzernamen eingeben:</label> <input type="text" name="AlterUsername"
					id="username" required />
			</div>
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
				<button type="submit" id="button">�nderungen speichern</button>
			</div>
			</form>
	<!-- Jonathan Vielwerth -->

</body>
</html>