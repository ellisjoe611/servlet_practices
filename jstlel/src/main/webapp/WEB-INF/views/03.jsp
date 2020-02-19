<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("count1", 30);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopes</h1>
	<br>
	<h2>Length : ${fn:length(list) }</h2>

	<c:set var='listCount' value='${fn:length(list) }'></c:set>
	<c:forEach items='${list }' var='vo' varStatus='status'>
		${listCount-status.index }---> ${status.index } : ${status.count } | ${vo.no } : ${vo.name } <br>
	</c:forEach>

	<c:set var='count2' value='10' />
	<h3>===${count1 }===</h3>
	<h3>===${count2 }===</h3>

</body>
</html>