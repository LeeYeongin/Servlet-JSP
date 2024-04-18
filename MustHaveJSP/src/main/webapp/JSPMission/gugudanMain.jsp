<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String sel = request.getParameter("sel");

if(sel.equals("type1"))
	response.sendRedirect("gugudan1.jsp?dan=" + request.getParameter("val"));
else
	response.sendRedirect("gugudan2.jsp?col=" + request.getParameter("val"));
%>