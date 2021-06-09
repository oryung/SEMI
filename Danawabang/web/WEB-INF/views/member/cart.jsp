<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Bootstrap cdn 설정 -->
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<style>
body {
	margin: 0;
	padding: 0;
	
	background: #FFFFFF;
	
	height: 2098px;
	margin: 0 auto;
}
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
	box-shadow: 0 0 0 0 rgba(17, 187, 255, 0);
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
	box-shadow: 0 0 0 0 rgba(17, 187, 255, 0);
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
/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
}
/* ----------------아이콘 호버시 색 바꾸기------------------- */


}
.i-side {
     color: #fff;
 }
.i-side:hover {
     color: #FBA481;
 }
 
.side-nav {
	color: #fff;
}
.side-nav:hover{
	color: #FBA481;
	text-decoration:none !important
}

/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }



/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }
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
	
	
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>


	<!-- ------------------------------------------장바구니-------------------------------------------- -->
	
		
		<div class="row-12" style="font-size: 25px; color: #11BBFF; font-weight: bold; text-align: center;">장바구니
		
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style="font-size:15px;font-weight:bold;background: #eee;">
				<div class="row">
					<div style="width:100%;text-align:center;"></div>				
				</div>
				<div class="row">
					<img src="images\main_page_images\go_home\pic3_1.jpg" style="height:200px; margin:15px 10px;">				
				</div>
			</div>
			<div class="col-7" style="font-weight:bold; background: #eee;">
				<div class="row">

				</div>
				<br>
				<div class="row" style="font-size:18px;">
					브랜드명/상품명
				</div>
				<hr>
				<div class="row" style="font-size:15px;">
					수량
				</div>
				<div class="row">
					<input type="number" class="form-control" name="amount" min="0" max="100" step="1" value="0" style="width:80px;height:30px;font-size:15px;">
				</div>
				<div class="row" style="margin-top:10px;">
					<span>옵션</span>
				</div>
				<div class="row">
					<div>
						<select class="form-select form-select-sm form-control"
							aria-label=".form-select-sm example" style="width:200px;height:40px;font-size:14px;">
							<option selected disabled>==옵션 선택==</option>
							<option value="1">화이트</option>
							<option value="2">핑크</option>
							<option value="3">스카이블루</option>
						</select>
					</div>
				</div>
				
				<hr>
				<div style="margin-top:-15px;font-size:20px;font-weight:bold; text-align:right ;">
				<span >9,000원 </span>
				</div>
			</div>
				
			<div class="col-1" style="font-size:15px; align:right; font-weight:bold;">
				
			</div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style="font-size:15px;font-weight:bold;background: #eee;">
				<div class="row">
					<div style="width:100%;text-align:center;"></div>				
				</div>
				<div class="row">
					<img src="images\main_page_images\go_home\pic3_1.jpg" style="height:200px; margin:15px 10px;">				
				</div>
			</div>
			<div class="col-7" style="font-weight:bold; background: #eee;">
				<div class="row">

				</div>
				<br>
				<div class="row" style="font-size:18px;">
					브랜드명/상품명
				</div>
				<hr>
				<div class="row" style="font-size:15px;">
					수량
				</div>
				<div class="row">
					<input type="number" class="form-control" name="amount" min="0" max="100" step="1" value="0" style="width:80px;height:30px;font-size:15px;">
				</div>
				<div class="row" style="margin-top:10px;">
					<span>옵션</span>
				</div>
				<div class="row">
					<div>
						<select class="form-select form-select-sm form-control"
							aria-label=".form-select-sm example" style="width:200px;height:40px;font-size:14px;">
							<option selected disabled>==옵션 선택==</option>
							<option value="1">화이트</option>
							<option value="2">핑크</option>
							<option value="3">스카이블루</option>
						</select>
					</div>
				</div>
				
				<hr>
				<div style="margin-top:-15px;font-size:20px;font-weight:bold; text-align:right ;">
				<span >9,000원 </span>
				</div>
			</div>
				
			<div class="col-1" style="font-size:15px; align:right; font-weight:bold;">
				
			</div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style="font-size:15px;font-weight:bold;background: #eee;">
				<div class="row">
					<div style="width:100%;text-align:center;"></div>				
				</div>
				<div class="row">
					<img src="images\main_page_images\go_home\pic3_1.jpg" style="height:200px; margin:15px 10px;">				
				</div>
			</div>
			<div class="col-7" style="font-weight:bold; background: #eee;">
				<div class="row">

				</div>
				<br>
				<div class="row" style="font-size:18px;">
					브랜드명/상품명
				</div>
				<hr>
				<div class="row" style="font-size:15px;">
					수량
				</div>
				<div class="row">
					<input type="number" class="form-control" name="amount" min="0" max="100" step="1" value="0" style="width:80px;height:30px;font-size:15px;">
				</div>
				<div class="row" style="margin-top:10px;">
					<span>옵션</span>
				</div>
				<div class="row">
					<div>
						<select class="form-select form-select-sm form-control"
							aria-label=".form-select-sm example" style="width:200px;height:40px;font-size:14px;">
							<option selected disabled>==옵션 선택==</option>
							<option value="1">화이트</option>
							<option value="2">핑크</option>
							<option value="3">스카이블루</option>
						</select>
					</div>
				</div>
				
				<hr>
				<div style="margin-top:-15px;font-size:20px;font-weight:bold; text-align:right ;">
				<span >9,000원 </span>
				</div>
			</div>
				
			<div class="col-1" style="font-size:15px; align:right; font-weight:bold;">
				
			</div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style="font-size:15px;font-weight:bold;background: #eee;">
				<div class="row">
					<div style="width:100%;text-align:center;"></div>				
				</div>
				<div class="row">
					<img src="images\main_page_images\go_home\pic3_1.jpg" style="height:200px; margin:15px 10px;">				
				</div>
			</div>
			<div class="col-7" style="font-weight:bold; background: #eee;">
				<div class="row">

				</div>
				<br>
				<div class="row" style="font-size:18px;">
					브랜드명/상품명
				</div>
				<hr>
				<div class="row" style="font-size:15px;">
					수량
				</div>
				<div class="row">
					<input type="number" class="form-control" name="amount" min="0" max="100" step="1" value="0" style="width:80px;height:30px;font-size:15px;">
				</div>
				<div class="row" style="margin-top:10px;">
					<span>옵션</span>
				</div>
				<div class="row">
					<div>
						<select class="form-select form-select-sm form-control"
							aria-label=".form-select-sm example" style="width:200px;height:40px;font-size:14px;">
							<option selected disabled>==옵션 선택==</option>
							<option value="1">화이트</option>
							<option value="2">핑크</option>
							<option value="3">스카이블루</option>
						</select>
					</div>
				</div>
				
				<hr>
				<div style="margin-top:-15px;font-size:20px;font-weight:bold; text-align:right ;">
				<span >9,000원 </span>
				</div>
			</div>
				
			<div class="col-1" style="font-size:15px; align:right; font-weight:bold;">
				
			</div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>
		
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style="font-size:15px;font-weight:bold;background: #eee;">
				<div class="row">
					<div style="width:100%;text-align:center;"></div>				
				</div>
				<div class="row">
					<img src="images\main_page_images\go_home\pic3_1.jpg" style="height:200px; margin:15px 10px;">				
				</div>
			</div>
			<div class="col-7" style="font-weight:bold; background: #eee;">
				<div class="row">

				</div>
				<br>
				<div class="row" style="font-size:18px;">
					브랜드명/상품명
				</div>
				<hr>
				<div class="row" style="font-size:15px;">
					수량
				</div>
				<div class="row">
					<input type="number" class="form-control" name="amount" min="0" max="100" step="1" value="0" style="width:80px;height:30px;font-size:15px;">
				</div>
				<div class="row" style="margin-top:10px;">
					<span>옵션</span>
				</div>
				<div class="row">
					<div>
						<select class="form-select form-select-sm form-control"
							aria-label=".form-select-sm example" style="width:200px;height:40px;font-size:14px;">
							<option selected disabled>==옵션 선택==</option>
							<option value="1">화이트</option>
							<option value="2">핑크</option>
							<option value="3">스카이블루</option>
						</select>
					</div>
				</div>
				
				<hr>
				<div style="margin-top:-15px;font-size:20px;font-weight:bold; text-align:right ;">
				<span >9,000원 </span>
				</div>
			</div>
				
			<div class="col-1" style="font-size:15px; align:right; font-weight:bold;">
				
			</div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<!-- 페이지수 표시 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center" style="fill: pink;">
				<li class="page-item"><a class="page-link" href="#"><span
						aria-hidden="true">&laquo;</span></a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>

				<li class="page-item"><a class="page-link" href="#"><span
						aria-hidden="true">&raquo;</span></a></li>
			</ul>
		</nav>
		
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 5px;"></div>

		

		<div class="row" style="height:50px;border:1px solid white;">

		</div>
		<div class="row" style="font-weight:bold; ">
				
			<div class="col-1"></div>
			<div class="col-5">
				<div class="row" style="font-size:15px;color:gray; background:#eee;">
					<div class="col-12">
						<div style="">총 상품 금액</div>
					</div>
					
					<div class="col-12">
						<div style="">총 배송비</div>
					</div>
					
					<div class="col-12" style="color:black; font-size:20px; margin-top:15px;">
						<div style="">결제 금액</div>
					</div>
				</div>
			</div>
			<div class="col-5" style="background:#eee;">
				<div class="row" style="font-size:15px;color:gray;">
					<div class="col-11">
						<div style="text-align:right; left:20px;">9,000</div>
					</div>
					<div class="col-1">
						<div style="text-align:right">원</div>
					</div>					
				</div>
				<div class="row" style="font-size:15px;color:gray;">
					<div class="col-11">
						<div style="text-align:right">9,000</div>
					</div>
					<div class="col-1">
						<div style="text-align:right">원</div>
					</div>					
				</div>
				<div class="row" style=" font-size:20px; margin-top:15px;">
					<div class="col-11">
						<div style="text-align:right">9,000</div>
					</div>
					<div class="col-1">
						<div style="text-align:right">원</div>
					</div>					
				</div>
			<div class="col-1"></div>
				
			</div>
		</div>
		<div class="row" style="border:0px solid white;height:10px;">

		</div>
		<div class="row">
			<div class="col-12" align="center">
					<div class="row" style="width:200px; height: 50px;">
						<div class="col"
							style="position: absolute; left: 0%; top: 40%; width: 100%;">
							<button class="button1" onclick="location.href='결제페이지(완).html'">주문 하기</button>

						</div>
					</div>
				</div>
		</div>
		
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

				<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 140px;"></div>
	
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
	
	<!-- 오른쪽 따라 다니는 네비게이션 바 -->

	<div id="followquick" style="width: 7%;">
		<div class="row"
			style="height: 280px; background: #11BBFF; border-radius: 3px;">
			<div class="col" style="margin-top: -10px;">
				<br> <i class="bi bi-house"
					style="font-size: 50px; margin-left: 5px; color: #fff"></i> <span
					style="font-size: 18px; font-weight: bold; color: #fff">다나와방</span>
				<div class="row" style="margin-top: 110px;"></div>

				<div>
					<a href="" class="side-nav"
						style="font-size: 20px; font-weight: bold; text-decoration: none">
						<i class="bi bi-whatsapp i-side"
						style="font-size: 23px; text-align: center;"></i>&nbsp;&nbsp;고객센터
					</a>
				</div>

				<span style="font-size: 15px; font-weight: bold; color: #fff">1555-5551</span>

				<div
					style="margin-top: 10px; width: 100%; border-bottom: 2px solid #fff"></div>
			</div>
		</div>
	</div>
	<!-- 탭 하면 맨위로 올라가는 버튼 -->				 
	<div class="row">
		<div class="col-10"></div>
		<div class="col-1" style="float-right">
			<i class="bi bi-arrow-up-circle-fill bottomNav i-plain" 
			style="cursor:pointer;" onclick="window.scrollTo(0,0);" ></i>
		</div>
		<div class="col-1">
			<i class="bi bi-whatsapp bottomNav i-plain" style="cursor:pointer;" ></i>
		
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
	</script>
	
	<!-- 필요한 외부 script -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous"></script>
	
	<!-- 스크롤 시 하단 아이콘 보이기-------------------------------------------- -->
	<script>
	//Javascript
	var lastScrollTop = 0;
	var delta = 10;
	var fixBox = document.querySelector('.bottomNav');
	var fixBoxHeight = fixBox.offsetHeight;
	var didScroll;
	//스크롤 이벤트 
	window.onscroll = function(e) {
	    didScroll = true;
	};

	//0.25초마다 스크롤 여부 체크하여 스크롤 중이면 hasScrolled() 호출
	setInterval(function(){
	    if(didScroll){
	        hasScrolled();
	        didScroll = false;
	    }
	}, 250);

	function hasScrolled(){
	    var nowScrollTop = window.scrollY;
	    if(Math.abs(lastScrollTop - nowScrollTop) <= delta){
	        return;
	    }
	    if(nowScrollTop > lastScrollTop && nowScrollTop > fixBoxHeight){
	        //Scroll down
	        fixBox.classList.add('show');
	    }else{
	        if(nowScrollTop + window.innerHeight < document.body.offsetHeight){
	            //Scroll up
	            fixBox.classList.remove('show');
	        }
	    }
	    lastScrollTop = nowScrollTop;
	};
	
	</script>
	<!-- --------------------따라오는 오른쪽 네비게이션 ------------------------------- -->
	
	<script>
	//follow quick menu
	$(window).scroll(function(){
	var scrollTop = $(document).scrollTop();
	if (scrollTop < 180) {
	 scrollTop = 180;
	}
	$("#followquick").stop();
	$("#followquick").animate( { "top" : scrollTop });
	});
	</script>
	
</body>
</html> 