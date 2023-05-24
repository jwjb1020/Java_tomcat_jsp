<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>list collection</h2>
	<%
	List<Object> aList = new ArrayList<>();
	aList.add("청해진");
	aList.add(new Person("장보고", 28));
	pageContext.setAttribute("Ocean", aList);
	%>

	<ul>
		<li>0번째 요소 : ${ Ocean[0] }</li>
		<li>1번째 요소 : ${ Ocean[1].name }, ${Ocean[1].age }</li>
		<li>2번째 요소 : ${ Ocean[2] }</li>
	</ul>

	<h2>Map collection</h2>
	<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("한글", "훈민정음");
	map.put("Eng", "English");
	pageContext.setAttribute("king", map);
	%>
	<ul>
		<li>영문 key : ${king["Eng"] },${king["Eng"] },${king["Eng"] }</li>
		<li>영문 key : ${king["한글"] },${king["한글"] }, \$king["한글"] }</li>
	</ul>
</body>
</html>