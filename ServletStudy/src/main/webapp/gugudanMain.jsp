<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String sel = request.getParameter("sel");
String val = request.getParameter("val");


if(sel != null && sel.equals("gugudanType1")){
	response.sendRedirect("gugudan.jsp?num="+ val);
	
} else { 
// 	response.sendRedirect("gugudan2.jsp?col=" + val);
	request.getRequestDispatcher("gugudan2.jsp?col=" + val).forward(request, response);
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