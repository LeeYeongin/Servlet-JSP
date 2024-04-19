
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String userId = request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<style>
    table {
        border-collapse: collapse;
    }
</style>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<table border=1>
	<%
	// DB에 연결
	JDBConnect jdbc = new JDBConnect();
	
	// 쿼리문 생성: 사용자 musthave가 작성한 board 목록을 출력하세요.(num, title, content, name, postdate, visitcount)
	String sql = "SELECT num, title, content, name, postdate, visitcount" +
				 " FROM board, member" +
				 " WHERE board.id=? AND member.id = board.id";
	
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1, userId);
	
	// 쿼리 수행
	ResultSet rs = psmt.executeQuery();
	ResultSetMetaData meta = rs.getMetaData();
	int cnt = meta.getColumnCount();
	%>
	<tr>
        <%
        // Column headers
        for (int i = 1; i <= cnt; i++) {
            %>
            <th><%= meta.getColumnName(i) %></th>
            <%
        }
        %>
    </tr>

	<%	
	// 결과 확인(웹 페이지에 출력)
	while(rs.next()){
	%>
	<tr>
		<%	
		for(int i=1; i<=cnt; i++){
		%>
			<td><%= rs.getString(i) %></td>			
			<!-- //out.println(String.format("%s", rs.getString(i))); -->
			
		<%
		}
		//out.println("<br/>");
		%>
	</tr>
	<%
	}
	// 연결 닫기
	jdbc.close();
	%>
	</table>
</body>
</html>