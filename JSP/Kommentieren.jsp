<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kommentieren</title>
<link rel="stylesheet" type="text/css" href="./Stacked/CSS/Feed.css">
</head>
<body>

	<div class="full-side">

		<div class="left-side"></div>

		<div class="middle">

			<div class="geposteter_Post">
				<div class="geposteter_Post">

					<div class="username">${post.username}</div>

					<div class="message">${post.nachricht}</div>

					<img src="./PostAuslesen?id=${post.id}" onerror="this.remove()"
						width="400" height="150">
				</div>
				<form method="post" action="./Kommentieren">
					<textarea class="Postfeld" id="kommentar" name="kommentar"
						maxlength="200" placeholder="Was möchtest du den Kommentieren?"
						required></textarea>
					<input type="hidden" value="${post.id}" name="id"></input>
					<div class="button-container">

						<button type="submit" class="text-button">Posten</button>
					</div>
				</form>
				<c:forEach var="post" items="${Kommentar}">
					<div class="geposteter_Post">
						<div class="username">${post.username}</div>
						<form class="delete" method="post" action="./PostLoeschen">
							<input type="hidden" name="id" value="${post.id}">
							<button type="submit">Löschen</button>
						</form>
						<div class="message">${post.nachricht}</div>


						<div class="actions">

							<form method="post" action="./Liken">
								<input type="hidden" name="id" value="${post.id}">
								<button type="submit" class="like">Like</button>

								<p>test = ${post.anzahl_likes}</p>

							</form>
						
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="right-side"></div>


	</div>

</body>
</html>