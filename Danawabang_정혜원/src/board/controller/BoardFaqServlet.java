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

/**
 * Servlet implementation class BoardFaqServlet
 */
@WebServlet("/boardFaq.bo")
public class BoardFaqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFaqServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Board> list = new BoardService().selectFList();
		Board board = new Board();
		ArrayList<Board> listFirst = new ArrayList<Board>();
		ArrayList<Board> listSecond = new ArrayList<Board>();
		ArrayList<Board> listThird = new ArrayList<Board>();
		ArrayList<Board> listFourth = new ArrayList<Board>();
		ArrayList<Board> listFifth = new ArrayList<Board>();
		
		
		
		
		for(int i = 0; i<list.size(); i++) {
			switch(list.get(i).getBoardCategoryId()) {
			case 2451 : listFirst.add(list.get(i)); break;
			case 2452 : listSecond.add(list.get(i)); break;
			case 2453 : listThird.add(list.get(i)); break;
			case 2454 : listFourth.add(list.get(i)); break;
			case 2455 : listFifth.add(list.get(i)); break;
			}
		}
		
		String page = null;
		if(list != null) {
			page = "WEB-INF/views/board/boardFaq.jsp";
			request.setAttribute("list", list);
			request.setAttribute("list1", listFirst);
			request.setAttribute("list2", listSecond);
			request.setAttribute("list3", listThird);
			request.setAttribute("list4", listFourth);
			request.setAttribute("list5", listFifth);
		} else {
			page = "WEB-INF/views/common/errorPage.jsp";
			request.setAttribute("msg", "공지사항 조회에 실패하였습니다.");
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
