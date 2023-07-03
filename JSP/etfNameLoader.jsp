<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



[
<c:forEach var="com" items="${refillDropDown}" varStatus = "status">
{
	"stockname": "${com.stockname}"
	}
	<c:if test="${not status.last}">,</c:if>
</c:forEach>



]
