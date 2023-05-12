<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
<%
out.print("no text");
out.clear();
out.print("<h2>out 내장객체</h2>");
out.print("출력 버퍼 크기 : " + out.getBufferSize()+ "<br>");
out.print("남은 버퍼 크기 : "+out.getRemaining()+"<br>");

out.flush();
out.print("flush 후 버퍼 크기 : "+out.getRemaining()+ "<br>");

out.print(1);
out.print(false);
out.print('가');
%>

</body>
</html>