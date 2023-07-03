<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Benutzername schon vorhanden</title>
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<script src="../JS/ButtonRegistrierung.js"></script>
</head>
<body class="outBG">
	<!-- Jonathan Vielwerth -->
	
	<p class="NameVersion">Stacked V0.8</p>

	<br> 
	<div class="divCenter">
		<img src="../images/Logo.jpg" width="200" height="200" alt="Logo">
	</div>
	
	<div class="divCenter textColor">Der eingegebene Benutzername wird schon verwendet</div>
	
	<form class="indexForm" method="post" action="../../RegistrierungServlet" 
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
				<button class="classicBT" type="submit" id="button">Registrieren</button>
			</div>
		</fieldset>
	</form>
	<br>
	<button class="regBT" id="IndexBT">Doch einen Account</button>
	<br>

	<!-- Jonathan Vielwerth -->

</body>
</html>