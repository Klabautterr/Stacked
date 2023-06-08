<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Stacked/CSS/Feed.css">
</head>
<body>

	<div class="full-side">
		<div class="left-side">
			<table>
				<tr>
					<td rowspan="2"><img
						src="${pageContext.request.contextPath}/ProfilbildAuslesen?username=${Login.username}"
						width="100" height="100"></td>
					<td><a href="${pageContext.request.contextPath}/Stacked/JSP/Profil.jsp">${Login.username}</a></td>
				</tr>
			</table>
		</div>

		<div class="middle">
			<form class="form-posten" method="post"
				action="${pageContext.request.contextPath}/Posten"
				enctype="multipart/form-data">
				<textarea class="Postfeld" id="nachricht" name="nachricht"
					maxlength="200" placeholder="irgendwas los in der Welt?" required></textarea>
				<div class="button-container">
					<label for="bild" class="picture-button">Bilder</label> <input
						class="image-input" type="file" name="bild" id="bild"
						accept="image/*" required>
					<button type="submit" class="text-button">Posten</button>
				</div>
			</form>

			<div class="geposteter_Post">

				<c:forEach var="post" items="${posts}">

					<b>${post.id}</b>
					<br>
					<b>${post.username}</b>
					<br>
					<b>${post.nachricht}</b>
					<br>
					<p>Bild</p>
					<b><img
						src="${pageContext.request.contextPath}/PostAuslesen?id=${post.id}"
						width="400" height="150"></b>
					<br>
				</c:forEach>


			</div>
		</div>

		<div class="right-side"></div>


	</div>

</body>
</html>