<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int add(int num1, int num2){
	return num1 + num2;
}
%>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>스크립트 요소</title>
</head>
<body>
<%
int result = 0;
try {
	result = add(Integer.parseInt(num1),Integer.parseInt(num2));
}
catch(Exception e){
	out.println("숫자값을 입력해주세요");
}
%>
<br/>
덧셈 결과 1 : <%= result %> <br/>
덧셈 결과 2 : <%= add(30, 40)%>
</body>
</html>