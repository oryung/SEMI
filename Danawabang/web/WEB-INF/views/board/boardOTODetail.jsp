<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.Board, board.model.vo.Reply,board.model.vo.BoardAttachment, java.util.ArrayList"%>
<% 
	Board board = (Board)request.getAttribute("board"); 
	ArrayList<Reply> replyList = (ArrayList)request.getAttribute("replyList");
    ArrayList<BoardAttachment> fileList =  (ArrayList)request.getAttribute("fileList");
    
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시판 내용</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>


#middleCategories {
	text-align: center;
	cursor: pointer;
	font-size: 20px;
	font-weight: bold;
}
/*아이콘 색변경*/
.refDelete {
	color: #11BBFF;
}

.refDelete:hover {
	color: #FBA481;
}

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<!-- 고객센터 카테고리 -->
		<div class="row" id="middleCategories">
			<div class="col-3"></div>
			
			<div onclick="location.href='<%= request.getContextPath() %>/boardNotice.bo';" class="col">공지사항</div>
			<div onclick="location.href='<%= request.getContextPath() %>/boardOTO.bo';" class="col">1:1 게시판</div>
			<div onclick="location.href='<%= request.getContextPath() %>/boardFaq.bo';" class="col">FAQ</div>
			<div class="col-3"></div>
		</div>

			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1:1 문의 게시판</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
	
		<!-- 가이드 작성 내용-->
	<form action="<%= request.getContextPath() %>/boardOTOUpdateForm.bo" id="detailForm" method="post" >
		<div class="row">
			<input type="hidden" name="bId" value="<%= board.getBoardId()%>">
			<div class="col-1"></div>
			<div class="col-8" style=" font-size: 30px; font-weight: bold;"><%= board.getBoardTitle() %>	</div>
			<input type="hidden" name="title" value="<%= board.getBoardTitle()%>">
			<div class="col-3"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성자 : <%= board.getWriter() %></div>
			<input type="hidden" name="writer" value="<%= board.getWriter()%>">
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성일자 : <%= board.getEnrollDate() %></div>
			<input type="hidden" name="enrollDate" value="<%= board.getEnrollDate()%>">
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<table class="detail">
					<% for(int i = 0; i < fileList.size(); i++){ %>
					<tr>
						<td>
							<div class="detailImgArea">
								<input type="hidden" name="titleImgChangeName" value="<%=fileList.get(i).getChangeName()%>">
									<input type="hidden" name="titleImgOriginName" value="<%=fileList.get(i).getOriginName()%>">
									<input type="hidden" name="titleImgFileId" value="<%=fileList.get(i).getFileId()%>">
									<input type="hidden" name="titleImgFilePath" value="<%=fileList.get(i).getFilePath()%>">
								<img id="detailImg" class="detailImg" 
									src="<%= request.getContextPath() %>/thumbnail_uploadFiles/<%= fileList.get(i).getChangeName() %>">
							</div>
						</td>
					</tr>
					<% } %>
				</table>
			</div>
			<div class="col-2"></div>
		</div>
		
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<div style="margin-top: 10px;">
					<br>
					<span > 
						<%= board.getBoardContent() %>
					</span>
					<input type="hidden" name="content" value="<%= board.getBoardContent() %>">
					<br>
				</div>
			</div>
			<div class="col-2"></div>
		</div>
	
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 60px;"></div>

		<!-- 댓글 -->
		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<span style="font-weight: bold; font-size: 18px;">댓글</span>
				<div style="border-top: 1px solid lightgray; border-bottom: 1px solid lightgray;">
					<div class="row" style="margin: 5px;">
						<div class="col" id="replySelectArea">
							<div id="replySelectTable">
								<% if(replyList.isEmpty()){ %>
									<div>
										<span >댓글이 없습니다.</span>
									</div>
								<% } else {%>
									<% for(int i = 0; i < replyList.size(); i++){ %>
										<div id="rep<%= i%>">
											<input type="hidden" value="<%= replyList.get(i).getReplyId() %>">
											<span style="font-size: 18px; font-weight: bold; width: 10px;"><%= replyList.get(i).getMemberId() %></span>
											<span style="width: 600px;"><%= replyList.get(i).getEnrollDate() %></span>
											<br>
											<span><%= replyList.get(i).getReplyContent() %></span>
											<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
											<i class="bi bi-x refDelete"></i>
											<% } %>
										</div>
									<% } %>
								<% } %>
							
							</div>
						</div> 
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<br>

		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<div class="row">
				<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
					<div class="col-10" style="margin-left:10px;">
					<textarea rows="3" cols="107" class="form-control" id="replyContent" style="resize: none; border-color: lightgray;" placeholder="댓글을 입력하세요."></textarea>
					</div>
					<div class="col">
						<button id="addReply" type="button" class="button1" style="margin-top: 20px;">댓글달기</button>
					</div>
				<% } %>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 버튼 -->
			<div class='row'>
				<div class="col"></div>
				<div class='col'>
					<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/boardOTO.bo';">돌아가기</button>
				</div>
				<div class='col-5'></div>
				<div class='col'>
			<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
					<input type="submit" class="button1" value="수정">					
			<% } %>
				</div>
				<div class='col'>
			<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
					<button type="button" style="margin-left: 50px;"class="button1" id="delete">삭제</button>
			<% } %>
				</div>
				<div class='col'></div>
			</div>
	</form>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	<!-- 상단 스크립트 -->
	<script>
		
		
		//중단 카테고리 색변환
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
		
		$(function() {
			$('#deleteCT').children().hover(function() {
				$(this).css('color', '#FBA481');
			}, function() {
				$(this).css('color', '#11BBFF');
			});
		});
		
		/* -----댓글------------------------------------------------------------------------------- */
		
		 $('#addReply').on('click', function(){
			
			var writer = '<%= loginUser.getId() %>';
			var bId = '<%= board.getBoardId() %>';
			var content = $('#replyContent').val();
			
			$.ajax({
				url: 'insertReply.bo',
				data: {writer:writer, content:content, bId:bId},
				success: function(data){
					
					
					$replyTable = $('#replySelectTable');
					$replyTableCT = $('#replySelectTable');
					$replyTable.html('');
					$replyTableCT.html('');
					
					for(var i in data){
						
						console.log();
						var $div = $('<div>');
						
						var $writerTd = $('<span>').text(data[i].MemberId).css({"font-size":"18px","font-weight":"bold","width":"10px"});
						var $dateTd = $('<span>').text(data[i].EnrollDate).css("width","600px");
						var $br = $('<br>');
						var $contentTd = $('<span>').text(data[i].replyContent).css("width","1000px");
						
						
						var $deleteCT = $('<i class="bi bi-x refDelete" style="cursor: pointer;font-size:25px;">');
						
						$div.append($writerTd);
						$div.append($dateTd);
						$div.append($br);
						$div.append($contentTd);
						$div.append($deleteCT);
						
						$replyTable.append($div);
		
					}
					
					$('#replyContent').val('');
				}
			});
		}); 
		
		//댓글 삭제
		
		$('.refDelete').parent().on('click',function(){
			if(!confirm("삭제하시겠습니까?")){
				return;
			}
			 
			 console.log();
			
			/* $.ajax({
				url: "deleteReply.bo",
				data:{},
				success:function(data){
					
					$(this).remove();
				},
				error:function(data){
					alert("댓글 삭제 실패 했습니다.");
				}
			}); */
		}); 

		//게시글삭제 버튼
		$(function() {
			$('#delete').click(function() {
				var bool = confirm('정말 삭제하시겠습니까?');
				if (bool) {
					$('#detailForm').attr('action', 'boardOTODelete.me');
					$('#detailForm').submit();
				}
			});
		});
	</script>
		
	
</body>
</html>

