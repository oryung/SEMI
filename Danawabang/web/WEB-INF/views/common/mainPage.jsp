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
		<%@ include file="top.jsp" %>

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
		<%@ include file="bottom.jsp" %>
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