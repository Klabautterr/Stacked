<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Stacked/CSS/Feed.css">
</head>
<body>

	<div class="full-side">
		<div class="left-side">
	
		</div>

		<div class="middle">
		
		<div class="geposteter_Post">
					<div class="username">${post.username}</div>
					<form class="delete" method="post"
						action="${pageContext.request.contextPath}/PostLoeschen">
						<input type="hidden" name="id" value="${post.id}">
						<button type="submit">Löschen</button>
					</form>
					<div class="message">${post.nachricht}</div>
		</div>

		<div class="right-side"></div>


	</div>

</body>
</html>