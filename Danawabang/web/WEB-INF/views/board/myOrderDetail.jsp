<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_나의쇼핑상세</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>

/*마이페이지-나의쇼핑관련스타일*/
/*th색상변경*/
.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
}
/*테이블색상변경*/
table{
	border: 1px solid #DEEAF4;
}

/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


		<!--!!!!!!!!!!!!!!!!!!!!!!!!! 마이 페이지 카테고리 !!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<!-- 중단 카테고리 -->	
		<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col-3"></div>
			<!-- 나의쇼핑, 나의활동, 설정 중단카테고리 -->
			<div onclick="location.href='마이페이지-나의 쇼핑.html';"
					class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right:10px;">
					나의 쇼핑</div>
			<div onclick="location.href='마이페이지-나의 활동.html';"
					class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right:20px;">
					나의 활동</div>
			<div onclick="location.href='<%= request.getContextPath() %>/mySettingForm.me';"
					class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold;">
					설정</div>
			<!-- 상단 카테고리 여백 -->
			<div class="col-3"></div>
		</div>
		
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 40px;"></div>

			<!-- 주문 상세 내역 제목 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 주문 상세 내역-->
				<div class="col"
					style="text-align:center; font-size: 23px; font-weight: bold; color: #11BBFF;">주문 상세 내역</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>



		<!-- 테이블 -->
		<div class="row" style="margin-left:200px;">
			<table class="table"
				style="text-align: center; width: 720px;">
				
				<tbody>
				<tr>
					<th scope="col">주문번호</th>
					<td>1000000</td>
					<th scope="col">주문일자</th>
					<td>2021-05-30</td>
				</tr>
			</table>
			<table class="table"
				style="width: 720px; text-align: center; margin-top: -18px;">
				<tr>
					<th scope="col" style="width:100px;">상품번호</th>
					<th scope="col" style="width:150px;">상품이미지</th>
					<th scope="col" style="width:300px;">상품명</th>
					<th scope="col" style="width:60px;">수량</th>
					<th scope="col" style="width:110px;">가격</th>
				</tr>
				<tr>
					<th style="vertical-align:middle;">11</th>
					<th style="vertical-align:middle;"><img src="images/테스트.png"></th>
					<th style="vertical-align:middle;">맛이난다맛이나캔디</th>
					<th style="vertical-align:middle;">1</th>
					<th style="vertical-align:middle;">32,000</th>
				</tr>
				<tr>
					<th scope="col" style="width:150px;">총금액</th>
					<td colspan="5"><b>32,000</b></td>
				</tr>
				<tr>
					<th scope="col">주문상태</th>
					<td colspan="5">배송중</td>
				</tr>
				<tr>
					<th scope="col">연락처</th>
					<td colspan="5">01047534667</td>
				</tr>
				<tr>
					<th scope="col">배송지</th>
					<td colspan="5">06234 서울 강남구 테헤란로 14길 6 3층(역삼동)</td>
				</tr>
				<tr>
					<th scope="col">요청사항</th>
					<td colspan="5">문 앞에 놔주세요</td>
				</tr>
				<tr>
					<th scope="col">운송장번호</th>
					<td colspan="5">1023941102341123</td>
				</tr>
				</tbody>
			</table>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
			<!-- 버튼 -->
			<div class="row">
			<!-- 여백 -->
			<div class="col-3"></div>
			<!-- 돌아가기버튼 -->
			<div class="col-2"><button class="button1" onclick="location.href='마이페이지-나의 쇼핑.html';">돌아가기</button></div>
			<!-- 여백 -->
			<div class="col-1"></div>
			<!-- 등록 버튼 -->	
			<div class="col-2">								
					<select class="form-control" name="주문상태" style="width: 160px;">
						<option selected disabled>-- 상태 변경 --</option>
						<option value="교환 요청">교환 요청</option>
						<option value="반품 요청">반품 요청</option>
						<option value="주문 취소">주문 취소</option>
						<option value="구매 확정">구매 확정</option>
					</select>				
			</div>
			<!-- 변경 -->
			<div class=col-1>
					<button class="button1" id="change">변경</button></div>	
					<div class="col-3"></div>		
			</div>
			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
			
			
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
		// 변경 버튼
		$(function(){
			$('#change').click(function(){
				if(confirm('정말 변경하시겠습니까?')){
					// 데이터 변경 서블릿 + 목록 서블릿 요청 후 화면 뿌리기
				} else {
					// 옥록으로 돌아가기
				}
			});
		});	
	</script>
	
</body>
</html>
