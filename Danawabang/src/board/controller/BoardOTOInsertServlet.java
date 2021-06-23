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
 * Servlet implementation class BoardOTOInsertServlet
 */
@WebServlet("/boardOTOInsert.bo")
public class BoardOTOInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardOTOInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024*1024*10;
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root + "thumbnail_uploadFiles/";
			
			File f = new File(savePath);
			if(f.exists()) {
				f.mkdirs();
			}
			MultipartRequest multipartRequest
				= new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			ArrayList<String> saveFiles = new ArrayList<String>(); // 파일의 바뀐 이름을 저장할 공간
			ArrayList<String> originFiles = new ArrayList<String>(); // 파일의 원래 이름을 저장할 공간
			
			Enumeration<String> files = multipartRequest.getFileNames();
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				if(multipartRequest.getFilesystemName(name) != null) {
					saveFiles.add(multipartRequest.getFilesystemName(name));
					originFiles.add(multipartRequest.getOriginalFileName(name));
				}
				
			}
			
			String title = multipartRequest.getParameter("title");
			String content = multipartRequest.getParameter("content");
			String userId = ((Member)request.getSession().getAttribute("loginUser")).getId();
			
			Board b = new Board();
			
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setWriter(userId);
			b.setBoardCategoryId(2460);
			b.setBoardType(2);
			b.setIsFirst("N");
			b.setBoardCategoryName("1대1게시글");
			
			ArrayList<BoardAttachment> fileList = new ArrayList<BoardAttachment>();
			for(int i = originFiles.size()-1; i >= 0; i--) {
				BoardAttachment a = new BoardAttachment();
				a.setFilePath(savePath);
				a.setOriginName(originFiles.get(i));
				a.setChangeName(saveFiles.get(i));
				
				if(i == originFiles.size()-1) {
					a.setFileLevel(0);
					
				} else {
					a.setFileLevel(1);
				}
				
				fileList.add(a);
			}
			
			int resultT = new BoardService().insertOTOThumbnail(b, fileList);
			
			
			if(resultT > 0) {
				response.sendRedirect("boardOTO.bo");
			} else {
				for(int i = 0; i < saveFiles.size(); i++) {
					File fail = new File(savePath + saveFiles.get(i));
					fail.delete();
				}
				
				request.setAttribute("msg", "1대1 게시글 등록에 실패하였습니다.");
				request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
			}
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
