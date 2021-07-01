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
import board.model.vo.Cart;
import board.model.vo.CartWhole;
import board.model.vo.Orders;
import board.model.vo.PageInfo;
import board.model.vo.Product;
import board.model.vo.ProductAttachment;
import board.model.vo.ProductOption;
import board.model.vo.Reply;
import member.model.vo.Member;

public class BoardService {
	
	//-------------------------일반 게시판 전체----------------------------//
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
	   // 관리자게시판  수정
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
	
	// ------------------------- 사진게시판 전체 ----------------------------//
	   
	// 사진게시판 게시글 등록
		public int insertThumbnail(Board b, ArrayList<BoardAttachment> fileList) {
			Connection conn = getConnection();
			
			BoardDAO dao = new BoardDAO();
			
			int result1 = dao.insertBoard(conn, b);
			int result2 = dao.insertThumbnail(conn, fileList);
			
			if(result1 > 0 && result2 > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
			close(conn);
			
			return result1;		
		}   
	
	// 게시글 별 사진 가져오기
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

	// ------------------셀프가이드 관리------------------------//

	// (관리자게시판) 셀프가이드 전체 게시글 리스트
	public ArrayList<Board> selectSList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDAO().selectSList(conn, pi);
		
		close(conn);
		
		return list;
	}

	// (관리자게시판) 셀프가이드 게시글 가져오기
	public Board selectSBoard(int bId) {
		Connection conn = getConnection();

		BoardDAO bDAO = new BoardDAO();

		int result = bDAO.updateCount(conn, bId);

		Board board = null;
		if (result > 0) {
			board = bDAO.selectSBoard(conn, bId);

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

	// (일반게시판) 셀프가이드 페이지
	public ArrayList selectSList(int i) {
		Connection conn = getConnection();
		
		ArrayList list = null;
		
		BoardDAO dao = new BoardDAO();		
		if(i == 1) {
			list = dao.selectSList(conn);	
		} else { 
			list = dao.selectThumbnailList(conn);	
		}

		close(conn);

		return list;
	}

	// ----------------------프로모션------------------//
	// 관리자게시판 프로모션 전체 리스트 가져오기
	public ArrayList<Board> selectPList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Board> list = new BoardDAO().selectPList(conn, pi);
		close(conn);
		return list;
	}

	// 관리자게시판 프로모션 사진 리스트 가져오기
	public ArrayList<BoardAttachment> selectThumbnailList() {
		Connection conn = getConnection();
		ArrayList<BoardAttachment> list = new BoardDAO().selectThumbnailList(conn);
		close(conn);
		return list;
	}

	// 관리자게시판 프로모션 상세보기
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

	// ------------------ 나의 활동 댓글관리 --------------------- //
	// 댓글 목록 가져오기
	public ArrayList<Reply> selectMyReply(PageInfo pi, String userId) {
		Connection conn = getConnection();

		ArrayList<Reply> list = new BoardDAO().selectMyReply(conn, pi, userId);

		close(conn);

		return list;
	}
	
	public Board selectBoard(int bId) {
		Connection conn = getConnection();
		
		Board b = new BoardDAO().selectBoard(conn, bId);
		
		close(conn);

		return b;
	}

	// 댓글 개수 파악하기
	public int getRListCount(String userId) {
		Connection conn = getConnection();

		int result = new BoardDAO().getRListCount(conn, userId);

		close(conn);

		return result;
	}

	// 댓글 삭제하기
	public int deleteReplys(String[] rId) {
		Connection conn = getConnection();

		int result = new BoardDAO().deleteReplys(conn, rId);

		if (result == rId.length) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}

	// ------------------1:1게시판-------------------------------------
	// 전체 1:1 게시글 리스트
	public ArrayList<Board> selectOTOList(PageInfo pi) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDAO().selectOTOList(conn, pi);

		close(conn);

		return list;
	}

	// 1:1 게시글 상세조회
	public Board selectOTOBoard(int bId) {
		Connection conn = getConnection();

		BoardDAO bDAO = new BoardDAO();

		int result = bDAO.updateCount(conn, bId);

		Board board = null;
		if (result > 0) {
			board = bDAO.selectOTOBoard(conn, bId);

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

	// 댓글 리스트
	public ArrayList<Reply> selectOTOReplyList(int bId) {
		Connection conn = getConnection();
		ArrayList<Reply> replyList = new BoardDAO().selectOTOReplyList(conn, bId);
		close(conn);
		return replyList;
	}

	// 댓글 갯수
		public int[] replyCount(int[] bIds) {
			Connection conn = getConnection();

			int[] replyCount = new BoardDAO().replyCount(conn, bIds);

			close(conn);

			return replyCount;
		}

	// 댓글 등록
	public ArrayList<Reply> insertReply(Reply r) {
		Connection conn = getConnection();

		BoardDAO dao = new BoardDAO();

		int result = dao.insertReply(conn, r);

		ArrayList<Reply> list = null;
		if (result > 0) {
			commit(conn);
			list = dao.selectOTOReplyList(conn, r.getBoardId());
		} else {
			rollback(conn);
		}

		close(conn);
		return list;
	}

	// 댓글 수정
	public ArrayList<Reply> updateReply(Reply r) {
		Connection conn = getConnection();

		BoardDAO dao = new BoardDAO();
		int result = dao.updateReply(conn, r);

		ArrayList<Reply> list = null;
		if (result > 0) {
			list = dao.selectOTOReplyList(conn, r.getBoardId());
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return list;
	}

	// 댓글 삭제
	public int deleteReply(int replyId) {
		Connection conn = getConnection();
		int result = new BoardDAO().deleteReply(conn, replyId);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);

		return result;
	}
			            
	///////////////////////////// 상품관리 게시판///////////////////////////////
	// 상품관리 게시판 전체 리스트 개수 조회
	public int getProductCount() {
		Connection conn = getConnection();

		int listCount = 0;

		listCount = new BoardDAO().getProductCount(conn);

		close(conn);

		return listCount;
	}

	// 상품관리 게시판 전체 리스트 조회
	public ArrayList<Product> selectProductList(PageInfo pi) {
		Connection conn = getConnection();

		ArrayList<Product> list = new BoardDAO().selectProductList(conn, pi);

		close(conn);

		return list;
	}

	// 상품관리 게시판 상품 등록
	public int insertProductThumbnail(Product p, ArrayList<ProductAttachment> fileList,
			ArrayList<ProductOption> optionList) {
		Connection conn = getConnection();
		BoardDAO dao = new BoardDAO();

		int result1 = dao.insertProduct(conn, p);
		int result2 = dao.insertProductThumbnail(conn, fileList);
		int result3 = dao.insertProductOption(conn, optionList);

		if (result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result1;
	}

	// 상품 게시글 가져오기
	public Product selectProductBoard(int pId) {
		Connection conn = getConnection();
		Product product = new BoardDAO().selectProductBoard(conn, pId);
		close(conn);
		return product;
	}

	// 상품 게시글 사진 가져오기
	public ArrayList<ProductAttachment> selectProductThumbnail(int pId) {
		Connection conn = getConnection();
		ArrayList<ProductAttachment> list = new BoardDAO().selectProductThumbnail(conn, pId);
		close(conn);
		return list;
	}

	// 상품별 옵션 가져오기
	public ArrayList<ProductOption> selectProductOption(int pId) {
		Connection conn = getConnection();
		ArrayList<ProductOption> list = new BoardDAO().selectProductOption(conn, pId);
		close(conn);
		return list;
	}

	// 상품 게시글 글+사진+옵션 업데이트
	public int updateProductThumbnail(Product p, ArrayList<ProductAttachment> fileList,
			ArrayList<ProductOption> optionList) {
		Connection conn = getConnection();

		BoardDAO dao = new BoardDAO();

		int result1 = dao.updateProductBoard(conn, p);
		int result2 = dao.updateProductThumbnail(conn, fileList);
		int result3 = dao.updateProductOption(conn, optionList);

		if (result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result1;
	}

	// 상품 게시글 삭제
	public int deleteProductThumbnail(int pId) {
		Connection conn = getConnection();

		BoardDAO dao = new BoardDAO();

		int result1 = dao.deleteProductBoard(conn, pId);
		int result2 = dao.deleteProductThumbnail(conn, pId);
		int result3 = dao.deleteProductOption(conn, pId);

		if (result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);

		return result1;
	}

	// 상품 게시글 여러개 삭제
	public int deleteProductThumbnails(String[] board) {
		Connection conn = getConnection();
		BoardDAO dao = new BoardDAO();

		int result1 = dao.deleteProductBoards(conn, board);

		if (result1 == board.length) {
			for (int i = 0; i < board.length; i++) {
				int result2 = dao.deleteProductThumbnail(conn, Integer.parseInt(board[i]));
				int result3 = dao.deleteProductOption(conn, Integer.parseInt(board[i]));

				if (result2 > 0 && result3 > 0) {
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
		
	///////////////////////////스토어///////////////////////////////////
	public ArrayList<Product> selectProductsList() {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new BoardDAO().selectProductsList(conn);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<ProductAttachment> selectProductThumbnails() {
		
		Connection conn = getConnection();
		
		ArrayList<ProductAttachment> list = new BoardDAO().selectProductThumbnails(conn);
		
		close(conn);
		
		return list;
	}
	
	// 상품관리 게시판 검색 조건에 맞는 리스트 조회
	public ArrayList<Product> selectProductList(PageInfo pi, String index, int roomSize, int[] itemCategory, int maxPrice) {
		Connection conn = getConnection();

		ArrayList<Product> list = new BoardDAO().selectProductList(conn, pi, index, roomSize, itemCategory, maxPrice);

		close(conn);

		return list;
	}
	
	// 스토어 검색 처리 서비스
	public int getProductCount(int roomSize, int[] itemCategory, int maxPrice) {

	   Connection conn = getConnection();
	   
	   int listCount = 0;
	   
	   listCount = new BoardDAO().getProductCount(conn, roomSize, itemCategory, maxPrice);
	   
	   close(conn);
	   
	   return listCount;
	}
	
    /////////////////////////////장바구니///////////////////////////////
   //장바구니 전체 개수 조회
  public int getCartCount(String id) {
     Connection conn = getConnection();
     
     int listCount = 0;
     
     listCount = new BoardDAO().getCartCount(conn, id);

     close(conn);

     return listCount;
  }

   //장바구니 전체 리스트 조회(페이징x)
  public ArrayList<Cart> selectCartList() {
     Connection conn = getConnection();
     
     ArrayList<Cart> list = new BoardDAO().selectCartList(conn);
     
     close(conn);
     
     return list;
  }  
  //장바구니 전체 리스트 조회(페이징o)
  public ArrayList<CartWhole> selectCartListC(PageInfo pi, String id) {
     Connection conn = getConnection();
     
     ArrayList<CartWhole> list = new BoardDAO().selectCartListC(conn, pi, id);
     
     close(conn);
     
     return list;
  }
//상품 전체 리스트 조회
  public ArrayList<Product> selectProductListC() {
        Connection conn = getConnection();
        
        ArrayList<Product> list = new BoardDAO().selectProductListC(conn);
        
        close(conn);
        
        return list;
  }
//상품 옵션 전체 리스트 조회
  public ArrayList<ProductOption> selectProductOptionListC() {
        Connection conn = getConnection();
        
        ArrayList<ProductOption> list = new BoardDAO().selectProductOptionListC(conn);
        
        close(conn);
        
        return list;
     } 
  //특정 장바구니 가져오기
  public CartWhole selectCartWhole(int cId) {
     Connection conn = getConnection();
        CartWhole cw = new BoardDAO().selectCartWhole(conn, cId);
        close(conn);
        return cw;
  }
//장바구니 신규등록
  public int insertCart(Cart c) {
      Connection conn = getConnection();
        
        int result = new BoardDAO().insertCart(conn, c);
        
        if(result > 0) {
        commit(conn);
     } else {
        rollback(conn);
     }
     
     close(conn);
        
        return result;      
     }
  //장바구니 업데이트
  public int updateCart(Cart c) {
      Connection conn = getConnection();
        
        int result = new BoardDAO().updateCart(conn, c);
        
        if(result > 0) {
        commit(conn);
     } else {
        rollback(conn);
     }
     
     close(conn);
        
        return result;      
     }
  /**/
  //장바구니 상품 한 개  삭제
  public int deleteCart(int cId) {
        Connection conn = getConnection();
           
           BoardDAO dao = new BoardDAO();
           
           int result = dao.deleteCart(conn, cId);
          
           if(result > 0) {
              commit(conn);
           } else {
              rollback(conn);
           }
           close(conn);
           
           return result;      
        }
  //장바구니 상품 여러개 삭제
  public int deleteCarts(String[] board) {
       Connection conn = getConnection();
         BoardDAO dao = new BoardDAO();
         
         int result = dao.deleteCarts(conn, board);

         if(result > 0) {
                    commit(conn);
                 } else {
                    rollback(conn);
                 }
           

           close(conn);

        return result;
     }
  
  /////////////////////////////주문////////////////////////////
  //주문 완료 후 주문 신규등록
  public int insertOrder(Orders order) {
     Connection conn = getConnection();
         
         BoardDAO dao = new BoardDAO();
         
         int result = dao.insertOrder(conn, order);
         
         if(result > 0 ) {
            commit(conn);
         } else {
            rollback(conn);
         }
         
         close(conn);
         return result;
      }

	
	public ArrayList selectAllForMain(int i) {
		Connection conn = getConnection();
		
		ArrayList list = null;
		
		BoardDAO dao = new BoardDAO();		
		if(i == 1) {
			list = dao.selectAllBoard(conn);	
		} else if(i == 2) { 
			list = dao.selectThumbnailList(conn);	
		}  else if(i == 3) { 
			list = dao.selectDiscountProList(conn);
		} else if(i == 4) { 
			list = dao.selectNewProList(conn);
		} else {
			list = dao.selectProductThumbnails(conn);	
		}

		close(conn);

		return list;
	}
	
	
	

}
