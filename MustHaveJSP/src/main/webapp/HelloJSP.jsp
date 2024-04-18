<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%! //String str1 = "JSP";
	String str2 = "안녕하세요!! ";
	String getMessage(String str1) {
		if(str1.equalsIgnoreCase("jsp"))
			return "열공합시다 *^^*";
		else
			return "파이팅합시다^3^";
	}
%>
<%String str1 = request.getParameter("lang"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HelloJSP</title>
</head>
<body>
	<h2>
		처음 만들어보는
		<%=str1%></h2>
	<p>
		<%
		if(str1 == null)
			str1 = "null";
		
		out.println(str2 + str1 + "입니다. " + getMessage(str1));
		%>
	</p>
</body>
</html>