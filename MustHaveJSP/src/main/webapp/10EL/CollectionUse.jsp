<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL) - 컬렉션</title>
</head>
<body>
<h2>List 컬렉션</h2>
<%
List<Object> aList = new ArrayList<Object>();
aList.add("청해진");
aList.add(new Person("장보고", 28));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0번재 요소 : ${ Ocean[0] }</li>
	<li>1번재 요소 : ${ Ocean[1].name }, ${ Ocean[1].age }</li>
	<li>2번재 요소 : ${ Ocean[2] }</li><!-- 값이 없으므로 출력되지 않음 -->
</ul>
<h2>Map 컬렉션</h2>
<%
Map<String, String> map = new HashMap<String, String>();
map.put("한글", "훈민정음");
map.put("Eng", "English");
pageContext.setAttribute("King", map);
%>
<ul>
	<li>영문 Key : ${ King["Eng"] }, ${ King['Eng'] }, ${ King.Eng }</li> 
	<li>한글 Key : ${ King["한글"] }, ${ King['한글'] }, \${ King.한글 }<!-- 마지막 형식으로 작성하면 오류 발생 --></li> 
</ul>
</body>
</html>