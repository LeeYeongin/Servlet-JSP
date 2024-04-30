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
		<table border="1" style="border-collapse: collapse;">
	<tr>
		<th>num</th>
		<th>title</th>
		<th>content</th>
		<th>postdate</th>
		<th>visitcount</th>
	</tr>
	 <c:forEach items="${list}" var="item">
		<tr>
			<td>${item.num}</td>
			<td>${item.title}</td>
			<td>${item.content}</td>
			<td>${item.postdate}</td>
			<td style="text-align: right">${item.visitcount}</td>
		</tr>
     </c:forEach>
	</table>
</body>
</html>