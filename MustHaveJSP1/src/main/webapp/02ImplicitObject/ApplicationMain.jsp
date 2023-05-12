<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>
	<h2>설정한 내용 읽기</h2>
	초기화 매개변수 :
	<%=application.getInitParameter("INIT_PARAM")%>
	<h2>물리적 경로</h2>
	application 내장객체 :
	<%=application.getRealPath("/02ImpicitObject")%>
	<h2>선언부에서 application 내장 객체 사용</h2>
	<%!public String useImplicitObject() {
		return this.getServletContext().getRealPath("/02ImpicitObject");
	}

	public String useImplicitObject(ServletContext app) {
		return app.getRealPath("/02ImpicitObject");
	}%>
	<ul>
	<li>this 사용 : <%= useImplicitObject() %></li>
	<li>내장객체 인수 저장 : <%= useImplicitObject(application) %></li>
	</ul>
</body>
</html>