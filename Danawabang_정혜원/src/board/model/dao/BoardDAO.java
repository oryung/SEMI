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
import board.model.vo.PageInfo;
import member.model.dao.MemberDAO;

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
	public int getFListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		int listCount = 0;
		
		String query = prop.getProperty("getFListCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next()) {
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
	public int insertFBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertFBoard");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, b.getBoardType());
			pstmt.setInt(2, b.getBoardCategoryId());
			pstmt.setString(3, b.getBoardTitle());
			pstmt.setString(4, b.getBoardContent());
			pstmt.setString(5, b.getBoardCategoryName());
			pstmt.setString(6, b.getWriter());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateFCount(Connection conn, int bId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
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
	public int updateFBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateFBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, b.getBoardCategoryId());
			pstmt.setString(2, b.getBoardTitle());
			pstmt.setString(3, b.getBoardContent());
			pstmt.setString(4, b.getBoardCategoryName());
			pstmt.setInt(5, b.getBoardId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
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
	public int deleteFBoard(Connection conn, int bId) {
        PreparedStatement pstmt = null;
        int result = 0;
        
        String query = prop.getProperty("deleteFBoard");
        
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
}
