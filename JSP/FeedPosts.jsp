<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css" href="Stacked/CSS/Feed.css">
</head>
<body>

	<div class="full-side">
		<div class="left-side">
			<table>
				<tr>
					<td rowspan="2"><img
						src="./ProfilbildAuslesen?username=${Login.username}" width="100"
						height="100"></td>
					<td><a href="./InvestmentsAnzeigenServlet">${Login.username}</a></td>
				</tr>
			</table>
		</div>

		<div class="middle">
			<form class="form-posten" method="post" action="./Posten"
				enctype="multipart/form-data">
				<textarea class="Postfeld" id="nachricht" name="nachricht"
					maxlength="200" placeholder="irgendwas los in der Welt?" required></textarea>
				<div class="button-container">
					<label for="bild" class="picture-button">Bilder</label> <input
						class="image-input" type="file" name="bild" id="bild"
						accept="image/*">
					<button type="submit" class="text-button">Posten</button>
				</div>
			</form>



			<c:forEach var="post" items="${posts}">
				<div class="geposteter_Post">
					<div class="username">${post.username}</div>
					<form class="delete" method="post" action="./PostLoeschen">
						<input type="hidden" name="id" value="${post.id}">
						<button type="submit">Löschen</button>
					</form>
					<div class="message">${post.nachricht}</div>


					<img src="./PostAuslesen?id=${post.id}" onerror="this.remove()"
						width="400" height="150">
					<div class="actions">

						<form method="post" action="./Liken">
							<input type="hidden" name="id" value="${post.id}">
							<button type="submit" class="like">Like</button>

							<p>test = ${post.anzahl_likes}</p>

						</form>
						<div class="comment">
						<form method="post" action="Stacked/JSP/Kommentieren.jsp"> 
						<input type="hidden" name="id" value="${post.id}">
						<button type="submit" class="comment">Kommentar</button>
						</form>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>

		<div class="right-side"></div>


	</div>

</body>
</html>