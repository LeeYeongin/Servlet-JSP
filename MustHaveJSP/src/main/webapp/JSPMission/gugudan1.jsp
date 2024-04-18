<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%int dan = 0; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	try{
		dan = Integer.parseInt(request.getParameter("dan"));
		for(int i=1; i<=9; i++){
			out.print(dan + " * "+ i +" = " + dan*i + "<br/>");
		}
	}catch(Exception e){
		out.print("단을 입력해주세요");
	}
%>
</body>
</html>