<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp파일입니다.</title>
<%
//post방식일때는 body부분에 
//post방식 자동으로 인코딩안되서 인코딩 코드가 필요함!
request.setCharacterEncoding("utf-8");
%>
</head>
<body>
<h1>사용자가 입력한 데이터를 서버에서 받는다.</h1>
<!-- EL(Expression Language) 표기법 -->
<p>아이디: ${param.userid}</p>

</body>
</html>