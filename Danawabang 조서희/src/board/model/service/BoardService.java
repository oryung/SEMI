package board.model.service;

import static common.JDBCTemplate.*;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;

public class BoardService {

	// ------------------------- 공지사항 --------------------------- //
	// 공지사항 게시글 전체 개수
	public int getNListCount() {
		Connection conn = getConnection();
		
		int listCount = new BoardDAO().getNListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	// 중요 공지사항 게시글 전체 개수
	public int getFNListCount() {
		Connection conn = getConnection();
		
		int fNListCount = new BoardDAO().getFNListCount(conn);
		
		close(conn);
		
		return fNListCount;
	}

	// 공지사항 전체 게시글 리스트 
	public ArrayList<Board> selectNList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Board> nList = new BoardDAO().selectNList(conn, pi);
		
		close(conn);
		
		return nList;
	}

	// 공지사항 등록
	public int insertNotice(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDAO().insertNotice(conn, b);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 공지사항 갖고 오기
	public Board selectNBoard(int bId) {
		Connection conn = getConnection();
		
		BoardDAO bDAO = new BoardDAO();
		
		int result = bDAO.updateCount(conn, bId);
		
		Board board = null;
		if (result > 0) {
			board = bDAO.selectNBoard(conn, bId);
			
			if(board != null) {
				commit(conn);
			} else {
				rollback(conn);
			}
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return board;
	}

	// 공지사항 수정
	public int updateNBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDAO().updateNBoard(conn, b);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	// 게시글 삭제
	public int deleteBoard(int bId) {
		Connection conn = getConnection();
		int result = new BoardDAO().deleteBoard(conn, bId);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
