<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" >
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>등록일</th>
	</tr>
	 <c:forEach items="${list}" var="item">
		<tr>
			<td>${item.id}</td>
			<td>${item.pass}</td>
			<td>${item.name}</td>
			<td>${item.regidate}</td>
		</tr>
     </c:forEach>
	</table>
</body>
</html>