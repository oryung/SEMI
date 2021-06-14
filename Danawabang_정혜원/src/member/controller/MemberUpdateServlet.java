package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/update.me")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String myName = request.getParameter("name");
		String myId = request.getParameter("id");
		String myPwd = request.getParameter("pwd");
		String myEmail = request.getParameter("email");
		String myPhone = request.getParameter("phone");
		String[] arr = {request.getParameter("post"), request.getParameter("add1"), request.getParameter("add2")};
		String myAddress = String.join("/", arr);
		
		
		Member member = new Member(myName, myId, myPwd, myEmail, myPhone, myAddress, null, null, null, null);
		

		int result = new MemberService().updateMember(member);
		
		if(result > 0) {
			response.sendRedirect("mySettingForm.me");
		} else {
			request.setAttribute("msg", "회원정보 수정에 실패했습니다.");
			request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
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
