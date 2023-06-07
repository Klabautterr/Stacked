<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<!-- Jonathan Vielwerth -->

<title>Registrierungsanfragen</title>
</head>
<body>
<table>
    <tr>

        <th>Benutzername</th>
        <th>Passwort</th>
    </tr>
    <c:forEach var="registrierung" items="${registrierungsanfragen}">
        <tr>
            <td>${registrierung.username}</td>
            <td>${registrierung.passwort}</td>
           <td> test </td>
           
          <!-- <td>  <img src="../../RegistrierungsanfragenAusgeben?username=${Registrierung.username}" width="400"
					height="150"></td> 
					-->

        </tr>
    </c:forEach>
</table>

</body>
		<!-- Jonathan Vielwerth -->

</html>