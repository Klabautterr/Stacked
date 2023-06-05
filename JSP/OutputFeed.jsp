<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css" href="../CSS/Feed.css">
</head>
<body>

	<div class="full-side">
		<div class="left-side">
			<table>
				<tr>
					<td rowspan="2"><img src="../../ProfilbildAuslesen?username=${Login.username}" width="100" height="100"></td>
					<td>${Login.username}</td>
				</tr>
			</table>
		</div>

		<div class="middle">
			<form class="form-posten" method="post" action="../../Posten" enctype="multipart/form-data">
				<textarea class="Postfeld" id="nachricht" name="nachricht" maxlength="200" placeholder="irgendwas los in der Welt?" required></textarea>
				<div class="button-container">
					<label for="bild" class="picture-button">Bilder</label> 
					<input class="image-input" type="file" name="bild" id="bild" accept="image/*" required>
					<button type="submit" class="text-button">Posten</button>
				</div>
			</form>
			
			<div class="geposteter_Post">
			<c:if test="${form != null}">
				<form method="post" action="../../PostLoeschen">
					<input type="hidden" name="id" value="${form.id}">
					<button type="submit">Löschen</button>
				</form>
				<br> <b> ${form.nachricht}</b> <br>
				<b> <img src="../../PostAuslesen?id=${form.id}" width="400" height="150"></b> <b> username = ${form.username}</b> <b>Woah der ${form.id} Post</b> <br>
			</c:if>
			</div>
			
		</div> 

		<div class="right-side">
			<form id="myForm" method="post" action="../../AllePostsAusgeben">
				<fieldset>
					<legend>Post-Suche</legend>
					<div>
						<label for="username">Benutzername:</label> <input type="text" name="username" id="username" placeholder="Benutzername">
					</div>
					<div>
						<button name="submit" type="submit">Suche starten</button>
						<button name="reset" type="reset">Zurücksetzen</button>
					</div>
				</fieldset>
			</form>
		</div> 


	</div>
	
</body>
</html>
