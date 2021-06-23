<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.Member"%>

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
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">


<!-- 메인이미지슬라이드 -------------->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- --------------------- -->


<style>



/* ---------------------------베스트 상품 슬라이드----------------------------------- */
.carousel-control-prev-icon, .carousel-control-next-icon {
	background-color: tomato !important;
}

.fdi-Carousel .carousel-inner .active.carousel-item, .fdi-Carousel .carousel-inner .carousel-item-next,
	.fdi-Carousel .carousel-inner .carousel-item-prev {
	display: flex;
}

/* 'Again 33% means col-4, in order to make it responsive or whatever you want, you have to create different translateX()  for differernt col' */
.fdi-Carousel .carousel-inner .active.carousel-item-left, .fdi-Carousel .carousel-inner .carousel-item-prev
	{
	transform: translateX(-33.33%);
}

.fdi-Carousel .carousel-inner .active.carousel-item-right, .fdi-Carousel .carousel-inner .carousel-item-next
	{
	transform: translateX(33.33%);
}

.fdi-Carousel .carousel-inner .carousel-item-left, .fdi-Carousel .carousel-inner .carousel-item-right
	{
	transform: translateX(0);
}

/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */
.bottomNav {
	position: fixed;
	font-size: 50px;
	color: #11BBFF;
}

.bottomNav {
	bottom: -90px;
	transition: bottom .2s;
}

.bottomNav.show {
	bottom: 0;
}

/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick {
	position: absolute;
	top: 200px;
	right: 50%;
	margin-top: 270px;
	margin-right: -800px;
}

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
	width: 70%;
	height: 70%;
	object-fit: cover;
	cursor: pointer;
}

/* ------------------------ */
.img-rounded {
	cursor: pointer;
}

div .stomach {
	background: url(images/1.jpg);
}
}
</style>


</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">

		<%@ include file="../common/top.jsp"%>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 60px;"></div>



		<!-- 중간 메인사진 사이드 바-->

		<!-- Swiper -->
		<div class="swiper-container mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images\main_page_images\main_middle_1\pic1_1a.png" alt=""><br>
				</div>
				<div class="swiper-slide">
					<img src="images\main_page_images\main_middle_1\pic1_2a.png" alt=""><br>
				</div>
				<div class="swiper-slide">
					<img src="images\main_page_images\main_middle_1\pic1_3a.png" alt=""><br>
				</div>
				<div class="swiper-slide">
					<img src="images\main_page_images\main_middle_1\pic1_4a.png" alt=""><br>
				</div>
				<div class="swiper-slide">
					<img src="images\main_page_images\main_middle_1\pic1_5a.png" alt=""><br>
				</div>

			</div>
			<div class="swiper-pagination"></div>
		</div>


		<!-- 베스트제품  -->
		<div class="container px-4 py-5" id="custom-cards"
			style="margin-top: 60px;">
			<h3 class="pb-2 border-bottom"
				style="color: #11bbff; font-weight: bold; border-bottom: #11bbff;">베스트
				제품 구경하기</h3>
		</div>
		<div class="row mb-2">
			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-primary">더운 여름의
							해결사</strong>
						<h3 class="mb-0">휘센 에어컨</h3>
						<p class="card-text mb-auto" style="margin-top: 15px;">
							기능도, 혜택도 업그레이든 된<br>부동의 스테디셀러 휘센 에어컨
						</p>
						<div onclick="" class="stretched-link" style="cursor:pointer;">사러가기</div>
					</div>
					<div class="col-auto d-none d-lg-block">
						<img src="images\main_page_images\go_home\pic3_5.jpg">
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-primary">더운 여름의
							해결사</strong>
						<h3 class="mb-0">휘센 에어컨</h3>
						<p class="card-text mb-auto" style="margin-top: 15px;">
							기능도, 혜택도 업그레이든 된<br>부동의 스테디셀러 휘센 에어컨
						</p>
						<div onclick="" class="stretched-link" style="cursor:pointer;">사러가기</div>
					</div>
					<div class="col-auto d-none d-lg-block">
						<img src="images\main_page_images\go_home\pic3_5.jpg">
					</div>
				</div>
			</div>
		</div>

		<!-- 셀프가이드 -->
		<div class="container px-4 py-5" id="custom-cards"
			style="margin-top: 60px;">
			<h3 class="pb-2 border-bottom"
				style="color: #11bbff; font-weight: bold;">셀프 가이드</h3>
		</div>

		<div class="p-4 p-md-5 mb-4 rounded stomach"
			style="height: 450px; width: 800px; margin: auto; color: #F5DF94; cursor:pointer;">
			<div class="col-md-6 px-0"
				style="border-radius: 5px; background-color: none; margin-top: 25px; margin-left: 445px;">
				<div class="display-4"
					style="font-size: 32px; text-align: left; font-weight: bold;">
					셀프가이드 25:<br>소품 활용
				</div>
			</div>
		</div>


		<!-- 신상품 -->
		<div class="container px-4 py-5" id="custom-cards"
			style="margin-top: 60px;">
			<h3 class="pb-2 border-bottom"
				style="color: #11bbff; font-weight: bold; border-bottom: #11bbff;">따끈따끈한
				신상품 보러가기</h3>
		</div>
		<!-- 베스트 제품 이미지 -->
		<div class="row " style="height: 250px;">
			<div class="col-1"></div>
			<div class="col-10">

				<div class="container-fluid ">
					<div class="row w-100">
						<div class="col" style="left: 30px;">
							<div id="outerCarousel" class="carousel fdi-Carousel slide"
								data-ride="carousel" data-interval="5000">
								<div class="carousel-inner row no-gutters">
									<div class="carousel-item active">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_1.jpg"
												onclick="location.href='';">
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_2.jpg"
												onclick="location.href='';">
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_3.jpg"
												onclick="location.href='';">
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_4.jpg"
												onclick="location.href='';">
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_5.jpg"
												onclick="location.href='';">
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-4 text-center">
											<input type="image" style="height: 250px;"
												class="img-rounded"
												src="images\main_page_images\best_image\pic2_6.jpg"
												onclick="location.href='';">
										</div>
									</div>
								</div>
								<a class="carousel-control-prev" href="#outerCarousel"
									role="button" data-slide="prev"> <span
									class="carousel-control-prev-icon" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="carousel-control-next" href="#outerCarousel"
									role="button" data-slide="next"> <span
									class="carousel-control-next-icon" aria-hidden="true"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="col-1"></div>
		</div>

	<!-- 행 사이 빈공간-->
	<div class="row" style="margin-top: 100px;"></div>

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<%@ include file="../common/bottom.jsp"%>

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
</div>

	<!-- 오른쪽 따라 다니는 네비게이션 바 -->

	<div id="followquick" style="width: 7%;">
		<div class="row"
			style="height: 200px; background: #11BBFF; color: #fff; border-radius: 10px;">
			<div class="col"
				style="margin-top: -10px; text-align: center; cursor: pointer;"
				onclick="location.href='<%= request.getContextPath() %>/boardFaq.bo';">
				<div>
					<div class="side-nav"
						style="font-size: 19px; font-weight: bold; margin-top: 15px;">
						<i class="bi bi-house" style="font-size: 45px; color: #fff"></i><br>
						<div style="color: #fff;">
							다나와방<br>고객센터
						</div>
						<br>
						<div
							style="font-size: 23px; font-weight: bold; color: #fff; margin-top: -10px;">1555-5551</div>
					</div>
				</div>
				<div
					style="margin-top: 5px; width: 100%; border-bottom: 2px solid #fff"></div>
			</div>
		</div>
	</div>
	<!-- 탭 하면 맨위로 올라가는 버튼 -->
	<div class="row">
		<div class="col-10"></div>
		<div class="col-1" style="">
			<i class="bi bi-arrow-up-circle-fill bottomNav i-plain"
				style="cursor: pointer;" onclick="window.scrollTo(0,0);"></i>
		</div>
	</div>




	<!-- ------------------------스크립트 공간 ----------------------- -->



	<!-- 메인 이미지 슬라이드 -->
	<script>
	var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 3750,
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

	$(function(){
		$('#followquick').children().hover(function(){
			$(this).css({'background-color':'#FBA481', 'color' : '#fff'});
	}, function(){
		$(this).css({'background-color':'#11BBFF', 'color' : '#fff'});
	});
	});
</script>

</body>
</html>