<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String outerPath1 = "./inc/OuterPage1.jsp";
String outerPath2 = "./inc/OuterPage2.jsp";

pageContext.setAttribute("pArrt", "동명왕");
pageContext.setAttribute("rArrt", "온조왕");
%>
<html>
<head>
<meta charset="UTF-8">
<title>지시어와 액션 태그 동작방식 비교</title>
</head>
<body>
	<h2>지시어와 액션 태그 동작방식 비교</h2>
	<h2>지시어로 페이지 포함</h2>
>
	<o>외부파일에 선언한 변수 : <%=newVar1%></p>
	<h3>액션태그로 페이지 표현</h3>
	<isp:include page="./inc/OuterPage2.jsp" /> 
	<jsp:include page="<%outerPath2% %>"/>
	<p>외부파일에 선언한 변수 :</p>
</body>
</html>