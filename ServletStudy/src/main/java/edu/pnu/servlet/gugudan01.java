package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/gugudan01")
public class gugudan01 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("gugudan01");
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		
		
		String snum = req.getParameter("num");
		int num = 2;
		if (snum != null) {
			num = Integer.parseInt(snum);
		}
		
		out.println("<h1>" + num + "단입니다.</h1>");
		out.println("<ul>");
		for(int i=1; i<=9; i++) {
			out.printf("<li> %d * %d = %d</li>", num, i, num*i);
		}
		out.println("</ul>");
	}
}
