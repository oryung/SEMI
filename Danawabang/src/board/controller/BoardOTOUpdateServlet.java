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
 * Servlet implementation class BoardOTOUpdateServlet
 */
@WebServlet("/boardOTOUpdate.bo")
public class BoardOTOUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardOTOUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
//			int count = 1; 
			
			ArrayList<BoardAttachment> list = null;
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				if(multipartRequest.getFilesystemName(name) != null) {				
					saveFiles.add(multipartRequest.getFilesystemName(name));
					originFiles.add(multipartRequest.getOriginalFileName(name));
				} else {
					// 보드 아이디 이용해서 파일 값 불러오고 저장하기 
					list = new BoardService().selectThumbnail(Integer.parseInt(multipartRequest.getParameter("bId")));
					
					if(!list.isEmpty()) {
						for(int i = 0; i < list.size(); i++) {
							saveFiles.add(list.get(i).getChangeName());
							originFiles.add(list.get(i).getOriginName());
							
						}
					} 
				}
				
			}
			int bId = Integer.parseInt(multipartRequest.getParameter("bId"));
			String title = multipartRequest.getParameter("title");
			String content = multipartRequest.getParameter("content");
			String userId = ((Member)request.getSession().getAttribute("loginUser")).getId();
			
			
			Board b = new Board();
			b.setBoardId(bId);
			b.setBoardType(2);
			b.setBoardCategoryId(2460);
			b.setBoardCategoryName("1대1게시글");
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setWriter(userId);
			b.setIsFirst("N");
			
			
			ArrayList<BoardAttachment> fileList  = new ArrayList<BoardAttachment>();
			int titleImgFileId = 0;
			int contentImg1FileId = 0;
			
			System.out.println(titleImgFileId);
			if(!list.isEmpty()) {
				titleImgFileId = Integer.parseInt(multipartRequest.getParameter("titleImgFileId"));
				System.out.println(titleImgFileId);
			}
			
			if(!saveFiles.isEmpty() || !originFiles.isEmpty()) {
				for(int i = originFiles.size()-1; i >= 0; i--) {	
					BoardAttachment ba = new BoardAttachment();
					ba.setFilePath(savePath);
					ba.setOriginName(originFiles.get(i));	
					ba.setChangeName(saveFiles.get(i));
					
					if(i == originFiles.size()-1) {
						ba.setFileLevel(0);
						ba.setFileId(titleImgFileId);
					} else {
						ba.setFileLevel(1); 		
						ba.setFileId(contentImg1FileId);
					}
					
					fileList.add(ba);
				}
				int result = new BoardService().updateOTOThumbnail(b, fileList);
				System.out.println("여기");
				if(result > 0) {
					response.sendRedirect("boardOTODetail.bo?bId=" + bId);
				} else {	
					for(int i = 0; i < saveFiles.size(); i++) {
						File fail = new File(savePath + saveFiles.get(i));
						fail.delete();
					}
					
					request.setAttribute("msg", "1대1 게시글 수정에 실패하였습니다.");
					request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
				}	
			} else {
				int result = new BoardService().updateBoard(b);
				System.out.println("저기");
				if(result > 0) {	// 사진 없이 게시글만 수정했을 때도
					response.sendRedirect("boardOTODetail.bo?bId=" + bId);
				} else {	
					request.setAttribute("msg", "1대1 게시글 수정에 실패하였습니다.");
					request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
				}	
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
