<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Startseite</title>
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
</head>
<body class=outBG>
	<!-- Jonathan Vielwerth -->
	
	<p class=NameVersion>Stacked V0.8</p>

	<br> 
	<div align="center">
		<img src="../images/Logo.jpg" width="200" height="200" alt="Logo">
	</div>
	
	<div class="divCenter textColor">Der eingegebene Benutzername wird schon verwendet</div>
	
	<form class=indexForm method="post" action="../../RegistrierungServlet" 
			enctype="multipart/form-data">
		<fieldset>
			<legend>Registrierung</legend>
			<div>
				<label for="username">Benutzername:</label> <input type="text"
					name="username" id="username" required />
			</div>
			<div>
				<label for="passwort">Passwort:</label> <input type="password"
					name="passwort" id="passwort" required />
			</div>
			<div>
				<label for="userImage">Bild:</label> <input type="file"
					name="userImage" id="userImage" accept="images/*" required />
			</div>

			<!--  		<div>
				<label for="prodtime">P.-Zeit (hh:mm):</label>
				<input type="time" name="prodtime" id="prodtime" required/>
			</div>
			-->
			<div>
				<button class=classicBT type="submit" id="button">Registrieren</button>
			</div>
		</fieldset>
	</form>
	<br>
	<a href="../Index.html"><button class=regBT>Doch einen Account</button></a>
	<br>

	<!-- Jonathan Vielwerth -->

</body>
</html>