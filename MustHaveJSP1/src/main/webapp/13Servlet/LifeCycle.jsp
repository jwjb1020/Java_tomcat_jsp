<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function requestAction(frm,met) {
	if(met ==1){
		frm.method = 'get';
	}
	else {
		frm.method = 'post';
		
	}
	frm.submit();
	
}
</script>
<h2>서블릿 수명주기</h2>

</body>
</html>