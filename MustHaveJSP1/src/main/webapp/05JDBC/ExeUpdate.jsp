<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBCConnect1" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
<h2>회원추가 테스트(executeUPdate사용)</h2>
<%
//db연결
JDBCConnect1 jdbc = new JDBCConnect1();
Connection con = jdbc.getConnection();
if(con == null){
	out.println("fail");
	return;
}

String id = "test1";
String pass = "1111";
String name = "테스트 회원1";

String sql = "insert into member (id,pass,name) values (?,?,?)";
PreparedStatement psmt = con.prepareStatement(sql);
psmt.setString(1, id);
psmt.setString(2, pass);
psmt.setString(3, name);

int inResult = psmt.executeUpdate();
out.println(inResult + "행이 입력됨");

jdbc.closeConnection(con);
%>
</body>
</html>