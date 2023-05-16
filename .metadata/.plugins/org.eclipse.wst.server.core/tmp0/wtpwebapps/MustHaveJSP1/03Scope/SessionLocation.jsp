<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역</title>
</head>
<body>
	
	<%
	if (session.getAttribute("lists") == null) {
		out.print("<h1>내가만든 쿠키</h1>");
	} else {
		ArrayList<?> lists = (ArrayList<?>) session.getAttribute("lists");
		out.print("<h2>페이지 이동 후 session 영역의 속성 읽기</h2>");
		for (Object str : lists)
			if (str instanceof String)
		out.print(str + "<br/>");
	}
	%>

</body>
</html>