package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.BoardAttachment;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

/**
 * Servlet implementation class AdminFaqUpdateFormServlet
 */
@WebServlet("/adminSelfGuideUpdateForm.bo")
public class AdminSelfGuideUpdateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSelfGuideUpdateFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
		
			int bId = Integer.parseInt(request.getParameter("bId"));
			String title = request.getParameter("title");
			String category = request.getParameter("selfGuideCategory");
			String titleImgChangeName = request.getParameter("titleImgChangeName");
			int titleImgFileId = Integer.parseInt(request.getParameter("titleImgFileId"));
			String contentImg1ChangeName = request.getParameter("contentImg1ChangeName");
			int contentImg1FileId = Integer.parseInt(request.getParameter("contentImg1FileId"));
			
			Board b = new Board();
			b.setBoardId(bId);
			b.setBoardTitle(title);
			b.setBoardCategoryName(category);
			b.setBoardType(2);
			
			switch(category) {
			case "계획하기" : b.setBoardCategoryId(2421); break;
			case "조명" : b.setBoardCategoryId(2422); break;
			case "공간배치" : b.setBoardCategoryId(2423); break;
			case "수납정리" : b.setBoardCategoryId(2424); break;
			case "페브릭" : b.setBoardCategoryId(2425); break;
			}
			
			ArrayList<BoardAttachment> fileList = new ArrayList<BoardAttachment>();
			
			BoardAttachment ba = new BoardAttachment();
			ba.setChangeName(titleImgChangeName);	
			ba.setFileId(titleImgFileId);
			BoardAttachment ba2 = new BoardAttachment();
			ba2.setChangeName(contentImg1ChangeName);
			ba2.setFileId(contentImg1FileId);
			
			fileList.add(ba);
			fileList.add(ba2);
		
			request.setAttribute("b", b);
			request.setAttribute("fileList", fileList);
			request.getRequestDispatcher("WEB-INF/views/board/adminSelfGuideUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
