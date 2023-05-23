<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그</title>
</head>
<body>
<h2>useBean</h2>
<h3>자바빈즈 생샌하기</h3>
<jsp:useBean id ="person" class="common.Person" scope= "request"/>

<h3>setproperty</h3>
<jsp:setProperty name = "person" property = "name" value="임꺽정"/></body>
<jsp:setProperty name = "person" property = "age" value="41"/>

<h3>getProperty 액션 태그로 자바빈즈 속성 일기</h3>
<ul>
<li>이름 : <jsp:getProperty property="name" name="person"/>  </li>
<li>나이 : <jsp:getProperty property="age" name="person"/>  </li>
</ul>
</body>
</html>