<%@page import="model.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="model.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
DeptDAO deptDAO = new DeptDAO();
List<DeptVO> deptlist= deptDAO.selectAll();

%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$( function(){
	$("#deptSelect").on("change", function(){
		$.ajax({
			url:"emplist.jsp",
			data:{"deptid":$(this).val()},
			type:"get",
			success:function(responseData){
				$("#here").html(responseData);
			}
		});
		
	});
});
</script>
</head>
<body>
<h1>부서의 직원목록</h1>
<select id="deptSelect">
<option value="부서코드">부서이름</option>
<% for(DeptVO dept:deptlist){
	out.print("<option value='"+
			dept.getDepartment_id()
			+"'>"+dept.getDepartment_name()+"</option>");
}
%>
</select>
<div id="here">여기 값이 출력됩니다...</div>
</body>
</html>