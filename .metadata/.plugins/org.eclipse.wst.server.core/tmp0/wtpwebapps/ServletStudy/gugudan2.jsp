<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String scol = request.getParameter("col");
int col = 3;
if (scol != null) col = Integer.parseInt(scol);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	gugudan2
	<br/>
	<%
	for (int i = 2; i <= 9; i += col) {
		
		for(int k =1; k<=9; k++){
	
		for (int j = 1; j <= col; j++) {
			if(9< i+j) break;
			out.print(String.format("%d * %d = %d", i+j, k ,(i+j)*k));
	}		
		out.print("<br>");
	}
	out.print("<br>");
	}
			
			
	%>

</body>
</html>