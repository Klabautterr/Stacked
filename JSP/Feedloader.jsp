<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

[
<c:forEach var="post" items="${posts}" varStatus="status" >
	{
		"id":${post.id},
		"username":"${post.username}",
		"nachricht":"${post.nachricht}",
		"anzahl_likes":${post.anzahl_likes},
		"bildname":"${post.bildname}"
			}<c:if test="${not status.last}">,</c:if>
</c:forEach>
]