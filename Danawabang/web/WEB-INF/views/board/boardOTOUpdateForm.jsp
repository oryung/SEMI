<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList"%>
<% 
	Board board = (Board)request.getAttribute("board"); 
	ArrayList<BoardAttachment> fileList = (ArrayList) request.getAttribute("fileList");
	System.out.println(fileList);
	
%>  
 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시글 수정</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<style>


table {
	border: 1px solid #DEEAF4;
}

.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
	width: 60px;
}



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

		<!------ 본문 -------->
		<!-- 선택된 카테고리 -->
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1:1 문의 게시글 수정</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>


		<div class="row">
			<form action="<%= request.getContextPath() %>/boardOTOUpdate.bo" id="detailForm" method="post" encType="multipart/form-data" onsubmit="return enroll();" >
				<table class="table"
					style="margin-left: 230px; width: 720px; text-align: center;">
					<tbody>
						<tr>
							<th scope="col">제목<input type="hidden" name="bId" value="<%= board.getBoardId() %>"></th>
							<td><input type="text" id="title" name="title" value="<%= board.getBoardTitle() %>" size="35px" class="form-control"></td>
							<th scope="col">
							<div id="titleImgArea">
							<% for(int i = 0; i < fileList.size(); i++){ %>
						  	<input type="hidden" id="titleImgFileId" name="titleImgFileId" value="<%= fileList.get(i).getFileId() %>">
						  	
						  	<img id="titleImg"  width="200" height="150" src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%= fileList.get(i).getChangeName() %>">
							<% } %>
							</div>
							<div class="dropdown" id="fileArea">
							  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"> 사진 첨부</button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							    <li><a class="dropdown-item"><input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)" style="margin-top: 7px; width: 250px;"></a></li>
							    <li><a class="dropdown-item"><input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImg2" onchange="Loadlmg(this,2)" style="margin-top: 7px; width: 250px;"></a></li>
							    <li><a class="dropdown-item"><input type="file" id="thumbnailImg3" multiple="multiple" name="thumbnailImg3" onchange="Loadlmg(this,3)" style="margin-top: 7px; width: 250px;"></a></li>
							    <li><a class="dropdown-item"><input type="file" id="thumbnailImg4" multiple="multiple" name="thumbnailImg4" onchange="Loadlmg(this,4)" style="margin-top: 7px; width: 250px;"></a></li>
							  </ul>
							</div>
							</th>
						</tr>
						<tr>
							<th scope="col" id="ie">내용</th>
							<td colspan="3">
								<textarea class="form-control" name="content" id="content"
								style="height: 500px; resize: none;"><%= board.getBoardContent() %></textarea>
							</td>
						</tr>
					</tbody>
				</table>

				<br>
				<!-- 버튼 -->
				<div class='row'>
					<div class="col-3"></div>
					<div class="col-1" style="margin-left: 25px;">
						<button type="button" class="button1" onclick="history.back(); return false;">돌아가기</button>
					</div>
					<div class='col-4'></div>
					<div class='col'>
						<button type="submit" class="button1">수정</button>
					</div>
					<div class="col"></div>
				</div>

			</form>
		</div>


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
		
		/* 내용 누락 확인 부분 */
		function enroll() {
			var title = document.getElementById("title").value;
			var content = document.getElementById("content").value;

			if (title == '' || title.length == 0) {
				alert("제목을 입력해주세요.");
				document.getElementById("title").focus();
				return false;
			} else if (content == '' || content.length == 0) {
				alert("내용을 입력해주세요.");
				document.getElementById("content").focus();
				return false;
			} else {
				alert("문의글을 등록하였습니다");
				return true;
			}
		}
		
		// 파일 업로드 ---------------------------------
	

		function LoadImg(value, num) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					switch (num) {
					case 1:
						$("#titleImg").attr("src", e.target.result);
						break;
					case 2:
						$("#contentImg1").attr("src", e.target.result);
						break;
					}
				}

				reader.readAsDataURL(value.files[0]);
			}
		} 
	</script>

	
</body>
</html>
