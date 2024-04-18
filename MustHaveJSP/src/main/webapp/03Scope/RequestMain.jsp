<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestString", "requset 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requset 영역</title>
</head>
<body>
	<h2>request 영역의 속성값 삭제하기</h2>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestInteger"); // 없는 변수를 삭제하려고 해도에러 없음
	%>
	<h2>request 영역의 속성값 읽기</h2>
	<%
	Person rPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul>
		<li>String 객체 : <%= request.getAttribute("requestString") %></li>
		<li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
	</ul>
	
	<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
	<!-- 페이지를 이동해도 request 객체 사용가능(request 파라미터를 전달해 주기 때문 -> forwarding의 경우에만 가능) -->
	<!-- redirect로 페이지를 이동하면 request가 새로 생성되므로 request객체 공유 불가 -->
	<%--
	request.getRequestDispatcher(
				"RequestForward.jsp?paramHan=한글&paramEng=English")
				.forward(request, response);
	 --%>
</body>
</html>