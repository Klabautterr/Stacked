<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Jonathan Vielwerth -->

<title>Profi Anfragen</title>
</head>
<body>
	<h3>Diesen Leuten folgst du</h3>
	<table>
		<!-- Anfang ChatGPT -->
		<c:forEach var="aktuelleFollows" items="${follows}">
			<!-- Ende ChatGPT -->
			<tr>
				<td><a
					href="./InvestmentsAnzeigenServlet?username=${aktuelleFollows.username}">${aktuelleFollows.username}</a>
				</td>
				<!--  		<td>${aktuelleFollows.username}</td>-->
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followsButton"
									value="${aktuelleFollows.username}">
								<button type="submit" id="button">Nicht mehr Folgen</button>
							</div>
						</fieldset>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
<body>
	<h3>Diese Leute folgen dir</h3>
	<table>
		<c:forEach var="aktuelleFollowerOhneFollow" items="${followerOhneFollow}">
			<tr>
				<td><a
					href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerOhneFollow.username}">${aktuelleFollowerOhneFollow.username}</a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerOhneFollow.username}">
								<button type="submit" id="button">Follower entfernen</button>
							</div>
						</fieldset>
					</form>
				</td>
				<td>
				</td>
		</c:forEach>
	</table>
	<table>
		<c:forEach var="aktuelleFollowerMitFollow" items="${followerMitFollow}">
			<tr>
				<td><a
					href="./InvestmentsAnzeigenServlet?username=${aktuelleFollowerMitFollow.username}">${aktuelleFollowerMitFollow.username}</a>
				</td>
				<td>
					<form method="post" action="./FollowEntfernen">
						<fieldset>
							<div>
								<input type="hidden" name="followerButton"
									value="${aktuelleFollowerMitFollow.username}">
								<button type="submit" id="button">Follower entfernen</button>
							</div>
						</fieldset>
					</form>
				</td>
				<td>
					<form method="post" action="./FollowHinzufuegen">
						<fieldset>
							<div>
								<input type="hidden" name="username2"
									value="${aktuelleFollowerMitFollow.username}">
								<button type="submit" id="button">Ebenfalls folgen</button>
							</div>
						</fieldset>
					</form>
				</td>
		</c:forEach>
	</table>



	<h3>Suchst du neue Freunde?</h3>


	<form method="post" action="./UserSuchen">
		<fieldset>
			<legend>FreundeSuchen</legend>
			<div>
				<label for="username">Username:</label> <input type="text"
					name="username" id="username" required />
			</div>
			<div>
				<button type="submit" id="suche">Suchen</button>
			</div>
		</fieldset>
	</form>



	<div id="tabelle"">

		<table>
			<c:forEach var="user" items="${userSuche}">
				<tr>
					<td><a
						href="./InvestmentsAnzeigenServlet?username=${user.username}">${user.username}</a>
					</td>
					<!--  	<td>${user.username}</td>-->
					<td>
						<form method="post" action="./FollowHinzufuegen">
							<fieldset>
								<div>
									<input type="hidden" name="username2" value="${user.username}">
									<button type="submit" id="button">Folgen</button>
								</div>
							</fieldset>
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<a href="./InvestmentsAnzeigenServlet">Startseite</a>


</body>
<!-- Jonathan Vielwerth -->

</html>