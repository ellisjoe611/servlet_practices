<%@page import="com.douzone.guestbook.vo.GuestbookVO"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	GuestbookVO vo = new GuestbookVO();
	vo.setNo(Long.valueOf(request.getParameter("no")));
	vo.setPw(request.getParameter("pw"));

	if (new GuestbookDAO().delete(vo)) {
		response.sendRedirect("/guestbook01/");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleting...</title>
</head>
<body>

</body>
</html>