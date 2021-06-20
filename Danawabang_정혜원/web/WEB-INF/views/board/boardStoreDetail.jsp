<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어_상세</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<style>
	div {
		border: 0px solid #11BBFF;
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
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
	
	
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>


<!-- ------------------------------------상품 상세 페이지--------------------------------------------- -->


		<div class="row">
			<div class="col-12">
				<h5 style="color:#11BBFF;text-align:center; font-weight: bold; font-size: 25px;">상품 상세 페이지</h5>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-5"> <!-- 왼쪽 영역 첫행  -->
				<div class="row">
					<div class="col-12" style="width:200px;height:200px;">
						<img alt="상품이미지">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div style="font-size:15px;background:rgb(184, 233, 255)">Tips: 수납을 할 땐 잘 하셔야 해요!<br>
						자세한 정보를 원한다면 -> <a href="#">셀프가이드</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-1" align="left"></div> <!-- 오른쪽 영역  -->
			<div class="col-6" align="left""> <!-- 오른쪽 영역  -->
				<div class="row">
					<div class="col-12" >
						NEW앤디 LED/평상형 4단 멀티 수납 침대 시리즈
					</div>
				</div>
				<div class="row">
					<div class="col-12" style="text-decoration:line-through;color:rgb(158, 158, 158);">
						269,900 원
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						169,900원 <span style="color:rgb(231, 76, 60);">37%</span>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<a href="#" style="color:rgb(158, 158, 158);text-decoration: none;font-size:20px;">
						배송비
						</a>
						<a href="#" style="color:rgb(158, 158, 158);text-decoration: none;font-size:20px;">
						착불
						</a>
					</div>
				</div>
				<div class="row">
					
					<div class="col-12">
						<b style="font-size:20px;">옵션</b>
					</div>
					<div class="col-12">
						<select class="form-control" name="color" id="color" style="width: 200px; margin-top:5px;margin-bottom:10px;">
							<option disabled>== 선택 ==</option>
							<option value="white">화이트</option>
							<option value="oak">오크</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<b style="font-size:20px;">수량</b>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<input class="form-control" type="number" name="amount" min="0" max="100" step="1" value="0" style="width: 80px; height:30px;margin-top:5px;margin-bottom:10px;">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<b>합계: <span style="color:rgb(192, 57, 43);">169,900</span>원</b>
					</div>
				</div>
				<div class="row" style="margin-top:5px;margin-bottom:10px;">
					<div class="col-12">
						&nbsp;<input type="button" onclick="location.href='';" value="장바구니" style="background: rgb(184, 233, 255); border-color: rgb(184, 233, 255); width: 150px; height: 50px; border: none; color:black; border-radius: 4px;">
						&nbsp;<input type="button" onclick="location.href='';" value="결제하기" style="background: #11BBFF; border-color: #11BBFF; width: 150px; height: 50px; border: none; color:white; border-radius: 4px;">
					</div>
				</div>
			</div>
		</div>


	<div class="container" style="margin-top:50px;">
		<div class="row" align="left">
			<ul class="nav col-12" style="background-color:#11BBFF">
			  <li class="nav-item">
				<a class="nav-link" href="#product-detail" style="color: white"><b>상품정보</b></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#review" style="color: white"><b>리뷰</b></a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#delivery-refund" style="color: white"><b>배송환불</b></a>
			  </li>
			</ul>
		</div>
	</div>	
	<div class="container" id="product-detail" style="color:blue;width:100%;height:1000px;">
		상품상세정보
	</div>
	<div class="container" id="review" style="color:blue;width:100%;height:1000px;">
		리뷰
	</div>
	<div class="container" id="delivery-refund" style="color:blue;width:100%;height:1000px;">
		배송환불
	</div>

			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>
	
	
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