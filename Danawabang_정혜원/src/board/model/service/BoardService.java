package board.model.service;

import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class BoardService {
	
	//관리자게시판 FAQ 리스트전체개수
	public int getFListCount() {
		Connection conn = getConnection();
		int listCount = new BoardDAO().getFListCount(conn);

		close(conn);
		return listCount;
	}
	//관리자게시판 FAQ 리스트 가져오기
	public ArrayList<Board> selectFList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Board> list = new BoardDAO().selectFList(conn, pi);
		close(conn);
		return list;
	}
	//관리자게시판 FAQ 추가
	public int insertFBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDAO().insertFBoard(conn, b);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;

	}
	//관리자게시판 FAQ 상세내용 조회
	public Board selectFBoard(int bId) {
		Connection conn = getConnection();
		BoardDAO dao = new BoardDAO();
		
		int result = dao.updateFCount(conn, bId);
		
		Board board = null;
		if(result > 0) {
			board = dao.selectFBoard(conn, bId);
			
			if(board != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
		} else {
			rollback(conn);
		}
			close(conn);
		
		return board;
	}
	//관리자게시판 FAQ 수정
	public int updateFBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDAO().updateFBoard(conn, b);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	//고객센터 FAQ 리스트
	public ArrayList<Board> selectFList() {
		Connection conn = getConnection();
		ArrayList<Board> list = new BoardDAO().selectFList(conn);
		close(conn);
		return list;
	}
	// 관리자게시판 삭제
	public int deleteFBoard(int bId) {
	      Connection conn = getConnection();
	      int result = new BoardDAO().deleteFBoard(conn, bId);
	      
	      if(result > 0) {
	         commit(conn);
	      } else {
	         rollback(conn);
	      }
	      close(conn);
	      
	      return result;
	   }
}
