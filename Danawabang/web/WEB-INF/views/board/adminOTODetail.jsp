<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.Board, board.model.vo.Reply, java.util.ArrayList"%>
<% Board board = (Board)request.getAttribute("board"); %>   
<% ArrayList<Reply> replyList = (ArrayList)request.getAttribute("replyList"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시판 내용 관리자</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
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


</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/adminMiddleCategory.jsp" %>
		<!-- --------------------------------------------------------------------------------- -->
		

			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1:1 문의 게시판 관리자</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
	
		<!-- 가이드 작성 내용-->
	<form  id="detailForm" method="post">
		<div class="row">
			<input type="hidden" name="bId" value="<%= board.getBoardId()%>">
			<div class="col-1"></div>
			<div class="col-8" style=" font-size: 30px; font-weight: bold;"><%= board.getBoardTitle() %>	</div>
			<div class="col-3"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성자 : <%= board.getWriter() %></div>
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성일자 : <%= board.getEnrollDate() %></div>
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<div style="margin-top: 10px;">
					<br>
					<span > 
						<%= board.getBoardContent() %>
					</span>
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
							<table id="replySelectTable">
								<% if(replyList.isEmpty()){ %>
									<tr>
										<td colspan="3">댓글이 없습니다.</td>
									</tr>
								<% } else {%>
									<% for(int i = 0; i < replyList.size(); i++){ %>
										<tr>
											<td style="font-size: 18px; font-weight: bold; width: 10px;"><%= replyList.get(i).getMemberId() %></td>
											<td style="width: 600px;"><%= replyList.get(i).getEnrollDate() %></td>
										</tr>
										<tr>
											<td colspan="2" width="1000px"><%= replyList.get(i).getReplyContent() %></td>
										</tr>
									<% } %>
								<% } %>
							
							</table>
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
				
					<div class="col-10" style="margin-left:10px;">
					<textarea rows="3" cols="107" class="form-control" id="replyContent" style="resize: none; border-color: lightgray;" placeholder="댓글을 입력하세요."></textarea>
					</div>
					<div class="col">
						<button id="addReply" type="button" class="button1" style="margin-top: 20px;">댓글달기</button>
					</div>
				
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
					<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/adminOTO.bo';">돌아가기</button>
				</div>
				<div class='col-5'></div>
				<div class='col'></div>
				<div class='col'>
					<button type="button" style="margin-left: 50px;" class="button1" id="delete">삭제</button>
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
	/* -----댓글------------------------------------------------------------------------------- */
	
	 $('#addReply').on('click', function(){
		
		var writer = '<%= loginUser.getId() %>';
		var bId = '<%= board.getBoardId() %>';
		var content = $('#replyContent').val();
		
		$.ajax({
			url: 'insertReply.bo',
			data: {writer:writer, content:content, bId:bId},
			success: function(data){
				console.log(data);
				
				$replyTable = $('#replySelectTable');
				$replyTable.html('');
				
				for(var i in data){
					var $tr = $('<tr>');
					var $writerTd = $('<td>').text(data[i].MemberId);
					var $dateTd = $('<td>').text(data[i].EnrollDate);
					var $contentTd = $('<td>').text(data[i].replyContent);
					
					$tr.append($writerTd);
					$tr.append($dateTd);
					$tr.append($contentTd);
					
					
					$replyTable.append($tr);
	
				}
				
				$('#replyContent').val('');
				
			}
			
		});
	}); 
		
		
		
		// 삭제 버튼
		$(function() {
			$('#delete').click(function() {
				var bool = prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')
				
				console.log(bool);
				if (bool == "realadmin") {
					$('#detailForm').attr('action', 'adminOTODelete.bo');
					$('#detailForm').submit();
				} else {
					alert("관리자 코드를 잘못입력하셨습니다.");
				}
			});
		});	
	</script>
	
	
</body>
</html>

