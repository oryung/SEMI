<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.Board"%>
<%
	Board board = (Board)request.getAttribute("board"); 
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시글 상세보기</title>
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
	width: 70px;
}

.page-link{
	color: #11bbff;
}

.button1{
	border: 1px solid rgb(17, 187, 255);
	background-color: rgb(17, 187, 255);
	color: white;
	border-radius: 4px;
	width: 100px;
	height: 40px;
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
		<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col"></div>
			<!-- 회원 관리, 상품 관리, 주문 관리, 게시판 관리, 설정 중단카테고리 -->
			<div onclick="location.href='회원 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				회원 관리</div>
			<div onclick="location.href='상품 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				상품 관리</div>
			<div onclick="location.href='주문 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				주문 관리</div>
			<div  class="col">
				<div onclick="location.href='#';" class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					게시판 관리
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_스토어(AdminBoardStore).html'">스토어</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_셀프가이드(AdminBoardSelfGuide).html'">셀프가이드</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_프로모션(AdminBoardPromotion).html'">프로모션</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_공지사항(AdminBoardNotice).html'">공지사항</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_FAQ(AdminBoardFaq).html'">FAQ</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_일대일(AdminBoardOtO).html'">1:1게시판</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div onclick="location.href='#';"  class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					설정
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='게시판 관리_설정_관리자정보수정.html'">관리자정보수정</a>
						<a class="dropdown-item" onclick="location.href='설정_관리자탈퇴.html'">관리자탈퇴</a>
					</div>
				</div>
			</div>
				<!-- 중단 카테고리 여백 -->
			<div class="col" style="margin-top: 40px;"></div>
		</div>

		<br>
		
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  본문(공지사항 게시글 수정) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">공지사항 게시글 수정</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row">
			<form action="<%= request.getContextPath() %>/adminNoticeUpdate.bo" id="detailForm" method="post">
					<table class="table"
						style="margin-left: 220px; width: 720px; text-align: center;">
						<tbody>
							<tr>
								<th scope="col">제목<input type="hidden" name="bId" value="<%= board.getBoardId() %>"></th>
								<td> <input type="text" name="title" value="<%= board.getBoardTitle() %>" size="20px" class="form-control"></td>
								<th scope="col">중요</th>
								
								<td><input type="checkbox" id="isFirst" name="isFirst" class="form-control"></td>
								
							</tr>
							<tr>
								<th scope="col" id="ie">내용</th>
								<td colspan="3">
								<textarea name="content" class="form-control" style="height: 500px; resize: none; "><%= board.getBoardContent() %></textarea>
								</td>
							</tr>
						</tbody>
					</table>


				<!-- 버튼 -->
				<div class="row" style="height: 50px;">
					<!-- 돌아가기 버튼 -->
					<div class="col" style="left: 23%; width: 70%;">
						<button type="button" class="button1" onclick="history.back();">돌아가기</button>
					</div>
					<div class="col" style="left: 36%;">
						<!-- 수정 버튼 -->
						<button type="submit" class="button1">수정</button>
					</div>
				</div>
			</form>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 80px;"></div>
			
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	</div>


	<!-- 상단 스크립트 -->
	<script>
		//2행 로고
		$(function() {
			$('#logo').hover(function() {
				$(this).css('font-size', '34px');
			}, function() {
				$(this).css('font-size', '32px');
			});
		});
		//2행 로그인
		$(function() {
			$('#login').hover(function() {
				$(this).css({
					'background-color' : '#FBA481',
					'border-color' : '#FBA481'
				});
			}, function() {
				$(this).css({
					'background-color' : '#11BBFF',
					'border-color' : '#11BBFF'
				});
			});
		});
		//3행
		$(function() {
			$('#thirdRow').children().hover(function() {
				$(this).css('color', '#FBA481');
			}, function() {
				$(this).css('color', '#11BBFF');
			});
		});
		<!-- 중단 스크립트 -->
		// 중단 카테고리
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
		
		// 삭제 버튼
		$(function(){
			$('#delete').click(function(){
				var bool = prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')
				if(bool == "realadmin"){
					$('#detailForm').attr('action', 'delete.bo');
					$('#detailForm').submit();
				} else{
					alert("관리자 코드를 잘못입력하셨습니다.");
				}
			});	
		});	
		
	</script>
</body>
</html>