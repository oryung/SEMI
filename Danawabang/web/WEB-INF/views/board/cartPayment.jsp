<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니_결제</title>
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
	border: 0px solid blue;
}

h4 {
	color: #11BBFF;
	font-weight: bold;
	text-align: center;
}

h5 {font-size: 15px; 
	text-decoration: none; 
	 
	font-weight: bold;"
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


			<div class="row form-group">
				<div class="col-2"></div>
				<div class="col-8" >
					<h4>배송정보</h4>
				</div>
				<div class="col-2"></div>
			</div>

			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>


			<div class="row form-group">
				<div class="col-2"></div>
				<div class="col-1" align="right" style="margin-top:10px;">
					<h5>이름</h5>
				</div>
				<div class="col-4" align="left">
					<input type="text" class="form-control" placeholder="이름" >
				</div>
				<div class="col-6"></div>
			</div>
			
			<div class="row">
				<div class="col-2"></div>
				<div class="col-1" align="right" style="margin-top:10px;">
					<h5>연락처</h5>
				</div>
				<div class="col-4">
					 <input type="text" class="form-control" placeholder="연락처(-제외)"> 
				</div>
				<div class="col-5"></div>
			</div>
			<br>
			<div class="row" >
				<div class="col-2"></div>
				<div class="col-1" align="right" style="margin-top:10px;">
					<h5>주소</h5>
				</div>
				<div class="col-3" align="left">
					<input type="text" class="form-control" placeholder="우편번호">
				</div>
				<div class="col-3"></div>
			</div>

			<div class="row" style="margin-top:10px;">
				<div class="col-3"></div>
				<div class="col-6" align="left">
					<input type="text" class="form-control" placeholder="주소" size="50%">
				</div>
				<div class="col-2"></div>
			</div>
			
			
			<div class="row" style="margin-top:10px;">
				<div class="col-3"></div>
				<div class="col-6" align="left">
					<input type="text" class="form-control" placeholder="상세주소 입력" size="50%">
				</div>
				<div class="col-2"></div>
			</div>
			
			
			<br>
			<div class="row">
				<div class="col-3" align="right" style="margin-left:10px;">
					<h5>배송메시지</h5>
				</div>
				<div class="col-6" align="left" style="margin-left:-10px;">
					<textarea class="form-control" rows="5" style="resize:none;"></textarea>
				</div>
				<div class="col-2"></div>
			</div>
			<br>
			
			<div class="row" style="margin-top:20px;">
				<div class="col-2"></div>
				<div class="col-8">
					<h4>결제방법</h4>
					<hr>
				</div>
				<div class="col-2"></div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-10">
					<input type="button" value="카카오페이" onclick="location.href='';"
						style="background: #11BBFF; border-color: #11BBFF; width: 200px; height: 50px; border: none; color: white; border-radius: 4px;">
				</div>
			</div>
			
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 40px;"></div>				
			
			<div class="row">
				<div class="col-2"></div>
				<div class="col-3">
					<h5>총 결제예정 금액</h5>
				</div>
				<div class="col-5" align="right">
					<div class="row" style="font-size:20px;">
						
						<div class="col-11" align="right">0</div>
						<div class="col-1">원</div>
					
					</div>
				</div>
				<div class="col-2"></div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-3">
					<h5>주문금액</h5>
				</div>
				<div class="col-5" align="right">
					<div class="row" style="font-size:20px;">
						
						<div class="col-11" align="right">0</div>
						<div class="col-1">원</div>
					
					</div>
				</div>
				<div class="col-2"></div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-3">
					<h5>배송금액</h5>
				</div>
				<div class="col-5" align="right">
					<div class="row" style="font-size:20px;">
						
						<div class="col-11" align="right">0</div>
						<div class="col-1">원</div>
					
					</div>
				</div>
				<div class="col-2"></div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="col-3">
					<h5>포인트 사용 금액</h5>
				</div>
				<div class="col-5" align="right">
					<div class="row" style="font-size:20px;">
						
						<div class="col-11" align="right">0</div>
						<div class="col-1">원</div>
					
					</div>
				</div>
				<div class="col-2"></div>
			</div>
			<div class="row">
				<div class="col-12" align="center">
					<input type="button" value="결제하기" onclick="location.href='';"
						style="background: #11BBFF; border-color: #11BBFF; width: 200px; height: 50px; border: none; color: white; border-radius: 4px;">
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