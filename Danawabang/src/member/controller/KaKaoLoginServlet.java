package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class KaKaoLoginServlet
 */
@WebServlet("/kakaoInsert.me")
public class KaKaoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KaKaoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String kakaoLoginId = request.getParameter("kakaoLoginId");
		String kakaoLoginEmail = request.getParameter("kakaoLoginId");
		Member member = new Member();
//		member.setId(kakaoLoginId);
		member.setEmail(kakaoLoginEmail);
		
		int result = new MemberService().kakaoInsertMember(member);
		
		if(result > 0) {
			// 회원가입 성공 페이지
			response.sendRedirect(request.getContextPath());
		} else {
			// 회원가입 실패 페이지
			request.setAttribute("msg", "회원가입에 실패하였습니다.");
			RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp");
			view.forward(request, response);		// 브라우저 url에 insert.me가 나올 거라 예상함다.
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
