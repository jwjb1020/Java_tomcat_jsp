<%@page import="java.security.cert.CertPathValidatorException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
String pValue = "방랑시인";
%>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그</title>
</head>
<body>
	<jsp:useBean id="person" class="common.Person" scope="request"/>
	<jsp:setProperty property="name" name="person" value="김삿갓" />
	<jsp:setProperty property="age" name="person" value="56" />
	<jsp:forward page="ParamForward.jsp?parma1=김병연">
		<jsp:param value="경기도 안성" name="param2" />
		<jsp:param value="<%=pValue%>" name="param3" />
	</jsp:forward>
</body>
</html>