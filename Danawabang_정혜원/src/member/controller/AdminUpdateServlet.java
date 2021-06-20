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
 * Servlet implementation class AdminUpdateServlet
 */
@WebServlet("/adminUpdate.me")
public class AdminUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String adminName = request.getParameter("name");
		String adminId = request.getParameter("id");
		String adminPwd = request.getParameter("pwd");
		String adminEmail = request.getParameter("email");
		String adminPhone = request.getParameter("phone");
		String[] arr = {request.getParameter("post"), request.getParameter("add1"), request.getParameter("add2")};
		String adminAddress = String.join("/", arr);
		String adminCode = request.getParameter("adCode");
		
		Member member = new Member(adminName, adminId, adminPwd, adminEmail, adminPhone, adminAddress, null, adminCode, null, null);
		
		int result = new MemberService().updateMember(member);
		
		if(result > 0) {
			response.sendRedirect("adminSetting.me");
		} else {
			request.setAttribute("msg", "관리자정보 수정에 실패했습니다.");
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
