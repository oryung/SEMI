package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.BoardAttachment;
import board.model.vo.PageInfo;
import member.model.vo.Member;

public class BoardService {
	//-------------------------일반 게시판 전체 ----------------------------//
	// 관리자 게시판 BOARD 게시글 전체 개수(between 없는 버전)
	public int getBListCount(Board board) {
		Connection conn = getConnection();
		
		int listCount = 0;
		
		listCount = new BoardDAO().getBListCount(conn, board);

		close(conn);

		return listCount;
	}

	// 관리자 게시판 BOARD 게시글 전체 개수(between 있는 버전)
	public int getBsListCount(Board board, Board board2) {
		Connection conn = getConnection();
		
		int listCount = new BoardDAO().getBsListCount(conn, board, board2);

		close(conn);
		return listCount;
	}
	
	// 관리자 게시판 BOARD 게시글 INSERT
	public int insertBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDAO().insertBoard(conn, b);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);

		return result;

	}
	// 관리자게시판 FAQ 수정
	public int updateBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDAO().updateBoard(conn, b);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	// 관리자게시판 삭제
	public int deleteBoard(int bId) {
		Connection conn = getConnection();
		int result = new BoardDAO().deleteBoard(conn, bId);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);

		return result;
	}
	// 관리자게시판 여러개 삭제
	public int deleteBoards(String[] board) {
		Connection conn = getConnection();

		int result = new BoardDAO().deleteBoards(conn, board);

		if (result == board.length) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}
	//-------------------------사진 게시판 전체 ----------------------------//
	//관리자게시판 글+사진 등록
			public int insertThumbnail(Board b, ArrayList<BoardAttachment> fileList) {
				Connection conn = getConnection();
				
				BoardDAO dao = new BoardDAO();
				
				int result1 = dao.insertBoard(conn, b);
				int result2 = dao.insertThumbnail(conn, fileList);
				
				if(result1 > 0 && result2 > 0 ) {
					commit(conn);
				} else {
					rollback(conn);
				}
				
				close(conn);
				
				return result1;
			}
			//게시글 별 사진 가져오기
			public ArrayList<BoardAttachment> selectThumbnail(int bId) {
				Connection conn = getConnection();
				ArrayList<BoardAttachment> list = new BoardDAO().selectThumbnail(conn, bId);
				close(conn);

				return list;
			}
			// 특정 게시글 사진 업데이트
			public int updateThumbnail(Board b, ArrayList<BoardAttachment> fileList) {
				      Connection conn = getConnection();
				      
				      BoardDAO dao = new BoardDAO();
				      
				      int result1 = dao.updateBoard(conn, b);
				      int result2 = dao.updateThumbnail(conn, fileList);
				      
				      if(result1 > 0 && result2 > 0) {
				         commit(conn);
				      } else {
				         rollback(conn);
				      }
				      close(conn);
				      
				      return result1;      
				   }
				// 특정 게시글 사진 삭제
				   public int deleteThumbnail(int bId) {
				      Connection conn = getConnection();
				      
				      BoardDAO dao = new BoardDAO();
				      
				      int result1 = dao.deleteBoard(conn, bId);
				      int result2 = dao.deleteThumbnail(conn, bId);
				      
				      if(result1 > 0 && result2 > 0) {
				         commit(conn);
				      } else {
				         rollback(conn);
				      }
				      close(conn);
				      
				      return result1;      
				   }
				// 관리자 게시판에서 게시글 여러 개를 삭제할 시 해당 게시글에 속했던 사진들 삭제
				   public int deleteThumbnails(String[] board) {
				       Connection conn = getConnection();
				       BoardDAO dao = new BoardDAO();
				       
				       int result1 = dao.deleteBoards(conn, board);

				         if (result1 == board.length) {
				            for(int i = 0; i < board.length; i++) {
				               
				               int result2 = dao.deleteThumbnail(conn, Integer.parseInt(board[i]));
				              
				               if(result2 > 0) {
				                  commit(conn);
				               } else {
				                  rollback(conn);
				               }
				            }
				         } else {
				            rollback(conn);
				         }

				         close(conn);

				      return result1;
				   }
				   
				   
	// -------------------------FAQ----------------------------//
		// 관리자게시판 FAQ 리스트 가져오기
		public ArrayList<Board> selectFList(PageInfo pi) {
			Connection conn = getConnection();
			ArrayList<Board> list = new BoardDAO().selectFList(conn, pi);
			close(conn);
			return list;
		}

		// 관리자게시판 FAQ 상세내용 조회
		public Board selectFBoard(int bId) {
			Connection conn = getConnection();
			BoardDAO dao = new BoardDAO();

			int result = dao.updateCount(conn, bId);

			Board board = null;
			if (result > 0) {
				board = dao.selectFBoard(conn, bId);

				if (board != null) {
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
		// 고객센터 FAQ 리스트
		public ArrayList<Board> selectFList() {
			Connection conn = getConnection();
			ArrayList<Board> list = new BoardDAO().selectFList(conn);
			close(conn);
			return list;
		}
		// ------------------------- 공지사항 --------------------------- //
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

		// 공지사항 갖고 오기
		public Board selectNBoard(int bId) {
			Connection conn = getConnection();

			BoardDAO bDAO = new BoardDAO();

			int result = bDAO.updateCount(conn, bId);

			Board board = null;
			if (result > 0) {
				board = bDAO.selectNBoard(conn, bId);

				if (board != null) {
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

		// ------------------회원관리------------------------//
		// 회원관리 페이지에서 회원 데이터 가져오기
		public ArrayList<Member> selectMList(PageInfo pi) {
			Connection conn = getConnection();

			ArrayList<Member> list = new BoardDAO().selectMList(conn, pi);

			close(conn);

			return list;
		}

		// 게시글 개수 파악하기
		public int getMListCount() {
			Connection conn = getConnection();

			int result = new BoardDAO().getMListCount(conn);

			close(conn);

			return result;
		}
		//----------------------프로모션------------------//
		//관리자게시판 프로모션 전체 리스트 가져오기
		public ArrayList<Board> selectPList(PageInfo pi) {
			Connection conn = getConnection();
			ArrayList<Board> list = new BoardDAO().selectPList(conn, pi);
			close(conn);
			return list;
		}
		//관리자게시판 프로모션 사진 리스트 가져오기
		public ArrayList<BoardAttachment> selectThumbnailList() {
			Connection conn = getConnection();
			ArrayList<BoardAttachment> list = new BoardDAO().selectThumbnailList(conn);
			close(conn);
			return list;
		}
		
		//관리자게시판 프로모션 상세보기
		public Board selectPBoard(int bId) {
			Connection conn = getConnection();
			BoardDAO dao = new BoardDAO();

			int result = dao.updateCount(conn, bId);

			Board board = null;
			if (result > 0) {
				board = dao.selectPBoard(conn, bId);

				if (board != null) {
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
	}
