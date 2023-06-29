<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/StandardLayout.css">
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/ContentBox.css">
<meta charset="ISO-8859-1">
<!-- Jonathan Vielwerth -->

<title>Profi Anfragen</title>
</head>
<body class=outBG>

	<p class=NameVersion>Stacked V0.8</p>
	<br>
	<div class="adminTop textColor divCenter"><p >Profi Anfragen</p></div>
	
	<div>
	<table class="divCenter textColor tableBorder">
		<tr>

			<th>Benutzername</th>
			<th>Annehmen</th>
			<th>Ablehnen</th>
		</tr>
		<c:forEach var="profiAnfrage" items="${profiAnfragen}">
			<tr>
			<td><a
					href="./InvestmentsAnzeigenServlet?username=${profiAnfrage.username}">${profiAnfrage.username}</a></td>
				<td>
					<form method="post" action="./ProfiAnfrageAnnehmen">
						<fieldset>
							<div>
								<input type="hidden" name="username"
									value="${profiAnfrage.username}">
								<button type="submit" id="button"  class="classicBT" >Annehmen</button>
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
								<button type="submit" id="button" class="classicBT">Ablehnen</button>
							</div>
						</fieldset>
					</form>
				</td>

				<!-- <td>  <img src="../../RegistrierungsanfragenAusgeben?username=${Registrierung.username}" width="400"
					height="150"></td> 
					-->

			</tr>
		</c:forEach>
	</table>
	</div>
	

	<div class=divCenter><a href="./Stacked/JSP/Admin.jsp"><button class=admAbmBT>Zurück</button></a></div>

</body>
<!-- Jonathan Vielwerth -->

</html>