<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="board.model.vo.Board"%>
<%
	Board board = (Board) request.getAttribute("b");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_게시판관리_FAQ상세</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
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

.page-link {
	color: #11bbff;
}



/*검색창 색상*/
.bi-search {
	color: #11BBFF;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp"%>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<!-- 중단 카테고리 -->
		<%@ include file="../common/adminMiddleCategory.jsp" %>	
		<!------ 본문 (FAQ 게시글 상세보기)-------->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; margin-bottom: 10px; color: rgb(17, 187, 255);"
					class="">FAQ 게시글 수정</div>
			</div>
		</div>
		<!-- 테이블 -->
		<div class="row">
			<form action="<%= request.getContextPath() %>/adminFaqUpdate.me" method="post">
				<table class="table"
					style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
					<tr>
						<th scope="col" style="vertical-align: middle;">제목</th>
						<td>
						<input type="hidden" name="id" value="<%= board.getBoardId()%>">
						<input type="text" size="35px" name="title"
							class="form-control" value=<%=board.getBoardTitle()%>></td>
						<th scope="col" style="vertical-align: middle;">카테고리</th>
						<td width="30%">
							<select name="faqCategory" id="category" class="form-control" style="vertical-align: middle;">
									<option value="주문/결제" <%= board.getBoardCategoryName().equals("주문/결제") ? "selected" : "" %>>주문/결제</option>
									<option value="배송관련" <%= board.getBoardCategoryName().equals("배송관련") ? "selected" : "" %>>배송관련</option>
									<option value="취소/환불" <%= board.getBoardCategoryName().equals("취소/환불") ? "selected" : "" %>>취소/환불</option>
									<option value="회원정보변경" <%= board.getBoardCategoryName().equals("회원정보변경") ? "selected" : "" %>>회원정보변경</option>
									<option value="서비스/기타" <%= board.getBoardCategoryName().equals("서비스/기타") ? "selected" : "" %>>서비스/기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th scope="col" id="ie" style="vertical-align: middle;">내용</th>
						<td colspan="3"><textarea class="form-control" name="content"
								style="height: 500px; resize: none;"><%=board.getBoardContent()%></textarea>							
								</td>
					</tr>
				</table>
				<br>
				<div class="col">
					<input type="button" class="button1"
						onclick="location.href='<%=request.getContextPath()%>/adminFaq.me'"
						value="돌아가기" style="margin-left: 210px; margin-right: 500px;">
					<input type="submit" class="button1" id="update" value="등록">
				</div>
			</form>
		</div>


		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 160px;"></div>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp"%>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	<!-- 상단 스크립트 -->
	<script>
	<!-- 중단 스크립트 -->
		// 중단 카테고리
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
	</script>
</body>
</html>