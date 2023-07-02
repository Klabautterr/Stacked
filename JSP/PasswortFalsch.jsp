<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Startseite</title>
<link rel="stylesheet" type="text/css" href="../CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="../CSS/ContentBox.css">
<script src="../JS/ButtonEinlogenFehlgeschlagen.js"></script>
</head>
<body class="outBG">
	<!-- Jonathan Vielwerth -->
	
	<p class="NameVersion">Stacked V0.8</p>

	<br> 
	<div align="center">
		<img src="../images/Logo.jpg" width="200" height="200" alt="Logo">
	</div>
	<div class="divCenter textColor">Das eingegebene Passwort ist nicht korrekt</div>
	<form class="indexForm" method="post" action="../../LoginServlet">
		<fieldset>
			<legend>Login</legend>
			<div class="divCenter">
				<label for="username">Username:</label>
				<div><input type="text" name="username" id="username" required /></div>
				
			
				<label for="passwort">Passwort:</label>
				
				<div><input type="password" name="passwort" id="passwort" required /></div>
			
	 		
				<div><button class="classicBT" type="submit" id="button">Einloggen</button></div>
			
			</div>
			
		</fieldset>
	</form>
	<br>
	<button class="regBT" id="RegistrierungBT">Noch keinen Account?</button>
	<br>

	<!-- Jonathan Vielwerth -->

</body>
</html>