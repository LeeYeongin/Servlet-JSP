<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - Response</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp"); // 서버에서 브라우저로 다시 redirect하라고 요청 -> 브라우저에서 서버로 redirect 요청
}
else {
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
	.forward(request, response); // 서버 내부에서 바로 redirect?
}
%>
</body>
</html>