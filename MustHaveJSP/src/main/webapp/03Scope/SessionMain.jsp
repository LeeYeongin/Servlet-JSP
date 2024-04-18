<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");
session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<!-- page를 이동해도 session객체는 사용(공유)가능
		 browser를 종료하면 session객체가 완전히 사라짐 -->
	<a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</body>
</html>