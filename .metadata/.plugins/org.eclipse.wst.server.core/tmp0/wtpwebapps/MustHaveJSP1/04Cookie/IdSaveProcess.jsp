<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if ("must".equals(user_id) && "1234".equals(user_pw)) {
	if (save_check != null && save_check.equals("Y")) {
		CookieManager.makeCookie(response, "loginId", user_id, 86400);
	} else {
		CookieManager.deleteCookie(response, "loginId");
	}

	JSFunction.alertLocation("로그인 성공", "IdSaveMain.jsp", out);
} 

if ("jwjb1020".equals(user_id) && "1234".equals(user_pw)) {
	if (save_check != null && save_check.equals("Y")) {
		CookieManager.makeCookie(response, "loginId", user_id, 12345);
	} else {
		CookieManager.deleteCookie(response, "loginId");
	}

	JSFunction.alertLocation("로그인 성공", "IdSaveMain.jsp", out);
} 
else if ("must".equals(user_id) && !"1234".equals(user_pw) ){
	JSFunction.alertBack("비밀번호가 다릅니다", out);
}
else {
	JSFunction.alertBack("로그인 실패", out);
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>