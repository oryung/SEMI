package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Product;
import board.model.vo.ProductAttachment;
import board.model.vo.ProductOption;
import board.model.vo.Reply;

/**
 * Servlet implementation class BoardStoreDetailServlet
 */
@WebServlet("/boardStoreDetail.bo")
public class BoardStoreDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardStoreDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pId = Integer.parseInt(request.getParameter("pId"));
		
		BoardService bService = new BoardService();
		Product product = bService.selectProductBoard(pId);
		ArrayList<ProductAttachment> fileList = bService.selectProductThumbnail(pId);
		ArrayList<ProductOption> optionList = bService.selectProductOption(pId);
		ArrayList<Reply> replyList = new BoardService().selectOTOReplyList(253);
		
		String page = null;
		if(fileList != null) {
			request.setAttribute("product", product);
			request.setAttribute("fileList", fileList);
			request.setAttribute("optionList", optionList);
			request.setAttribute("replyList", replyList);
			
			page = "WEB-INF/views/board/boardStoreDetail.jsp";
		} else {
			request.setAttribute("msg", "프로모션 게시판 상세보기에 실패하였습니다.");
			page = "WEB-INF/views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
