<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String snum = request.getParameter("snum");
int num = 0;
if (snum != null)
	num = Integer.parseInt(snum);
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>자바코드에서의 예외</h4>
	<%
	int num1 = 100;
	%>
	<c:catch var="eMassage">
		<%
		int result = num1 / num;
		%>
	</c:catch>
	<c:choose>
		<c:when test="${ not empty eMassage }">예외 내용 : ${ eMassage }</c:when>
		<c:when test="${ not empty result }"> ${ result }</c:when>
	</c:choose>




	<h4>el에서의 예외</h4>
	<c:set var="num2" value="200" />
	<c:catch var="eMassage">
${"일"+ num2 }
</c:catch>
	예외 내용 : ${eMassage }
</body>
</html>