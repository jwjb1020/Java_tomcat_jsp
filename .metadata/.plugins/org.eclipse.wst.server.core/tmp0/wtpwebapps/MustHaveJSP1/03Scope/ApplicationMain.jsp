<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
</head>
<body>
<h2>application  영여의 공유</h2>
<%
Map<String,Object> maps = new HashMap<>();
maps.put("actor1", new Person("조원준",30));
maps.put("actor2", new Person("nana",28));


Map<String,Object> maps1 = new HashMap<>();
maps1.put("pageInteger", 1000);
maps1.put("pageString", "페이지 영역 문자열");
maps1.put("pagePerson", new Person("조원준", 99));

maps1.put("requestSting", "request 영역의 문자열");
maps1.put("requestPerson", new Person("jwj", 27));

ArrayList<String> lists = new ArrayList<>();
lists.add("리스트");
lists.add("컬렉션");
maps1.put("lists", lists);
// maps.put("pageint", 100);
// maps.put("pageString", "페이지");
// maps.put("request",request.getAttribute("requstString"));
// Person rPerson = (Person)(request.getAttribute("requestPerson"));
// maps.put("request2", rPerson);
// maps.put("session",session.getAttribute("lists"));
application.setAttribute("maps", maps);
application.setAttribute("maps1", maps1);


%>
application 영역에 속성이 저장되었습니다.
</body>
</html>