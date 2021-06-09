<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<% 
	Member loginUser = (Member) session.getAttribute("loginUser"); 
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인페이지</title>
<script type=text/javascript src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">


<!-- 메인이미지슬라이드 -------------->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- --------------------- -->


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


/* ---------------------------베스트 상품 슬라이드----------------------------------- */

.carousel-control-prev-icon,
.carousel-control-next-icon {
  background-color: tomato !important;
}

.fdi-Carousel .carousel-inner .active.carousel-item,
.fdi-Carousel .carousel-inner .carousel-item-next,
.fdi-Carousel .carousel-inner .carousel-item-prev {
  display: flex;
  
  
} 

/* 'Again 33% means col-4, in order to make it responsive or whatever you want, you have to create different translateX()  for differernt col' */
.fdi-Carousel .carousel-inner .active.carousel-item-left, .fdi-Carousel .carousel-inner .carousel-item-prev {
  transform: translateX(-33.33%);
}
.fdi-Carousel .carousel-inner .active.carousel-item-right, .fdi-Carousel .carousel-inner .carousel-item-next {
  transform: translateX(33.33%);
}

.fdi-Carousel .carousel-inner .carousel-item-left, .fdi-Carousel .carousel-inner .carousel-item-right {
  transform: translateX(0);
  }



/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }



/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }

/* -------------메인 이미지 슬라이드------------------------------------------------------------------------------- */
.swiper-container {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 80%;
        height: 80%;
        object-fit: cover;
        cursor:pointer;
      }

/* ------------------------ */
.img-rounded{cursor:pointer;}

	
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
			<% if(loginUser == null) { %>
			<!-- 로그인/회원가입 아이콘 -->
			<div class="col-2">
				<div id="login" onclick="location.href='<%= request.getContextPath() %>/loginForm.me';"
					style="width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;">로그인/회원가입</div>
			</div>
			<% } else { %>
			<!-- 로그아웃 아이콘 -->
			<div class="col-2">
				<div id="logout" onclick="location.href='<%= request.getContextPath() %>/logout.me';"
					style="width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;">로그아웃</div>
			</div>	
			<% } %>
			
			<!-- 로그인 안했을 시 마이페이지/장바구니 아이콘 누르면 -->
			<% if (loginUser == null) { %>
			
			<!-- 마이페이지 아이콘  -->
			<div class="col-1" style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-person i-plain" onclick="location.href='<%= request.getContextPath() %>/loginForm.me';" style="font-size: 42px;"></i>
			</div>
			
			<!-- 장바구니 아이콘 -->
			<div class="col-1" style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-cart2 i-plain" onclick="location.href='<%= request.getContextPath() %>/loginForm.me';" style="font-size: 38px;"></i>
			</div>
			<% } %>
			
			<!-- 관리자 로그인했을 시 마이페이지->관리자페이지 & 장바구니 아이콘 없애기 -->
			<% if(loginUser != null && loginUser.getIsAdmin().equals("ADMIN")) { %>
			
			<!-- 마이페이지 아이콘  -->
			<div class="col-1" style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-person i-plain" onclick="location.href='<%= request.getContextPath() %>/관리자페이지.me';" style="font-size: 42px;"></i>
			</div>
			<% } %>
			
			<% if(loginUser != null && loginUser.getIsAdmin().equals("USER")) { %>
			<!-- 마이페이지 아이콘  -->
			<div class="col-1" style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-person i-plain" onclick="location.href='<%= request.getContextPath() %>/myOrder.me';" style="font-size: 42px;"></i>
			</div>
			
			<!-- 장바구니 아이콘 -->
			<div class="col-1" style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-cart2 i-plain" onclick="location.href='<%= request.getContextPath() %>/장바구니.me';" style="font-size: 38px;"></i>
			</div>
			<% } %>
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
			<div class="col-2" onclick="location.href='스토어페이지(완).html';"
				style="font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">스토어</div>
			<!-- 셀프가이드 카테고리 -->
			<div class="col-2" onclick="location.href='셀프가이드(완).html';"
				style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">셀프가이드</div>
			<!-- 프로모션 카테고리 -->
			<div class="col-2" onclick="location.href='프로모션(완).html';"
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


		
		<!-- 중간 메인사진 사이드 바-->
		
		<!-- Swiper -->
	    <div class="swiper-container mySwiper">
	      <div class="swiper-wrapper">
	        <div class="swiper-slide">
	        	<img src="images\main_page_images\main_middle_1\pic1_1a.jpg" alt=""><br>
	        </div>
	        <div class="swiper-slide">
	        	<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt=""><br>
	        </div>
	        <div class="swiper-slide">
	        	<img src="images\main_page_images\main_middle_1\pic1_3a.jpg" alt=""><br>
	        </div>
	        <div class="swiper-slide">
	        	<img src="images\main_page_images\main_middle_1\pic1_4a.jpg" alt=""><br>
	        </div>
	        <div class="swiper-slide">
	        	<img src="images\main_page_images\main_middle_1\pic1_5a.jpg" alt=""><br>
	        </div>
	        
	      </div>
	      
	      <div class="swiper-pagination"></div>
	    </div>
		
		
		
		
		<!-- 셀프가이드 -->
		<div class="container">
			<br>
			<div class="row"
				style="margin-top: 50px; color: #11BBFF; text-align: center; font-size: 25px; font-weight: bold;">
				<div class="col-1"></div>
				<div class="col-10">셀프가이드</div>
				<div class="col-1"></div>
			</div>
			
			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
				
			<div class="row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="row" style=" height: 225px;">
						<div class="" style="width: 30%; overflow: hidden;">
							<img class="img-rounded" onclick="location.href='';"
								src="images\self_guide\planning\sg_pl_1.jpg">
							
						</div>
						<div style="width: 5%; background: white;"></div>
						<div class="" style="width: 30%; overflow: hidden;">
							<img class="img-rounded" onclick="location.href='';"
								src="images\self_guide\planning\sg_pl_2.jpg">
							
						</div>
						<div style="width: 5%; background: white;"></div>
						<div class="" style="width: 30%; overflow: hidden;">
							<img class="img-rounded" onclick="location.href='';"
								src="images\self_guide\planning\sg_pl_3.jpg">
							
						</div>
					</div>
				</div>
				<div class="col-1"></div>
			
			</div>
			
			<!-- 행 사이 빈공간-->
			
			
			<!-- 베스트 제품 -->
			<div class="row"
				style="color: #11BBFF; text-align: center; font-size: 25px; font-weight: bold; margin-top: 50px;">
				<div class="col"></div>
				<div class="col-6">새로운 상품 보러가기</div>
				<div class="col"></div>
			</div>
			<!-- 베스트 제품 이미지 -->
			<div class="row " style="margin-top: 50px; height: 250px;">
				<div class="col-1"></div>
				<div class="col-10">

					<div class="container-fluid ">
						<div class="row w-100">
							<div class="col" style="left:30px;">
								<div id="outerCarousel" class="carousel fdi-Carousel slide"
									data-ride="carousel" data-interval="5000">
									<div class="carousel-inner row no-gutters">
										<div class="carousel-item active">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_1.jpg"
													onclick="location.href='';">
											</div>
										</div>
										<div class="carousel-item">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_2.jpg"
													onclick="location.href='';">
											</div>
										</div>
										<div class="carousel-item">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_3.jpg"
													onclick="location.href='';">
											</div>
										</div>
										<div class="carousel-item">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_4.jpg"
													onclick="location.href='';">
											</div>
										</div>
										<div class="carousel-item">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_5.jpg"
													onclick="location.href='';">
											</div>
										</div>
										<div class="carousel-item">
											<div class="col-4 text-center">
												<input type="image" style="height:250px;" class="img-rounded"
													src="images\main_page_images\best_image\pic2_6.jpg"
													onclick="location.href='';">
											</div>
										</div>
									</div>
									<a class="carousel-control-prev" href="#outerCarousel"
										role="button" data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next" href="#outerCarousel"
										role="button" data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-1"></div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>
		
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

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
	
	
	
	
	<!-- ------------------------스크립트 공간 ----------------------- -->
	
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


	<!-- 메인 이미지 슬라이드 -->
	<script>
	var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
          loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        
      });
	</script>	
	
		<!-- 베스트상품 슬라이드 -->
	<script>
		$(document).ready(function () {
			  $('.fdi-Carousel .carousel-item').each(function () {
			    var next = $(this).next();
			    if (!next.length) {
			      next = $(this).siblings(':first');
			    }
			    next.children(':first-child').clone().appendTo($(this));
			    
			    //this will only work for carousel with 3 items since it only adds next() and  next.next();

			    if (next.next().length > 0) {
			      next.next().children(':first-child').clone().appendTo($(this));
			    }
			    else {
			      $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
			    }
			  });
			});
		
		
	</script>
	
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