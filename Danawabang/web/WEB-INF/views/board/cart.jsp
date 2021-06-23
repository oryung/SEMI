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

/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
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