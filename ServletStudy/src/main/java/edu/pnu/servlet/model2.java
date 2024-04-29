package edu.pnu.servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model2.board.BoardDAO;
import model2.board.BoardDTO;
import model2.member.MemberDAO;
import model2.member.MemberDTO;

@WebServlet("/musthave")
public class model2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO mdao;
	BoardDAO bdao;

	@Override
	public void init() throws ServletException {
		// application 내장 객체 얻기
		ServletContext application = this.getServletContext();
		
		// 연결 및 DAO 생성
		mdao = new MemberDAO(application);
		bdao = new BoardDAO(application);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("model2");
		
		String stable = req.getParameter("table");
		String table = "member";
		if (stable != null) {
			table = stable;
		}
		
		if(table.equals("board"))
			printBoard(req, res);
		else
			printMember(req, res);
	}
	
	void printBoard(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int bcnt = bdao.selectCount();
		List<BoardDTO> Lbdto = bdao.getBoardList();
		
		req.setAttribute("list", Lbdto);
		req.getRequestDispatcher("/01model2/board.jsp").forward(req, res);
	}
	
	void printMember(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int mcnt = mdao.selectCount();
		List<MemberDTO> Lmdto = mdao.getMemList();
		
		req.setAttribute("list", Lmdto);
		req.getRequestDispatcher("/01model2/member.jsp").forward(req, res);
	}
}
