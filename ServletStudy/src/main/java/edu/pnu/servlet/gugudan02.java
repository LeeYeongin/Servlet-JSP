package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan02")
public class gugudan02 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("gugudan02");
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();

		String sdir = req.getParameter("dir");
		String dir = "ver";
		if (sdir != null) {
			dir = sdir;
		}

		if (dir.equals("ver"))
			printVer(out);
		else
			printHor(out);
	}

	void printVer(PrintWriter out) {
		out.println("<table>");
		for (int i = 2; i <= 9; i++) {
			for (int j = 1; j <= 9; j++) {
				out.println("<tr>");
				out.printf("<td>%d * %d = %d&nbsp</td>", i, j, i * j);
				out.println("</tr>");
			}
			out.println("<tr><td>&nbsp<td/></tr>");
		}
		out.println("</table>");
	}

	void printHor(PrintWriter out) {
		out.println("<style>");
		out.println("td {");
		out.println("  width: 100px;"); // 각 셀의 너비를 100px로 설정
		out.println("}");
		out.println("</style>");
		
		out.println("<table>");
		for (int i = 1; i <= 9; i++) {
			out.println("<tr>");
			for (int j = 2; j <= 9; j++) {
				out.printf("<td>%d * %d = %d&nbsp</td>", j, i, i * j);
			}
			out.println("</tr>");
		}
		out.println("</table>");
	}
}
