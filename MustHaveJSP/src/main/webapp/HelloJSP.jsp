<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%! //String str1 = "JSP";
	String str2 = "�ȳ��ϼ���!! ";
	String getMessage(String str1) {
		if(str1.equalsIgnoreCase("jsp"))
			return "�����սô� *^^*";
		else
			return "�������սô�^3^";
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
		ó�� ������
		<%=str1%></h2>
	<p>
		<%
		if(str1 == null)
			str1 = "null";
		
		out.println(str2 + str1 + "�Դϴ�. " + getMessage(str1));
		%>
	</p>
</body>
</html>