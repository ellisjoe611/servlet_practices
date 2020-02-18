<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVO"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GuestbookVO> list = new GuestbookDAO().findall();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook01/insert.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br>

	<%
		int size = list.size();
		if (size <= 0) {
	%>
	<h3>등록된 방문글이 없습니다. 위에서 새로 추가해보세요!</h3>
	<%
		} else {
			for (GuestbookVO vo : list) {
	%>
	<table width=510 border=1>
		<tr>
			<td>[<%=size%>]
			</td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getReg_date()%></td>
			<td><a
				href="/guestbook01/deleteform.jsp?view_no=<%=size%>&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContents()%></td>
		</tr>
	</table>
	<br>
	<%
				size -= 1;
			}
		}
	%>

</body>
</html>