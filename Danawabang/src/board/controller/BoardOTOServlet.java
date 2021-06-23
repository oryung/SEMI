package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.PageInfo;
import board.model.vo.Reply;

/**
 * Servlet implementation class BoardOTOServlet
 */
@WebServlet("/boardOTO.bo")
public class BoardOTOServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardOTOServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount; //총게시물
		int currentPage; //현재 페이지
		int pageLimit; //한페이지 5
		int boardLimit; // 10
		int maxPage; // 마지막페이지
		int startPage; // 각 페이지의 시작
		int endPage; // 각 페이지의 끝
		
		BoardService bService = new BoardService();
		Board board = new Board();
		board.setBoardCategoryId(2460);
		board.setBoardType(2);
		
		listCount = bService.getBListCount(board);
		
		currentPage = 1;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		pageLimit = 5;
		boardLimit = 10;
		
		maxPage = (int) Math.ceil((double)listCount / boardLimit);
	
		startPage = ((currentPage - 1)/pageLimit)* pageLimit + 1; 
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Board> list = bService.selectOTOList(pi);
		
		String page = null;
		if(list != null) {
			page = "WEB-INF/views/board/boardOTO.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			
		} else {
			page = "WEB-INF/views/common/errorPage.jsp";
			request.setAttribute("msg", "1대1게시판 조회에 실패하였습니다.");
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
