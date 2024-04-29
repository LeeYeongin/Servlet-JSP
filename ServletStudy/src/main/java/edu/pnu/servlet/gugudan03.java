package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan03")
public class gugudan03 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("gugudan03");
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();

		String sdan = req.getParameter("dan");
		int dan = 3;
		if (sdan != null) {
			dan = Integer.parseInt(sdan);
		}
		
		printDan(out, dan);

	}

	void printDan(PrintWriter out, int dan) {
		out.println("<style>");
		out.println("td {");
		out.println("  width: 100px;"); // 각 셀의 너비를 100px로 설정
		out.println("}");
		out.println("</style>");
		
		out.println("<table>");
		for(int i=2; i<=9; i+=dan){
			for(int j=1; j<10; j++)
			{
				out.println("<tr>");
				for(int k=0; k<dan; k++){
					if(10 <= i+k){
						break;
					}
					out.printf("<td>%d * %d = %d&nbsp</td>", i+k, j, (i+k) * j);
				}
				out.println("</tr>");
			}
			out.println("<tr><td>&nbsp<td/></tr>");
		}
		out.println("</table>");
	}
}
