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
/*상단 관련 스타일*/
/*검색창*/
.btn-outline-secondary {
	color: #fff;
	border-color: #11BBFF;
	background-color: #11BBFF;
	font-weight: bold;
}

.btn-outline-secondary:hover {
	color: #fff;
	background-color: #FBA481;
	border-color: #FBA481;
}

.btn-outline-secondary:focus, .btn-outline-secondary.focus {
	box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active,
	.btn-outline-secondary:not (:disabled ):not (.disabled ).active, .show>.btn-outline-secondary.dropdown-toggle
	{
	color: #fff;
	background-color: #11BBFF;
	border-color: #11BBFF;
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active:focus,
	.btn-outline-secondary:not (:disabled ):not (.disabled ).active:focus,
	.show>.btn-outline-secondary.dropdown-toggle:focus {
	box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}
/*아이콘 색변경*/
.i-plain {
	color: #11BBFF;
}

.i-plain:hover {
	color: #FBA481;
}
/*메뉴버튼*/
.dropdown-menu {
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 1000;
	display: none;
	float: left;
	min-width: 250px;
	padding: 0;
	margin: 0;
	font-size: 18px;
	color: black;
	text-align: left;
	list-style: none;
	background-color: #fff;
	background-clip: padding-box;
	border: 2px solid rgba(17, 187, 255, 1);
	border-radius: 0.25rem;
}
.dropdown-item:hover {
	color: #11BBFF;
}
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
		<!-- 1행 -->
		<div class="row">
			<!-- 상단 광고 -->
			<div class="col-12" id="top-bar" onclick="location.href='프로모션.html';"
				style="background: #11BBFF; text-align: center; cursor: pointer; line-height: 30px; font-size: 14px; font-weight: bold; color: white;">
				더운 여름을 시원하게! 여름 맞이 프로모션으로 함께 떠나요!</div>
		</div>

		<!-- 2행 -->
		<div class="row" id="secondRow">
			<!-- 로고  -->
			<div class="col-3">
				<div id="logo" onclick="location.href='메인페이지.html';"
					style="color: #11BBFF; font-size: 32px; text-align: center; vertical-align: middle; margin-top: 16px; font-weight: bold; cursor: pointer; color: #11BBFF;">
					<i class="bi bi-house" style="font-size: 37px;"></i>다나와방
				</div>
			</div>

			<!-- 검색창  -->
			<div class="col-3">
				<!-- 검색 아이콘  -->
				<div style="margin-top: 30px;">
					<input type="text" class="form-control" placeholder="검색어를 입력해주세요"
						style="font-size: 13px; border-color: #11BBFF; margin-left: 30px;">
				</div>
			</div>
			<div class="col-1">
				<button class="btn btn-outline-secondary" type="submit"
					id="main-search" style="font-size: 14px; margin-top: 30px;">검색</button>
			</div>
			<!-- 로그인/회원가입 아이콘 -->
			<div class="col-2">
				<div id="login" onclick="location.href='로그인 페이지.html';"
					style="width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;">로그인/회원가입</div>
			</div>
			<!-- 마이페이지 아이콘  -->
			<div class="col-1" onclick="location.href='마이페이지-나의 쇼핑.html';"
				style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-person i-plain" style="font-size: 42px;"></i>
			</div>
			<!-- 장바구니 아이콘 -->
			<div class="col-1" onclick="location.href='장바구니.html';"
				style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-cart2 i-plain" style="font-size: 38px;"></i>
			</div>
			<!-- 고객센터 아이콘  -->
			<div class="col-1" onclick="location.href='고객센터.html';"
				style="margin-top: 20px; cursor: pointer;">
				<i class="bi bi-headset i-plain" style="font-size: 37px;"></i>
			</div>
		</div>



		<!-- 3행 -->
		<!-- 메뉴아이콘 -->
		<div class="row" id="thirdRow"
			style="text-align: center; margin-top: 15px;">
			<div class="col-1">
				<div class="dropdown" style="margin-top: -10px;">
					<a class="btn-group-vertical" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="bi bi-list i-plain"
						style="font-size: 35px;"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"
						style="text-align: center; font-weight: bold;">
						<li class="dropdown-item" style="font-weight: bold;">6평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/6평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">8평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/8평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">10평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/10평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">12평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/12평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">14평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/14평.png"></a></li>
					</ul>
				</div>
			</div>
			<!-- 스토어 카테고리 -->
			<div class="col-2" onclick="location.href='스토어페이지.html';"
				style="font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">스토어</div>
			<!-- 셀프가이드 카테고리 -->
			<div class="col-2" onclick="location.href='셀프가이드페이지.html';"
				style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">셀프가이드</div>
			<!-- 프로모션 카테고리 -->
			<div class="col-2" onclick="location.href='프로모션페이지.html';"
				style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">프로모션</div>
			<div class="col-5"></div>
		</div>

		<!-- 구분선 -->
		<div
			style="margin-top: 20px; width: 100%; border-bottom: 2px solid #11BBFF"></div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 15px;"></div>

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
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>

		<!-- 하단 -->
		<div class="row">
			<div class="col-12" onclick="location.href='고객센터.html';"
				style="color: black; line-height: 30px; font-size: 22px; font-weight: bold; cursor: pointer;">
				고객센터 : 1555-5551</div>
		</div>
		<div class="row">
			<div class="col-12" style="color: black; font-size: 13px;">평일
				09:00 ~ 18:00 (주말 & 공휴일 제외)</div>
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
		<div class="row" style="text-align: center;">
			<div class="col-1" onclick="location.href='회사소개.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">회사소개</div>
			<div class="col-1" onclick="location.href='이용약관.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">이용약관</div>
			<div class="col-2" onclick="location.href='개인정보처리방침.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">개인정보처리방침</div>
			<div class="col-1" onclick="location.href='공지사항.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">공지사항</div>
			<div class="col-1" onclick="location.href='고객센터.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">고객센터</div>
			<div class="col-6"></div>
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		<div class="row">
			<div class="col-12" style="font-size: 12px;">
				<p>
					상호명 : (주)다나와방 / 이메일 : danawabang@danawabang.com / 대표이사 : 박신우 /
					사업자등록번호 : 999-88-77777 / 통신판매업신고번호 : 제2021-서울역삼-0215호<br> 주소 :
					서울 역삼구 역삼대로56길 6 타워팰리스타워 31층 <br> Copyright 2021. danawabang,
					Co., Ltd. All rights reserved
				</p>
			</div>

		</div>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
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
		//중단 카테고리 색변환
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
	</script>
	<!-- 필요한 script -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous"></script>
</body>
</html>
