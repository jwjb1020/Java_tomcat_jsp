<%@ page import="el.MyELClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
MyELClass myClass = new MyELClass(); // 객체 생성
pageContext.setAttribute("myClass", myClass); // page 영역에 저장
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>영역에 저장후 메서드 호출</h3>
	001224-3000000 => ${myClass.getGender("001225-3000000") }
	<br /> 001224-2000000 => ${myClass.getGender("001225-3000000") }

	<h3>클래스명을 통해 정적 메서드 호출하기</h3>
	${ MyELClass.showGugudan(7) }

		<h3>클래스명을 통해 정적 메서드 호출하기</h3>
		${ MyELClass.showGugudan1(7) }
</body>
</html>