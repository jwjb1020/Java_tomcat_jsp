<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Outerpage</title>
</head>
<body>
<h2>외부파일1</h2>
<%
String newVar1 = "고구려 동명왕";
%>
<ul>
<li>page 영역속성 : <%=pageContext.getAttribute("pAttr") %></li>
<li>request 영역속성 : <%=pageContext.getAttribute("rAttr") %></li>
</ul>
</body>
</html>