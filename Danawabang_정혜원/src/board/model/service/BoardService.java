package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import member.model.vo.Member;

public class BoardService {
	//-------------------------FAQ----------------------------//
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
		
		public int deleteNotices(String[] board) {
			
			Connection conn = getConnection();
			
			int result = new BoardDAO().deleteBoards(conn, board);
			
			if(result == board.length) {
				commit(conn);
			} else {
				rollback(conn);
			}
			
			close(conn);
			
			return result;
		}
		//------------------회원관리------------------------//
				// 회원관리 페이지에서 회원 데이터 가져오기
				public ArrayList<Member> selectList(PageInfo pi) {
					Connection conn = getConnection();
					
					ArrayList<Member> list = new BoardDAO().selectList(conn, pi);
					
					close(conn);
					
					return list;
				}

				// 게시글 개수 파악하기
				public int getListCount() {
					Connection conn = getConnection();
					
					int result = new BoardDAO().getListCount(conn);
					
					close(conn);
					
					return result;
				}
		}

