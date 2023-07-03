<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Jan Holtmann -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css"
	href="./Stacked/CSS/ContentBox.css">
<meta charset="UTF-8">

<script src="./Stacked/JS/ButtonAdminServlet.js"></script>


<title>Profi Anfragen</title>
</head>
<!-- Jan Holtmann -->
<!-- Jonathan Vielwerth -->
<body class="outBG">

	<p class="NameVersion">Stacked V0.8</p>
	<br>
	<div class="adminTop textColor divCenter">
		<p>Profi Anfragen</p>
	</div>

	<div>
		<table class="divCenter textColor tableBorder">
			<tr>

				<th>Benutzername</th>
				<th>Annehmen</th>
				<th>Ablehnen</th>
			</tr>
			<c:forEach var="profiAnfrage" items="${profiAnfragen}">
				<tr>
					<td class="textColor">${profiAnfrage.username}</td>
					<td>
						<form method="post" action="./ProfiAnfrageAnnehmen">
							<fieldset>
								<div>
									<input type="hidden" name="username"
										value="${profiAnfrage.username}">
									<button type="submit" id="button1" class="classicBT">Annehmen</button>
								</div>
							</fieldset>
						</form>
					</td>
					<td>
						<form method="post" action="./ProfiAnfrageAblehnen">
							<fieldset>
								<div>
									<input type="hidden" name="username"
										value="${profiAnfrage.username}">
									<button type="submit" id="button2" class="classicBT">Ablehnen</button>
								</div>
							</fieldset>
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div class="divCenter">
		<button class="admAbmBT" id="ZurueckBT">Zurück</button>
	</div>
</body>
</html>
<!-- Jonathan Vielwerth -->