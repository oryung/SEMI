package member.model.service;

import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.rollback;


import java.sql.Connection;

import member.model.dao.MemberDAO;
import member.model.vo.Member;


public class MemberService {

	public Member login(Member member) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDAO().login(conn, member);
		
		close(conn);
		
		return loginUser;
	}
	public int insertMember(Member member) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().insertMember(conn, member); 
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}

	public int checkId(String id) {
		Connection conn = getConnection();
		
		int result = new MemberDAO().checkId(conn, id);
		
		return result;
	}
	public Member selectMember(String userId) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDAO().selectMember(conn, userId);
		close(conn);
		
		return loginUser;
	}

	public int updateMember(Member member) {
		Connection conn = getConnection();
		int result = new MemberDAO().updateMember(conn, member);
		if(result > 0) {
	         commit(conn);
	      } else {
	         rollback(conn);
	      }
		close(conn);
		
		return result;
	}

	public int deleteMember(String userId) {
		Connection conn = getConnection();
		int result = new MemberDAO().deleteMember(conn, userId);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
}
