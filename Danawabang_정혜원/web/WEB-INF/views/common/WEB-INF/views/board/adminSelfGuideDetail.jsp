<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.*"%>
<%
	Board b = (Board) request.getAttribute("board");
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
					class="">셀프가이드 게시글 상세보기</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row">
			<form action="<%= request.getContextPath() %>/adminSelfGuideUpdateForm.bo" id="detailForm" method="post">
				<table class="table"
					style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
					<tbody>
						<tr>
							<th scope="col" style="vertical-align: middle;">제목
							<input type="hidden" name="bId" value="<%= b.getBoardId() %>"></th>
							<td style="vertical-align: middle;">
								<input type="hidden" name="title" value="<%= b.getBoardTitle() %>">
								<%= b.getBoardTitle()%>
							</td>
							<th scope="col" style="vertical-align: middle;">카테고리</th>
							<td width="30%"><select class="form-control"  disabled name="selfGuideCategory">
									<option value="계획하기" <%= b.getBoardCategoryName().equals("계획하기") ? "selected" : "" %>>계획하기</option>
									<option value="조명" <%= b.getBoardCategoryName().equals("조명") ? "selected" : "" %>>조명</option>
									<option value="공간배치" <%= b.getBoardCategoryName().equals("공간배치") ? "selected" : "" %>>공간배치</option>
									<option value="수납정리" <%= b.getBoardCategoryName().equals("수납정리") ? "selected" : "" %>>수납정리</option>
									<option value="페브릭" <%= b.getBoardCategoryName().equals("페브릭") ? "selected" : "" %>>페브릭</option>
							</select>
							<input type="hidden" name="selfGuideCategory" value="<%= b.getBoardCategoryName() %>">
							</td>
						</tr>
						<tr>
							<th scope="col" id="ie" style="vertical-align: middle;">썸네일 등록</th>
							<td colspan="3">
								<div id="titleImgArea">
									<input type="hidden" name="titleImgChangeName" value="<%=titleImg.getChangeName()%>">
									<input type="hidden" name="titleImgOriginName" value="<%=titleImg.getOriginName()%>">
									<input type="hidden" name="titleImgFileId" value="<%=titleImg.getFileId()%>">
									<input type="hidden" name="titleImgFilePath" value="<%=titleImg.getFilePath()%>">
									<a href="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%=titleImg.getChangeName()%>">
                   					 <img id="titleImg" width="300" height="250" src="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%=titleImg.getChangeName()%>"></a>
									<br> % 대표로 확대이미지를 등록하면 다른 사이즈의 이미지들을 자동 생성합니다. % 이미지명은 영문, 숫자로만 사용하시기
									바랍니다.(한글, 공백, 특수문자 사용x)
								</div>
							</td>
						</tr>
						<tr>
							<th scope="col" id="ie" style="vertical-align: middle;">상세이미지 등록</th>
							
							<td colspan="3">
								<div id="contentImgArea1">
									<input type="hidden" name="contentImg1ChangeName" value="<%=detailImg.getChangeName()%>">
									<input type="hidden" name="contentImg1OriginName" value="<%=detailImg.getOriginName()%>">
									<input type="hidden" name="contentImg1FileId" value="<%=detailImg.getFileId()%>">
									<input type="hidden" name="contentImg1FilePath" value="<%=detailImg.getFilePath()%>">
									<a href="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%=detailImg.getChangeName()%>">
                   					 <img id="contentImg1" width="300" height="600" src="<%=request.getContextPath()%>/selfGuide_uploadFiles/<%=detailImg.getChangeName()%>"></a>
									 <br> % 추가되는 이미지는 게시글 내 다른 이미지 보기에 사용됩니다.
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			
				<!-- 버튼 -->
				<div class="row">
					<!-- 돌아가기 버튼 -->
					<div class="col" style="left: 23%; width: 70%;">
						<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/adminSelfGuide.bo'">돌아가기</button>
					</div>
					<div class="col" style="left: 41%; width: 70%;">
					<!-- 수정 버튼 -->
						<button type="submit" class="button1" id="updateBtn">수정</button>
					</div>	
					<div class="col" style="left: 20%; width: 70%;">
					<!-- 삭제 버튼 -->
						<button type="button" class="button1" id="delete">삭제</button>
					</div>
				</div>
			</form>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>
			
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>

	<script>
	<!-- 중단 스크립트 -->
		// 삭제 버튼
		$(function() {
			$('#delete').click(function() {
				var bool = prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')
				
				console.log(bool);
				if (bool == "realadmin") {
					$('#detailForm').attr('action', 'adminSelfGuideDelete.bo');
					$('#detailForm').submit();
				} else {
					alert("관리자 코드를 잘못입력하셨습니다.");
				}
			});
		});
	</script>
	
</body>
</html>