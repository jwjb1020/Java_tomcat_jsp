<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	out.print("<h2>map에 저장된 데이터</h2> <br/>");
	Map<String, Object> maps = (Map<String, Object>) application.getAttribute("maps");
	Set<String> keys = maps.keySet();

	for (String key : keys) {
		Object object = maps.get(key);
		if (object instanceof Person) {
			Person person = (Person) object;
			out.print(String.format("key : %s name : %S, age : %d<br/>", key, person.getName(), person.getAge()));
		}
	}

	out.print("<h2>map1에 저장된 데이터</h2> <br/>");
	Map<String, Object> maps1 = (Map<String, Object>) application.getAttribute("maps1");
	Set<String> keys1 = maps1.keySet();
	for (String key : keys1) {
		Object object = maps1.get(key);
		if (object instanceof Person) {
			Person person = (Person) object;
			out.print(String.format("key : %s name : %S, age : %d<br/>", key, person.getName(), person.getAge()));
		} else if (object instanceof ArrayList) {
			ArrayList<String> lists = (ArrayList<String>) object;
			for (String s : lists) {
		out.print(String.format("key : %s, value : %s , index : %d <br/>", key, s, lists.indexOf(s)));

			}
		}

		else {
			out.print(String.format("key : %s, value : %s <br/>", key, object));
		}

	}
	%>
</body>
</html>