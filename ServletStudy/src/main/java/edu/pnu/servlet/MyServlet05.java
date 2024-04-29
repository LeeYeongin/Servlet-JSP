package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/myservlet05")
public class MyServlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String[][] str = { {"1", "대한민국", "서울", "1000만"},  {"2", "미국", "워싱턴", "70만"},
			 			{"3", "일본", "도쿄", "1400만"},	 {"4", "중국", "베이징", "2100만"}};

	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("MyServlet05");
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();

		// HTML 테이블 생성
		out.println("<style>");
		out.println("table {");
		out.println("  border-collapse: collapse;");
		out.println("}");
		out.println("table, th, td {");
		out.println("  border: 1px solid black; text-align:center;");
		out.println("}");
		out.println("</style>");
		
		out.println("<table>");
		out.println("<tr>");
		out.println("<th>번호</th>");
		out.println("<th>나라</th>");
		out.println("<th>수도</th>");
		out.println("<th>인구</th>");
		out.println("</tr>");
		for(int j=0; j<str.length; j++) {			
			out.println("<tr>");
			for (int i = 0; i < str[0].length; i++) {
				out.println("<td>"+str[j][i]+"</td>");
			}
			out.println("</tr>");
		}


		out.println("</table>");

		out.close();
	}
}
