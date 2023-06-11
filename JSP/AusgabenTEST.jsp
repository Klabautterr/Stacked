<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Erfolgreiche Posts-Suche</h2>
	<h3>Gelesene Daten</h3>
	<table>
		<tr>

			<th>Benutzername</th>
			<th>Nachricht</th>
			<th>Aktion</th>
		</tr>




		<c:forEach var="post" items="${posts}">
			<tr>
				<td>${post.id}</td>
				<td>${post.username}</td>
				<td>${post.nachricht}</td>
				<td>
					<p>Bild</p> <img
					src="${pageContext.request.contextPath}/PostAuslesen?id=${post.id}"
					width="400" height="150">
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>