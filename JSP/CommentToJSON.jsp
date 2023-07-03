<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

[
<c:forEach var="com" items="${comments}" varStatus="status" >
	{
		"id":${com.id},
		"username":"${com.username}",
		"kommentar":"${com.kommentar}",
		"post_id":${com.post_id}
		}<c:if test="${not status.last}">,</c:if>
</c:forEach>
]