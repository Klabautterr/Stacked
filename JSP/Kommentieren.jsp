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

					<div class="username">
						<a href="./InvestmentsAnzeigenServlet?username=${post.username}">${post.username}</a>
					</div>

					<div class="message">${post.nachricht}</div>

					<c:if test="${not empty post.bildname}">
						<img src="./PostAuslesen?id=${post.id}" width="400" height="150">
					</c:if>
				</div>
				
				<div id="newComms">
				</div>
				
				<div id="loadComms">
				</div>
				
				<div>
				<button id="loadMoreComments" Data-id ="${post.id}">Mehr Laden</button>
				</div>
				<form method="post" action="./Kommentieren">
					<textarea class="Postfeld" id="kommentar" name="kommentar"
						maxlength="200" placeholder="Was möchtest du den Kommentieren?"
						required></textarea>
					<input type="hidden" value="${post.id}" name="id"></input>
					<div class="button-container">

						<button id="sendComment" type="submit" class="text-button">Posten</button>
					</div>
				</form>

			</div>
		</div>
		<div class="right-side"></div>
		<script src="./Stacked/JS/Comments.js"></script>
		
</body>
</html>