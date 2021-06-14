package board.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDAO;
import board.model.vo.PageInfo;
import member.model.vo.Member;

public class BoardService {

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
