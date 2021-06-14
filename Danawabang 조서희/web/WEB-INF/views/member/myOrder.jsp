<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_나의쇼핑</title>
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
/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
}
/*상세보기 색상*/
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

			<!-- 배송현황 제목 -->
			<div class="row">
				<!-- 중단 카테고리 여백 -->
				<div class="col"></div>
				<!-- 배송 현황 제목-->
				<div class="col"
					style="text-align: center; font-size: 23px; font-weight: bold; color: #11BBFF;">배송
					현황</div>
				<!-- 중단 카테고리 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>

			<!-- 박스 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col-3"></div>
				<!-- 박스 테두리-->
				<div class="col-6"
					style="border: 2px solid; height: 130px; border-color: #11BBFF;">
					<!-- 박스 상단-->
					<div class="row" style="margin-top: 35px;">
						<!-- 여백 -->
						<div class="col-1"></div>
						<!-- 주문완료 -->
						<div class="col-3"
							style="text-align: center; font-size: 17px; font-weight: bold;">주문완료</div>
						<!-- 아이콘 -->
						<div class="col-1">
						<i class="bi bi-arrow-right-circle-fill" style="color:#11BBFF; font-size: 18px;"></i>
						</div>
						<!-- 배송중 -->
						<div class="col-2"
							style="text-align: center; font-size: 17x; font-weight: bold;">배송중</div>
						<!-- 아이콘 -->
						<div class="col-1">
							<i class="bi bi-arrow-right-circle-fill" style="color:#11BBFF; font-size: 18px;"></i>
							</div>
						<!-- 배송완료 -->
						<div class="col-3"
							style="text-align: center; font-size: 17px; font-weight: bold;">배송완료</div>
						<!-- 여백 -->
						<div class="col-1"></div>
					</div>
					<!-- 여백 -->
						<div class="col-3"></div>
					<!-- 여백 -->
					<div class="row" style="margin-top: 10px;"></div>
					<!-- 박스 중단-->
					<div class="row">
						<div class="col-1"></div>
						<!-- 주문완료숫자 -->
						<div class="col-3"
							style="text-align: center; font-size: 13px; font-weight: bold;">주문완료개수</div>
						<div class="col-1"></div>
						<div class="col-2"
							style="text-align: center; font-size: 13px; font-weight: bold;">배송중개수</div>
						<div class="col-1"></div>
						<div class="col-3"
							style="text-align: center; font-size: 13px; font-weight: bold;">배송완료개수</div>
						<div class="col-1"></div>
					</div>
				</div>
				<!-- 여백 -->
				<div class="col-3"></div>
			</div>


			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 50px;"></div>

			<!-- 주문 내역 제목 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 주문 내역-->
				<div class="col"
					style="text-align:center; font-size: 23px; font-weight: bold; color:#11BBFF;">주문
					내역</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>



			<!-- 주문 내역 -->
			<div class="row">
				<table class="table"
					style="margin-left: 15%; width: 70%; text-align: center; font-size:14px;">
					<thead>
						<tr>
							<th scope="col">주문번호</th>
							<th scope="col">상품명</th>
							<th scope="col">총금액</th>
							<th scope="col">주문일자</th>
							<th scope="col">주문상태</th>
							<th scope="col">상세보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>0000001</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>배송중</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000002</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>배송완료</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000003</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>배송중</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000004</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>주문취소</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000005</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>교환완료</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000006</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>교환취소</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000007</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>교환취소</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000008</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>반품중</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000009</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>배송완료</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
						<tr>
							<td>0000010</td>
							<td>맛이나요맛이나캔디</td>
							<td>50,000</td>
							<td>2021-05-29</td>
							<td>배송완료</td>
							<td onclick="location.href='마이페이지-나의 쇼핑-상세.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<!-- 페이지 -->
			<div class="row">
				<div class="col"></div>
				<div class="col" style="margin-left: 53px;">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
				</div>
				<div class="col"></div>
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
	</script>
	
</body>
</html>
