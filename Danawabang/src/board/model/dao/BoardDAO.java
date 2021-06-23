package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Board;
import board.model.vo.BoardAttachment;
import board.model.vo.PageInfo;
import board.model.vo.Product;
import board.model.vo.ProductAttachment;
import board.model.vo.ProductOption;
import board.model.vo.Reply;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class BoardDAO {
   
   private Properties prop = new Properties();
   public BoardDAO() {
      String fileName = MemberDAO.class.getResource("/sql/board/board-query.properties").getPath();
      try {
         prop.load(new FileReader(fileName));
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   ////////////////// 일반게시판 전체///////////////////// 
  public int getBListCount(Connection conn, Board board) {
     PreparedStatement pstmt = null;
     ResultSet rset = null;
     int listCount = 0;

     String query = prop.getProperty("getBListCount");
     try {
        pstmt = conn.prepareStatement(query);
        pstmt.setInt(1, board.getBoardCategoryId());
        pstmt.setInt(2, board.getBoardType());
        rset = pstmt.executeQuery();

        if (rset.next()) {
           listCount = rset.getInt(1);
        }

     } catch (SQLException e) {
        e.printStackTrace();
     } finally {
        close(rset);
        close(pstmt);
     }

     return listCount;
  }

  public int getBsListCount(Connection conn, Board board, Board board2) {
     PreparedStatement pstmt = null;
     ResultSet rset = null;
     int listCount = 0;

     String query = prop.getProperty("getBsListCount");
     try {
        pstmt = conn.prepareStatement(query);
        pstmt.setInt(1, board.getBoardCategoryId());
        pstmt.setInt(2, board2.getBoardCategoryId());
        pstmt.setInt(3, board.getBoardType());
        rset = pstmt.executeQuery();
        if (rset.next()) {
           listCount = rset.getInt(1);
        }
     } catch (SQLException e) {
        e.printStackTrace();
     } finally {
        close(rset);
        close(pstmt);
     }
     return listCount;
  }
  
     public int insertBoard(Connection conn, Board b) {
           PreparedStatement pstmt = null;
           int result = 0;

           String query = prop.getProperty("insertBoard");
           try {
              pstmt = conn.prepareStatement(query);
              pstmt.setInt(1, b.getBoardType());
              pstmt.setInt(2, b.getBoardCategoryId());
              pstmt.setString(3, b.getBoardTitle());
              pstmt.setString(4, b.getBoardContent());
              pstmt.setString(5, b.getIsFirst());
              pstmt.setString(6, b.getBoardCategoryName());
              pstmt.setString(7, b.getWriter());
              
              result = pstmt.executeUpdate();
           } catch (SQLException e) {
              e.printStackTrace();
           } finally {
              close(pstmt);
           }
           
           return result;
        }
     
     public int updateCount(Connection conn, int bId) {
         PreparedStatement pstmt = null;
         int result = 0;
         
         String query = prop.getProperty("updateCount");
         
         try {
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, bId);
            
            result = pstmt.executeUpdate();
         } catch (SQLException e) {
            e.printStackTrace();
         } finally{
            close(pstmt);
         }
         
         return result;
      }
     
     public int updateBoard(Connection conn, Board b) {
           PreparedStatement pstmt = null;
           int result = 0;
           
           String query = prop.getProperty("updateBoard");
           
           try {
              pstmt = conn.prepareStatement(query);
              pstmt.setInt(1, b.getBoardCategoryId());
              pstmt.setString(2, b.getBoardTitle());
              pstmt.setString(3, b.getBoardContent());
              pstmt.setString(4, b.getIsFirst());               
              pstmt.setString(5, b.getBoardCategoryName());
              pstmt.setInt(6, b.getBoardId());
              
              result = pstmt.executeUpdate();
              System.out.println(result);
           } catch (SQLException e) {
              e.printStackTrace();
           } finally {
              close(pstmt);
           }
           return result;
        } 
     
     public int deleteBoard(Connection conn, int bId) {
           PreparedStatement pstmt = null;
           int result = 0;
           
           String query = prop.getProperty("deleteBoard");
           
           try {
              pstmt = conn.prepareStatement(query);
              pstmt.setInt(1, bId);
              result = pstmt.executeUpdate();
           } catch (SQLException e) {
              e.printStackTrace();
           } finally {
              close(pstmt);
           }
          return result;
        }   
     public int deleteBoards(Connection conn, String[] board) {
        PreparedStatement pstmt = null;
        int result = 0;
        
        String query = prop.getProperty("deleteBoard");
        
        try {
           pstmt = conn.prepareStatement(query);

           for(int i = 0 ; i < board.length ; i++) {
              pstmt.setInt(1, Integer.parseInt(board[i]));
              result += pstmt.executeUpdate();
           }               
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(pstmt);
        }
        return result;
     }
     
     //////////////////사진게시판 전체///////////////////// 
     
     public int insertThumbnail(Connection conn, ArrayList<BoardAttachment> fileList) {
 		PreparedStatement pstmt = null;
 		int result = 0;
 			
 		String query = prop.getProperty("insertThumbnail");	

 		try {
 			for(int i = 0; i < fileList.size(); i++) {
 				BoardAttachment ba = fileList.get(i);
 				
 				pstmt = conn.prepareStatement(query);
 				pstmt.setInt(1, ba.getFileLevel());
 				pstmt.setString(2, ba.getOriginName());	
 				pstmt.setString(3, ba.getChangeName());
 				pstmt.setString(4, ba.getFilePath());
 							
 				result += pstmt.executeUpdate();	
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			close(pstmt);
 		}
 		
 		return result;
 	}
     
     public ArrayList<BoardAttachment> selectThumbnail(Connection conn, int bId) {
 		PreparedStatement pstmt = null;
 		ResultSet rset = null;
 		ArrayList<BoardAttachment> list = new ArrayList<BoardAttachment>();
 		
 		String query = prop.getProperty("selectThumbnail");	
 		
 		try {
 			pstmt = conn.prepareStatement(query);
 			pstmt.setInt(1, bId);
 			rset = pstmt.executeQuery();
 			
 			while(rset.next()) { 
 				list.add(new BoardAttachment(rset.getInt("BOARD_FILE_ID"),
 										rset.getInt("BOARD_FILE_LEVEL"),
 										rset.getString("BOARD_ORIGIN_NAME"),
 										rset.getString("BOARD_CHANGE_NAME"),
 										rset.getInt("BOARD_ID"),
 										rset.getString("BOARD_FILE_PATH"),
 										rset.getDate("BOARD_UPLOAD_DATE"),
 										rset.getString("BOARD_FILE_DELETE")));
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			close(rset);
 			close(pstmt);
 		}
 		
 		return list;
 	}

 	public int updateThumbnail(Connection conn, ArrayList<BoardAttachment> fileList) {
 		PreparedStatement pstmt = null;
 		int result = 0;
 			
 		String query = prop.getProperty("updateThumbnail");	

 		try {
 			for(int i = 0; i < fileList.size(); i++) {
 				BoardAttachment ba = fileList.get(i);
 				
 				pstmt = conn.prepareStatement(query);
 				pstmt.setInt(1, ba.getFileLevel());
 				pstmt.setString(2, ba.getOriginName());	
 				pstmt.setString(3, ba.getChangeName());
 				pstmt.setString(4, ba.getFilePath());
 				pstmt.setInt(5, ba.getFileId());
 							
 				result += pstmt.executeUpdate();	
 			}
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			close(pstmt);
 		}
 		
 		return result;
 	}

 	public int deleteThumbnail(Connection conn,  int bId) {
 		PreparedStatement pstmt = null;
 		int result = 0;
 			
 		String query = prop.getProperty("deleteThumbnail");	

 		try {
 				pstmt = conn.prepareStatement(query);
 				pstmt.setInt(1, bId);
 				
 				result = pstmt.executeUpdate();	
 			
 		} catch (SQLException e) {
 			e.printStackTrace();
 		} finally {
 			close(pstmt);
 		}
 		
 		return result;
 	}
 	
     /////////////////////FAQ//////////////////////
     public ArrayList<Board> selectFList(Connection conn, PageInfo pi) {
        PreparedStatement pstmt = null;
        ResultSet rset = null;
        ArrayList<Board> list = new ArrayList<Board>();
        
        String query = prop.getProperty("selectFList");
        
        int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
        int endRow = startRow + pi.getBoardLimit() - 1;
        
        try {
           pstmt = conn.prepareStatement(query);
           pstmt.setInt(1, startRow);
           pstmt.setInt(2, endRow);
           
           rset = pstmt.executeQuery();
           
           while(rset.next()) {
              list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), 
                    rset.getInt("board_category_id"), rset.getString("board_title"), 
                    rset.getString("board_content"), rset.getInt("board_count"),
                    rset.getDate("board_enroll_date"), rset.getString("board_delete"),
                    rset.getString("is_first"), rset.getString("member_id"), rset.getString("board_category_name")));
           }
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(rset);
           close(pstmt);
        }
        
        
        return list;
     }
  
     public Board selectFBoard(Connection conn, int bId) {
        PreparedStatement pstmt = null;
        ResultSet rset= null;
        Board board = null;
        
        String query = prop.getProperty("selectFBoard");
        try {
           pstmt = conn.prepareStatement(query);
           pstmt.setInt(1, bId);
           rset = pstmt.executeQuery();
           
           if(rset.next()) {
              board = new Board(rset.getInt("Board_id"), rset.getInt("board_type"), 
                    rset.getInt("board_category_id"), rset.getString("board_title"), 
                    rset.getString("board_content"), rset.getInt("board_count"),
                    rset.getDate("board_enroll_date"), rset.getString("board_delete"),
                    rset.getString("is_first"), rset.getString("member_id"), rset.getString("board_category_name"));
           }
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(rset);
           close(pstmt);
        }   
        return board;
     }
   
     public ArrayList<Board> selectFList(Connection conn) {
        Statement stmt = null;
        ResultSet rset = null;
        ArrayList<Board> list = new ArrayList<Board>();
        
        String query = prop.getProperty("selectFaqListA");
        
        try {
           stmt = conn.createStatement();
           rset = stmt.executeQuery(query);
           while(rset.next()) {
              list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), 
                    rset.getInt("board_category_id"), rset.getString("board_title"), 
                    rset.getString("board_content"), rset.getInt("board_count"),
                    rset.getDate("board_enroll_date"), rset.getString("board_delete"),
                    rset.getString("is_first"), rset.getString("member_id"), rset.getString("board_category_name")));
           }
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(rset);
           close(stmt);
        }
        
        
        return list;
     }
     
      /////////////////////공지사항//////////////////////
   
   public int getFNListCount(Connection conn) {
      Statement stmt = null;
      ResultSet rset = null;
      int fNListCount = 0;
      
      String query = prop.getProperty("getFNListCount");
      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery(query);

         if(rset.next()) {
            fNListCount = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(stmt);
      }
      
      return fNListCount;
   }
   
   public ArrayList<Board> selectNList(Connection conn, PageInfo pi) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Board> nList = new  ArrayList<Board>();
      
      String query = prop.getProperty("selectNList");

      int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
      int endRow = startRow + pi.getBoardLimit() - 1;   
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, startRow);
         pstmt.setInt(2, endRow);
         
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            Board  b = new Board(rset.getInt("BOARD_ID"), 
                           rset.getInt("BOARD_TYPE"),
                           rset.getInt("BOARD_CATEGORY_ID"),
                           rset.getString("BOARD_TITLE"),
                           rset.getString("BOARD_CONTENT"),
                           rset.getInt("BOARD_COUNT"),
                           rset.getDate("BOARD_ENROLL_DATE"),
                           rset.getString("BOARD_DELETE"),
                           rset.getString("IS_FIRST"),
                           rset.getString("MEMBER_ID"),
                           rset.getString("BOARD_CATEGORY_NAME"));
            nList.add(b);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return nList;
   }
  
   public Board selectNBoard(Connection conn, int bId) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      Board board = null;
      
      String query = prop.getProperty("selectNBoard");
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, bId);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            board = new Board(rset.getInt("BOARD_ID"), 
                  rset.getInt("BOARD_TYPE"),
                  rset.getInt("BOARD_CATEGORY_ID"),
                  rset.getString("BOARD_TITLE"),
                  rset.getString("BOARD_CONTENT"),
                  rset.getInt("BOARD_COUNT"),
                  rset.getDate("BOARD_ENROLL_DATE"),
                  rset.getString("BOARD_DELETE"),
                  rset.getString("IS_FIRST"),
                  rset.getString("MEMBER_ID"),
                  rset.getString("BOARD_CATEGORY_NAME"));
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally{
         close(rset);
         close(pstmt);
      }
      
      return board;
   }
   
  
   ///////////////////회원관리////////////////////
   public ArrayList<Member> selectMList(Connection conn, PageInfo pi) {
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      ArrayList<Member> list = new ArrayList<Member>();
      
      String query = prop.getProperty("selectMList");
      
      int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
      int endRow = startRow + pi.getBoardLimit() - 1;
      
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, startRow);
         pstmt.setInt(2, endRow);
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            Member m = new Member(rset.getString("member_name"), rset.getString("member_id"), rset.getString("member_password"),
                           rset.getString("member_email"), rset.getString("member_phone"), rset.getString("member_address"),
                           rset.getString("is_admin"), rset.getString("admin_code"), rset.getString("member_delete"), rset.getDate("member_enroll_date"));
            list.add(m);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }   finally {
         close(rset);
         close(pstmt);
      }
      return list;
   }

   public int getMListCount(Connection conn) {
      Statement stmt = null;
      ResultSet rset = null;
      int result = 0;
      
      String query = prop.getProperty("getMListCount");
      
      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery(query);
         
         if(rset.next()) {
            result = rset.getInt(1);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(stmt);
      }
      return result;
   }
   
   /////////////////// 셀프가이드 /////////////////////

	public ArrayList<Board> selectSList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = new ArrayList<Board>();

		String query = prop.getProperty("selectSList");

		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), rset.getInt("board_category_id"),
						rset.getString("board_title"), rset.getString("board_content"), rset.getInt("board_count"),
						rset.getDate("board_enroll_date"), rset.getString("board_delete"), rset.getString("is_first"),
						rset.getString("member_id"), rset.getString("board_category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	public Board selectSBoard(Connection conn, int bId) {
		  PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      Board board = null;
	      
	      String query = prop.getProperty("selectSBoard");
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setInt(1, bId);
	         
	         rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            board = new Board(rset.getInt("BOARD_ID"), 
	                  rset.getInt("BOARD_TYPE"),
	                  rset.getInt("BOARD_CATEGORY_ID"),
	                  rset.getString("BOARD_TITLE"),
	                  rset.getString("BOARD_CONTENT"),
	                  rset.getInt("BOARD_COUNT"),
	                  rset.getDate("BOARD_ENROLL_DATE"),
	                  rset.getString("BOARD_DELETE"),
	                  rset.getString("IS_FIRST"),
	                  rset.getString("MEMBER_ID"),
	                  rset.getString("BOARD_CATEGORY_NAME"));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally{
	         close(rset);
	         close(pstmt);
	      }
	      
	      return board;
	}

	public ArrayList selectSList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = new ArrayList<Board>();	
		
		String query = prop.getProperty("selectSListM");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			 
			while (rset.next()) {
				list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), rset.getInt("board_category_id"),
						rset.getString("board_title"), rset.getString("board_content"), rset.getInt("board_count"),
						rset.getDate("board_enroll_date"), rset.getString("board_delete"), rset.getString("is_first"),
						rset.getString("member_id"), rset.getString("board_category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	////////////////프로모션///////////////////
	public ArrayList<Board> selectPList(Connection conn, PageInfo pi) {
	  PreparedStatement pstmt = null;
	  ResultSet rset = null;
	  ArrayList<Board> list = new ArrayList<Board>();
	  
	  String query = prop.getProperty("selectPList");
	  
	  int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
	  int endRow = startRow + pi.getBoardLimit() - 1;
	  
	  try {
	     pstmt = conn.prepareStatement(query);
	     pstmt.setInt(1, startRow);
	     pstmt.setInt(2, endRow);
	     
	     rset = pstmt.executeQuery();
	     
	     while(rset.next()) {
	        list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), 
	              rset.getInt("board_category_id"), rset.getString("board_title"), 
	              rset.getString("board_content"), rset.getInt("board_count"),
	              rset.getDate("board_enroll_date"), rset.getString("board_delete"),
	              rset.getString("is_first"), rset.getString("member_id"), rset.getString("board_category_name")));
	     }
	  } catch (SQLException e) {
	     e.printStackTrace();
	  } finally {
	     close(rset);
	     close(pstmt);
	  }   
	
	  return list;
	}
	
	public ArrayList<BoardAttachment> selectThumbnailList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<BoardAttachment> list = new ArrayList<BoardAttachment>();
	
		String query = prop.getProperty("selectThumbnailList");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
	
			while (rset.next()) {
				list.add(new BoardAttachment(rset.getInt("BOARD_FILE_ID"), rset.getInt("BOARD_FILE_LEVEL"),
						rset.getString("BOARD_ORIGIN_NAME"), rset.getString("BOARD_CHANGE_NAME"), rset.getInt("BOARD_ID"),
						rset.getString("BOARD_FILE_PATH"), rset.getDate("BOARD_UPLOAD_DATE"),
						rset.getString("BOARD_FILE_DELETE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	
	}
	
	public Board selectPBoard(Connection conn, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board board = null;
	
		String query = prop.getProperty("selectPBoard");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bId);
			rset = pstmt.executeQuery();
	
			if (rset.next()) {
				board = new Board(rset.getInt("Board_id"), rset.getInt("board_type"), rset.getInt("board_category_id"),
						rset.getString("board_title"), rset.getString("board_content"), rset.getInt("board_count"),
						rset.getDate("board_enroll_date"), rset.getString("board_delete"), rset.getString("is_first"),
						rset.getString("member_id"), rset.getString("board_category_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return board;
	}
	
	// ------------------- 댓글 관리 --------------- //
	public int getRListCount(Connection conn, String userId) {
		 PreparedStatement pstmt = null;
        ResultSet rset = null;
        int result = 0;
        
        String query = prop.getProperty("getRListCount");
        
        try {
           pstmt = conn.prepareStatement(query);
           pstmt.setString(1, userId);
           rset = pstmt.executeQuery();
           
           if(rset.next()) {
              result = rset.getInt(1);
           }
           
        } catch (SQLException e) {
           e.printStackTrace();
        } finally {
           close(rset);
           close(pstmt);
        }
        return result;
	}
	
	public ArrayList<Reply> selectMyReply(Connection conn, PageInfo pi, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Reply> list = new ArrayList<Reply>();
		
		String query = prop.getProperty("selectRList");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
        int endRow = startRow + pi.getBoardLimit() - 1;
        
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Reply r = new Reply(rset.getInt("reply_id"), rset.getString("reply_content"),
									rset.getInt("board_id"), rset.getString("member_id"),
									rset.getDate("enroll_date"), rset.getString("reply_delete"), rset.getString("board_category_name"));
			
				list.add(r);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int deleteReplys(Connection conn, String[] rId) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteReplys");

		try {
			pstmt = conn.prepareStatement(query);

			for (int i = 0; i < rId.length; i++) {
				pstmt.setInt(1, Integer.parseInt(rId[i]));
				pstmt.executeUpdate();
				result++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	// -----------------------1대1게시판-----------------------------
	public int getOTOListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int result = 0;

		String query = prop.getProperty("getOTOListCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				result = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		return result;
	}

	public ArrayList<Board> selectOTOList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = new ArrayList<Board>();

		String query = prop.getProperty("selectOTOList");

		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), rset.getInt("board_category_id"),
						rset.getString("board_title"), rset.getString("board_content"), rset.getInt("board_count"),
						rset.getDate("board_enroll_date"), rset.getString("board_delete"), rset.getString("is_first"),
						rset.getString("member_id"), rset.getString("board_category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;

	}

	public Board selectOTOBoard(Connection conn, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board board = null;

		String query = prop.getProperty("selectOTOBoard");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				board = new Board(rset.getInt("BOARD_ID"), rset.getInt("BOARD_TYPE"), rset.getInt("BOARD_CATEGORY_ID"),
						rset.getString("BOARD_TITLE"), rset.getString("BOARD_CONTENT"), rset.getInt("BOARD_COUNT"),
						rset.getDate("BOARD_ENROLL_DATE"), rset.getString("BOARD_DELETE"), rset.getString("IS_FIRST"),
						rset.getString("MEMBER_ID"), rset.getString("BOARD_CATEGORY_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return board;
	}

	public int updateOTOBoard(Connection conn, Board board) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateOTOBoard");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getBoardTitle());
			pstmt.setString(2, board.getBoardContent());
			pstmt.setInt(3, board.getBoardId());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Reply> selectOTOReplyList(Connection conn, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Reply> list = new ArrayList<Reply>();

		String query = prop.getProperty("selectOTOReplyList");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bId);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Reply(rset.getInt("reply_id"), rset.getString("reply_content"), rset.getInt("board_id"),
						rset.getString("member_id"), rset.getDate("enroll_date"), rset.getString("reply_delete"),
						rset.getString("boardCategoryName")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}

	public int insertReply(Connection conn, Reply r) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertReply");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getReplyContent());
			pstmt.setInt(2, r.getBoardId());
			pstmt.setString(3, r.getMemberId());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int deleteReply(Connection conn, int replyId) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteReply");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, replyId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 상품관리 게시판 전체글 개수 조회
	public int getProductCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;

		String query = prop.getProperty("getProductCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				listCount = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		return listCount;
	}

	// 상품관리 게시판 전체리스트 조회
	public ArrayList<Product> selectProductList(Connection conn, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Product> list = new ArrayList<Product>();

		String query = prop.getProperty("selectProductList");

		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Product(rset.getInt("PRODUCT_id"), rset.getString("PRODUCT_NAME"),
						rset.getInt("PRODUCT_category_id"), rset.getInt("PRODUCT_AMOUNT"),
						rset.getString("PRODUCT_BRAND"), rset.getInt("PRODUCT_PRICE"),
						rset.getDouble("PRODUCT_DISCOUNT_RATE"), rset.getInt("PRODUCT_DELIVERY_FEE"),
						rset.getString("PRODUCT_CONTENT"), rset.getString("PRODUCT_TIP"),
						rset.getDate("PRODUCT_enroll_date"), rset.getString("PRODUCT_STATUS"),
						rset.getString("PRODUCT_delete"), rset.getString("PRODUCT_SIZE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	// 상품관리 게시판 등록
	public int insertProduct(Connection conn, Product p) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertProduct");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, p.getProductName());
			pstmt.setInt(2, p.getProductCategoryId());
			pstmt.setInt(3, p.getProductAmount());
			pstmt.setString(4, p.getProductBrand());
			pstmt.setInt(5, p.getProductPrice());
			pstmt.setDouble(6, p.getProductDiscountRate());
			pstmt.setInt(7, p.getProductDeliveryFee());
			pstmt.setString(8, p.getProductContent());
			pstmt.setString(9, p.getProductTip());
			pstmt.setString(10, p.getProductSize());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	// 상품게시판 사진 등록
	public int insertProductThumbnail(Connection conn, ArrayList<ProductAttachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertProductThumbnail");
		try {
			for (int i = 0; i < fileList.size(); i++) {
				ProductAttachment a = fileList.get(i);

				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, a.getProductFileLevel());
				pstmt.setString(2, a.getProductOriginName());
				pstmt.setString(3, a.getProductChangeName());
				pstmt.setString(4, a.getProductFilePath());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	// 상품관리 옵션 등록
	public int insertProductOption(Connection conn, ArrayList<ProductOption> optionList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertProductOption");
		try {
			for (int i = 0; i < optionList.size(); i++) {
				ProductOption po = optionList.get(i);

				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, po.getProductOptionValue());
				pstmt.setInt(2, po.getProductOptionOriginPrice());
				pstmt.setInt(3, po.getProductOptionAmount());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	// 상품 게시판 상세내용 글 보기
	public Product selectProductBoard(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Product product = null;

		String query = prop.getProperty("selectProductBoard");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				product = new Product(rset.getInt("PRODUCT_id"), rset.getString("PRODUCT_NAME"),
						rset.getInt("PRODUCT_category_id"), rset.getInt("PRODUCT_AMOUNT"),
						rset.getString("PRODUCT_BRAND"), rset.getInt("PRODUCT_PRICE"),
						rset.getDouble("PRODUCT_DISCOUNT_RATE"), rset.getInt("PRODUCT_DELIVERY_FEE"),
						rset.getString("PRODUCT_CONTENT"), rset.getString("PRODUCT_TIP"),
						rset.getDate("PRODUCT_enroll_date"), rset.getString("PRODUCT_STATUS"),
						rset.getString("PRODUCT_delete"), rset.getString("PRODUCT_SIZE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return product;
	}

	public ArrayList<ProductAttachment> selectProductThumbnail(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<ProductAttachment> list = null;

		String query = prop.getProperty("selectProductThumbnail");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);
			rset = pstmt.executeQuery();

			list = new ArrayList<ProductAttachment>();

			while (rset.next()) {
				list.add(new ProductAttachment(rset.getInt("PRODUCT_FILE_ID"), rset.getInt("PRODUCT_FILE_LEVEL"),
						rset.getString("PRODUCT_ORIGIN_NAME"), rset.getString("PRODUCT_CHANGE_NAME"),
						rset.getInt("PRODUCT_ID"), rset.getString("PRODUCT_FILE_PATH"),
						rset.getDate("PRODUCT_UPLOAD_DATE"), rset.getString("PRODUCT_FILE_DELETE")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public ArrayList<ProductOption> selectProductOption(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<ProductOption> list = null;

		String query = prop.getProperty("selectProductOption");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);
			rset = pstmt.executeQuery();

			list = new ArrayList<ProductOption>();

			while (rset.next()) {
				list.add(new ProductOption(rset.getInt("PRODUCT_OPTION_ID"), 
						rset.getString("PRODUCT_OPTION_VALUE"), rset.getInt("PRODUCT_OPTION_ORIGIN_PRICE"), rset.getString("PRODUCT_OPTION_STATUS"),
						rset.getString("PRODUCT_OPTION_DELETE"), rset.getInt("PRODUCT_ID"), rset.getInt("PRODUCT_OPTION_AMOUNT")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int updateProductBoard(Connection conn, Product p) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateProductBoard");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, p.getProductName());
			pstmt.setInt(2, p.getProductCategoryId());
			pstmt.setInt(3, p.getProductAmount());
			pstmt.setString(4, p.getProductBrand());
			pstmt.setInt(5, p.getProductPrice());
			pstmt.setDouble(6, p.getProductDiscountRate());
			pstmt.setInt(7, p.getProductDeliveryFee());
			pstmt.setString(8, p.getProductContent());
			pstmt.setString(9, p.getProductTip());
			pstmt.setString(10, p.getProductStatus());
			pstmt.setString(11, p.getProductSize());
			pstmt.setInt(12, p.getProductId());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updateProductThumbnail(Connection conn, ArrayList<ProductAttachment> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateThumbnail");

		try {
			for (int i = 0; i < fileList.size(); i++) {
				ProductAttachment ba = fileList.get(i);

				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, ba.getProductFileLevel());
				pstmt.setString(2, ba.getProductOriginName());
				pstmt.setString(3, ba.getProductChangeName());
				pstmt.setString(4, ba.getProductFilePath());
				pstmt.setInt(5, ba.getProductFileId());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int updateProductOption(Connection conn, ArrayList<ProductOption> optionList) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateProductOption");
		try {
			for (int i = 0; i < optionList.size(); i++) {
				ProductOption po = optionList.get(i);

				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, po.getProductOptionValue());
				pstmt.setInt(2, po.getProductOptionOriginPrice());
				pstmt.setInt(3, po.getProductOptionAmount());
				pstmt.setInt(4, po.getProductOptionId());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public int deleteProductBoard(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteProductBoard");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteProductThumbnail(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteProductThumbnail");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int deleteProductOption(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("deleteProductOption");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pId);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public int deleteProductBoards(Connection conn, String[] board) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteProductBoard");

		try {
			pstmt = conn.prepareStatement(query);
			for (int i = 0; i < board.length; i++) {
				pstmt.setInt(1, Integer.parseInt(board[i]));

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 스토어
	
	   public ArrayList<ProductAttachment> selectProductThumbnails(Connection conn) {
           Statement stmt = null;
           ResultSet rset = null;
           ArrayList<ProductAttachment> list = null;

           String query = prop.getProperty("selectProductThumbnails");

           try {
              stmt = conn.createStatement();
              rset = stmt.executeQuery(query);

              list = new ArrayList<ProductAttachment>();

              while (rset.next()) {
                 list.add(new ProductAttachment(rset.getInt("PRODUCT_FILE_ID"), rset.getInt("PRODUCT_FILE_LEVEL"),
                       rset.getString("PRODUCT_ORIGIN_NAME"), rset.getString("PRODUCT_CHANGE_NAME"),
                       rset.getInt("PRODUCT_ID"), rset.getString("PRODUCT_FILE_PATH"),
                       rset.getDate("PRODUCT_UPLOAD_DATE"), rset.getString("PRODUCT_FILE_DELETE")));

              }
           } catch (SQLException e) {
              e.printStackTrace();
           } finally {
              close(rset);
              close(stmt);
           }
           return list;
        }
//	public ArrayList<Board> selectStoreList(Connection conn, PageInfo pi) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		ArrayList<Board> list = new ArrayList<Board>();
//
//		String query = prop.getProperty("selectStoreist");
//
//		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
//		int endRow = startRow + pi.getBoardLimit() - 1;
//
//		try {
//			pstmt = conn.prepareStatement(query);
//			pstmt.setInt(1, startRow);
//			pstmt.setInt(2, endRow);
//
//			rset = pstmt.executeQuery();
//
//			while (rset.next()) {
//				list.add(new Board(rset.getInt("Board_id"), rset.getInt("board_type"), rset.getInt("board_category_id"),
//						rset.getString("board_title"), rset.getString("board_content"), rset.getInt("board_count"),
//						rset.getDate("board_enroll_date"), rset.getString("board_delete"), rset.getString("is_first"),
//						rset.getString("member_id"), rset.getString("board_category_name")));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(rset);
//			close(pstmt);
//		}
//
//		return list;
//	}





}