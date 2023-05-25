
<%@ page import="java.util.Date"%>
<%@ page import="common.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="directVar" value="100" />
	<c:set var="elVar" value="${direciVar mod 5 }" />
	<c:set var="expVar" value="<%=new Date()%>" />
	<c:set var="between">변수 이렇게 설정</c:set>

	<h4>el를 사용해 변수 출력</h4>
	<ul>
		<li>directVal : ${pageScope.direcVal }</li>
		<li>elVar : ${elVar }</li>
		<li>expVar : ${expVar }</li>
		<li>between : ${between }</li>
	</ul>
	
	<h4>자바빈즈 생성 1 - 생성자 사용</h4>
	<c:set var="personVar1" value='<%= new Person("박문수",50) %>' scope="request"/>
	<ul>
        <li>이름 : ${ requestScope.personVar1.name }</li>
        <li>나이 : ${ personVar1.age}</li>
    </ul>
 
    <h4>자바빈즈 생성 2 - target, property 사용</h4>
    <c:set var="personVar2" value="<%= new Person() %>" scope="request" />
    <c:set target="${personVar2 }" property="name" value="정약용" />
    <c:set target="${personVar2 }" property="age" value="60" />
    <ul>
        <li>이름 : ${ personVar2.name }</li>
        <li>나이 : ${ requestScope.personVar2.age }</li>
    </ul> 
</body>
</html>