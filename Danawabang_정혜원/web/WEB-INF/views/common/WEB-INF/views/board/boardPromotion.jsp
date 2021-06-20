<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-4.3.1.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

    
    
<style type="text/css">
		div {
			border: 0px solid green;
		}
      

/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
}

     
.pro_ml { text-decoration:none !important } 
.pro_ml:hover { text-decoration:none !important }     
.img-thumbnail {margin-top:50px;}
.pro_mt {margin-top:-90px; margin-left:10px; color:#fff; text-shadow: 2px 2px 6px gray;}



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
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		
		<!-- 셀프가이드 전용 -->
		<div class="container">
			<div class="row" >
				<div class="col-4"></div>
				<div class="col-4" style=" text-align:center; font-size: 25px; text-decoration: none; color: #11BBFF; font-weight: bold;">프로모션</div>
				<div class="col-4"></div>
			</div>
		</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: -20px;"></div>
			
	
		<div class="container">
			<div class="row" >
				<div class="col-2"></div>
				<div class="col-8">
					<img src="images\promotion\promotion_main\promotion_001a.jpg" 
						class="img-thumbnail" onclick="location.href='프로모션내용(완).html';" style="cursor:pointer;">
								<a href="프로모션내용(완).html" class="pro_ml">
									<div class="pro_mt">
										<h2>[단독특가]맞춤패브릭 전문관</h2><br>
										<div style="margin-top:-20px;">
											<p>커튼/블라인드/침구 내 취향대로 디자인!</p>
										</div>
									</div>			
								</a>
					<img src="images\promotion\promotion_main\promotion_002a.jpg"
							class="img-thumbnail" onclick="location.href='';" style="cursor:pointer;">
							<a href="" class="pro_ml">
									<div class="pro_mt">
										<h2>매트리스 바꾸긴 좀 부담? 그럴땐 토퍼가 딱!</h2><br>
										<div style="margin-top:-20px;">
											<p>메모리폼/라텍스/폴리솜/구스토퍼</p>
										</div>
									</div>			
								</a>
					<img src="images\promotion\promotion_main\promotion_003a.jpg" 
							class="img-thumbnail" onclick="location.href='';" style="cursor:pointer;">
							<a href="" class="pro_ml">
									<div class="pro_mt">
										<h2>원룸에 딱 좋은 수납침대 BEST</h2><br>
										<div style="margin-top:-20px;">
											<p>침대 하나로 모든 수납 해결!</p>
										</div>
									</div>			
								</a>
				</div>
				<div class="col-2"></div>
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
		
	
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
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
	

		<!-- ---------------------------------------스크립트 영역 --------------------------------------->
		
		
	


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