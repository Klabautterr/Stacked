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

		<c:forEach var="asset" items="${AssetsAnzeigen}">
			<tr>
				<td>${asset.stockname}</td>
				<td>${asset.anzahl}</td>
				<td>${asset.buyin}</td>
			</tr>
		</c:forEach>
	</table>




	</table>

</body>
</html>