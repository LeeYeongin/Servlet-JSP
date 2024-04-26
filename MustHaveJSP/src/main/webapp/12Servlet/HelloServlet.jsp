<!-- 일반적으로 WEB-INF안에 있음. WEB-INF안의 jsp파일은 바로 실행 불가 -> controller를 통해 실행해야함  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloServlet.jsp</title>
</head>
<body>
	<h2>web.xml에서 매핑 후 JSP에서 출력하기</h2>
	<p>
		<strong><%= request.getAttribute("message") %></strong>
		<br/>
		<a href="./HelloServlet.do">바로가기</a>
	</p>
</body>
</html>