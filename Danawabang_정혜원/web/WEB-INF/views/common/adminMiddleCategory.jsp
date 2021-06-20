<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col" style="margin-left:65px;"></div>
			<!-- 회원 관리, 상품 관리, 주문 관리, 게시판 관리, 설정 중단카테고리 -->
			<div onclick="location.href='<%= request.getContextPath() %>/adminMember.me'" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				회원 관리</div>
			<div onclick="location.href='관리자_상품관리(AdminProductManage).html'" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				상품 관리</div>
			<div onclick="location.href='관리자_주문관리(AdminOrderManage).html'" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				주문 관리</div>
			<div  class="col">
				<div class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					게시판 관리
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_스토어(AdminBoardStore).html'">스토어</a>
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminSelfGuide.bo';">셀프가이드</a>
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminPromotion.bo';">프로모션</a>
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminNotice.bo';">공지사항</a>
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminFaq.me';">FAQ</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_일대일(AdminBoardOtO).html'">1:1게시판</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div onclick="location.href='<%= request.getContextPath() %>/adminSetting.me'" class="col"
               	style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; margin-left:-20px;font-size: 20px; font-weight: bold;">
              	 설정
         		</div>
			</div>
			<!-- 중단 카테고리 여백 -->
			<div class="col" style="margin-top: 40px;"></div>
		</div>

		<br>
		<!-- 중단 카테고리 스크립트 -->
	<script>

		//중단 카테고리 색변환
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