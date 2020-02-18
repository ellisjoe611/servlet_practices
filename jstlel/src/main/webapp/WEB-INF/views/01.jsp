<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>데이터 타입</h1>
	${ival }
	<br> $lival }
	<br> ${fval }
	<br> ${bval }
	<br> -${obj }-
	<br> ${vo.name}
	<br> ${vo.no}
	<br>
	<p style='width: 200px; height: 100px; border: 1px solid #0000ff'>
		${fn:replace(map.sVal, newLine, "<br>") }</p>

	<h1>empty??</h1>
	${vo == null }
	<br> ${not empty vo }
	<br>

	<h1>파라미터 타입</h1>
	${param.a }
	<br> ${param.email }
	<br>

	<h1>Map으로 받기</h1>
	${map.ival }
	<br> ${map.lval }
	<br> ${map.fval }
	<br> ${map.bval }
	<br> ${3+10*20 }
	<br> ${map.ival+10 }
	<br> ${map.ival == 10 }
	<br> ${map.ival < 5 }
	<br>

</body>
</html>