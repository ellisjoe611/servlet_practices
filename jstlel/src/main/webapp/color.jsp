<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Color</title>
</head>
<body>
	<c:if test="${not empty param.c}">
		<h1 style="color: ${param.c}">DDONG COLOR POWER</h1>
	</c:if>

	<c:choose>
		<c:when test="${not empty param.c}">
			<h1 style="color: ${param.c}">DDONG COLOR POWER</h1>
		</c:when>
		<c:otherwise>
			<h1 style="color: black">DDONG COLOR POWER</h1>
		</c:otherwise>
	</c:choose>
	
</body>
</html>