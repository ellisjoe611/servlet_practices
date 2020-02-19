<%@page import="com.douzone.guestbook.dao.GuestbookDAO"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String contents = request.getParameter("contents");

	GuestbookVO vo = new GuestbookVO();
	vo.setName(name);
	vo.setPw(pw);
	vo.setContents(contents);

	if (new GuestbookDAO().insert(vo) == true) {
		response.sendRedirect("/emaillist01/");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserting...</title>
</head>
<body>

</body>
</html>