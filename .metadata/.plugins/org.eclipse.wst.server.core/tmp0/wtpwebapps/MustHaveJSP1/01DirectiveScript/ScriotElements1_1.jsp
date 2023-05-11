<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!public int add(int num1, int num2) {
		return num1 + num2;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%
	int result = add(10, 20);
	int n1 =0;
	int n2 =0;
	String sn1 =request.getParameter("n1");
	String sn2 = request.getParameter("n2");
	if (sn1 != null && sn2 != null){
		n1 = Integer.parseInt(sn1);
		n2 = Integer.parseInt(sn2);
	}
	%>
	
	덧셈결과 1 : <%=result%><br /> 
	덧셈결과 2 : <%=add(30, 40)%><br/>
	리퀘스트 : <%= n1 + n2 %>  
	


</body>
</html>