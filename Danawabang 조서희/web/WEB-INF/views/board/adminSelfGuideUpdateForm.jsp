<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.*"%>
<%
	Board b = (Board) request.getAttribute("b");
	ArrayList<BoardAttachment> fileList = (ArrayList) request.getAttribute("fileList");
	BoardAttachment titleImg = fileList.get(0); 
	BoardAttachment detailImg = fileList.get(1); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀프가이드 게시글 상세보기</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
<style>


table{
	border: 1px solid #DEEAF4;
}

.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
	width: 16%;
}

.page-link{
	color: #11bbff;
}



/*검색창 색상*/
.bi-search{
 color: #11BBFF;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		
	<!-- 중단 카테고리 -->	
	<%@ include file="../common/adminMiddleCategory.jsp" %>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  본문(셀프가이드 게시글 상세보기) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">셀프가이드 게시글 수정</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row" style="height: 290px;">
			<form action="<%= request.getContextPath() %>/adminSelfGuideUpdate.bo" id="detailForm" method="post" encType="multipart/form-data" onsubmit="return validate();">
				<table class="table"
					style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
					<tbody>
						<tr>
							<th scope="col" style="vertical-align: middle;">제목
							<input type="hidden" name="bId" value="<%= b.getBoardId()  %>"></th>
							<td>
							<input type="text" name="title" value="<%= b.getBoardTitle() %>" id="title" size="35px" class="form-control">
							</td>
							<th scope="col" style="vertical-align: middle;">카테고리</th>
							<td width="30%">
							<select id="category" name="selfGuideCategory"  class="form-control" style="vertical-align: middle;" >
									<option value="계획하기" <%= b.getBoardCategoryName().equals("계획하기") ? "selected" : "" %>>계획하기</option>
									<option value="조명" <%= b.getBoardCategoryName().equals("조명") ? "selected" : "" %>>조명</option>
									<option value="공간배치" <%= b.getBoardCategoryName().equals("공간배치") ? "selected" : "" %>>공간배치</option>
									<option value="수납정리" <%= b.getBoardCategoryName().equals("수납정리") ? "selected" : "" %>>수납정리</option>
									<option value="페브릭" <%= b.getBoardCategoryName().equals("페브릭") ? "selected" : "" %>>페브릭</option>
							</select>
							</td>
						</tr>
						<tr>
							<th scope="col" id="ie" style="vertical-align: middle;">썸네일 등록</th>
							<td colspan="3">
								<div id="titleImgArea">
									<input type="hidden" name="titleImgFileId" value="<%= titleImg.getFileId() %>">
									<img id="titleImg" width="200" height="150" src="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%= titleImg.getChangeName() %>">
									<br> % 대표로 확대이미지를 등록하면 다른 사이즈의 이미지들을 자동 생성합니다. % 이미지명은 영문, 숫자로만 사용하시기
									바랍니다.(한글, 공백, 특수문자 사용x)
								</div>
							</td>
						</tr>
						<tr>
							<th scope="col" id="ie" style="vertical-align: middle;">상세이미지 등록</th>
							
							<td colspan="3">
								<div id="contentImgArea1">
									<input type="hidden" name="contentImg1FileId" value="<%= detailImg.getFileId() %>">
									<img id="contentImg1" width="200" height="500" src="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%= detailImg.getChangeName()%> "> 
									 <br> % 추가되는 이미지는 게시글 내 다른 이미지 보기에 사용됩니다.
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				
				<!-- 파일 업로드 하는 부분 -->
				<div id="fileArea">
					<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)">	
					<input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImg2" onchange="LoadImg(this,2)">
				</div>
				
				<script>
					
					$(function(){
						console.log($("#titleImgArea").val())
						$("#fileArea").hide();	
						
						$("#titleImgArea").click(function(){
							$("#thumbnailImg1").click();
						});
						$("#contentImgArea1").click(function(){
							$("#thumbnailImg2").click();
						});
					});
					
					function LoadImg(value, num){
						if(value.files && value.files[0]){
							var reader = new FileReader();	
							
							reader.onload = function(e){							
								switch(num){
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
				
				<!-- 버튼 -->
				<div class="row" style="height: 50px;">
					<!-- 돌아가기 버튼 -->
					<div class="col" style="left: 23%; width: 70%;">
						<button type="button" class="button1" onclick="history.back();">돌아가기</button>
					</div>
					<div class="col" style="left: 36%; width: 70%;">
					<!-- 수정 버튼 -->
						<button type="submit" class="button1" id="updateBtn">수정</button>
					</div>	
				</div>
			</form>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 800px;"></div>
			
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>

	<script>
	
		function validate(){
			if($('#title').val().trim() == ""){
				alert("제목을 입력해주세요");
				$('#title').focus();
				return false;
			} else if($('#titleImg').attr("src") == null){
				alert("썸네일을 등록해주세요");
				return false;
			} else if($('#contentImg1').attr("src") == null){
				alert("상세이미지를 등록해주세요");
				return false;
			}	
			return true;
		}
		
	</script>
	
</body>
</html>