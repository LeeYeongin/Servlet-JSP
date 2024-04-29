package model2.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class BoardDAO extends JDBConnect{
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	// 검색 조건에 맞는 게시물의 개수를 반환합니다.
	public int selectCount() {
		int totalCount=0; // 결과(게시물 수)를 담을 변수
		
		// 게시물 수를 얻어오는 쿼리문 작성
		String query = "SELECT COUNT(*) FROM board";
		
		try {
			stmt = con.createStatement(); // 쿼리문 생성
			rs = stmt.executeQuery(query); // 쿼리 실행
			rs.next(); // 커서를 첫 번째 행으로 이동
			totalCount = rs.getInt(1); // 첫 번째 컬럼 값을 가져옴
		} catch (Exception e) {
			System.out.println("게시물 수를 구하는 중 예외 발생");
			e.printStackTrace();
		}
		
		return totalCount;
	}
	
	// 검색 조건에 맞는 게시물 목록을 반환합니다.
	public List<BoardDTO> getBoardList(){
		List<BoardDTO> bbs = new Vector<BoardDTO>(); // 결과(게시물 목록)를 담을 변수
		
		String query = "SELECT * FROM board";
		
		try {
			stmt = con.createStatement();	// 쿼리문 생성
			rs = stmt.executeQuery(query);	// 쿼리 실행
			
			while(rs.next()) { // 결과를 순회하며
				// 한 행(게시물 하나)의 내용을 DTO 에 저장
				BoardDTO dto = new BoardDTO();
				
				dto.setNum(rs.getString("num"));			//일련번호
				dto.setTitle(rs.getString("title"));		// 제목
				dto.setContent(rs.getString("content"));	// 내용
				dto.setPostdate(rs.getDate("postdate"));	// 작성일
				dto.setId(rs.getString("id"));				// 작성자 아이디
				dto.setVisitcount(rs.getString("visitcount"));	// 조회수
				
				bbs.add(dto); // 결과 목록에 저장
			}
		} catch (Exception e) {
			System.out.println("게시물 조회 중 에외 발생");
			e.printStackTrace();
		}
		
		return bbs;
	}
}
