package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.Product;
import board.model.vo.ProductAttachment;
import board.model.vo.ProductOption;
import board.model.vo.Reply;
import member.model.vo.Member;

/**
 * Servlet implementation class MyReplyDetailServlet
 */
@WebServlet("/replyDetail.bo")
public class MyReplyDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyReplyDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bId = Integer.parseInt(request.getParameter("bId"));
		
		Board b = new BoardService().selectBoard(bId);
		ArrayList<Reply> replyList = new BoardService().selectOTOReplyList(bId);
		
		if(b.getProductId() == 0) {
			request.setAttribute("board", b);
			request.setAttribute("replyList", replyList);
			
			request.getRequestDispatcher("WEB-INF/views/board/boardOTODetail.jsp").forward(request, response);
			
		} else {
			BoardService bService = new BoardService();
			Product product = bService.selectProductBoard(b.getProductId());
			ArrayList<ProductAttachment> fileList = bService.selectProductThumbnail(b.getProductId());
			ArrayList<ProductOption> optionList = bService.selectProductOption(b.getProductId());
			
			HttpSession session = request.getSession();
			Member loginUser = (Member)session.getAttribute("loginUser");
			
			request.setAttribute("product", product);
			request.setAttribute("fileList", fileList);
			request.setAttribute("optionList", optionList);
			request.setAttribute("loginUser", loginUser);
			
			request.getRequestDispatcher("WEB-INF/views/board/boardStoreDetail.jsp").forward(request, response);
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
