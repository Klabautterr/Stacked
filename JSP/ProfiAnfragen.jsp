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
<table>
    <tr>

        <th>Benutzername</th>
    </tr>
    <c:forEach var="profiAnfrage" items="${profiAnfragen}">
        <tr>
            <td>${profiAnfrage.username}</td>
           <td> test </td>
           
          <!-- <td>  <img src="../../RegistrierungsanfragenAusgeben?username=${Registrierung.username}" width="400"
					height="150"></td> 
					-->

        </tr>
    </c:forEach>
</table>

	<a href="Stacked/JSP/Admin.jsp">Registrierungsanfragen</a>

</body>
		<!-- Jonathan Vielwerth -->

</html>