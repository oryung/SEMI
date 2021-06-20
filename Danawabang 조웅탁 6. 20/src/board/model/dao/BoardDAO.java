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
    ////////////////// 전체///////////////////// 
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
        
        System.out.println(startRow);
        System.out.println(endRow);
		
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
			
			for (int i = 0 ; i < rId.length ; i++) {
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

public ArrayList selectThumbnailList(Connection conn) {
      Statement stmt = null;
      ResultSet rset = null;
      ArrayList<BoardAttachment> list = new ArrayList<BoardAttachment>();
      
      String query = prop.getProperty("selectThumbnailList");   
      
      try {
         stmt = conn.createStatement();
         rset = stmt.executeQuery(query);
         
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
         close(stmt);
      }
      
      return list;
   }



}