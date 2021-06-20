<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_주문관리_상세</title>
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

		<!-- 중단 카테고리(상품관리페이지) -->	
		<%@ include file="../common/adminMiddleCategory.jsp" %>
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 본문(주문 상세 정보) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">주문 정보</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row" style="height: 660px;">
			<form>
            <table class="table" style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
				<tbody>	
					<tr>
						<th scope="col">주문번호</th>
						<td><input type="text" class="form-control"></td>
						<th scope="col">주문일자</th>
						<td><input type="text" class="form-control"></td>
					</tr>
				</tbody>
				</table>
			<table class="table" style="width: 720px; margin-left: 220px; margin-top: -19px; text-align: center;">
				<tbody>
					<tr>
						<th scope="col">상품번호</th>
						<th scope="col">상품이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
						<th scope="col">수량</th>
					</tr>
					<tr>
						<th>301</th>
						<th><input type="file" style="height: 40px;"></th>
						<th></th>
						<th></th>
						<th>1</th>
					</tr>
					<tr>
						<th scope="col">총금액</th>
						<td colspan="4" style="text-align: right; padding-right: 55px;"><b>32,000</b></td>
					</tr>
					<tr>
						<th scope="col">수령일</th>
						<td colspan="4">도대담</td>
					</tr>
					<tr>
						<th scope="col">연락처</th>
						<td colspan="4">01047534667</td>
					</tr>
					<tr>
						<th scope="col">이메일</th>
						<td colspan="4">swklm723@gmail.com</td>
					</tr>
					<tr>
						<th scope="col">배송지</th>
						<td colspan="4">06234 서울 강남구 테헤란로 14길 6 3층(역삼동)</td>
					</tr>
					<tr>
						<th scope="col">요청사항</th>
						<td colspan="4">문 앞에 놔주세요</td>
					</tr>
					<tr>
						<th scope="col">운송장번호</th>
						<td colspan="4">1023941102341123</td>
					</tr>
					<tr>
						<th scope="col">주문상태</th>
						<td colspan="4"></td>
					</tr>
					<tr>
						<th scope="col">주문상태정보</th>
						<td colspan="4"></td>
					</tr>
				</tbody>
			</table>
			</form>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<!-- 버튼 -->
		<div class="row" style="height: 50px;">
			<!-- 돌아가기 버튼 -->
			<div class="col"
				style="left: 18%; width: 70%;">
			<a href="주문 관리.html"><button class="button1">돌아가기</button></a>
			</div>
			<div class="col"
				style="left: 13%; width: 70%;">
			<!-- 수정 버튼 -->
				<button class="button1">수정</button>
			<!-- 삭제 버튼 -->
				<button class="button1" id="delete">삭제</button>
			</div>	
		</div>
		
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 160px;"></div>
			
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>

	<!-- 상단 스크립트 -->
	<script>
	// 삭제 버튼
		$(function(){
			$('#delete').click(function(){
				if(prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')){
					// 데이터 삭제 서블릿 + 목록 서블릿 요청 후 화면 뿌리기
				} else {
					// 옥록으로 돌아가기
				}
			});	
			
		});	
	</script>
	
</body>
</html>