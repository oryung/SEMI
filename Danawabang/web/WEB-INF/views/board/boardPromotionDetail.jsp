<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="board.model.vo.*, java.util.*"%>
<%
	Board b = (Board) request.getAttribute("board");
ArrayList<BoardAttachment> fileList = (ArrayList) request.getAttribute("fileList");
BoardAttachment titleImg = fileList.get(0);
BoardAttachment contentImg1 = fileList.get(1);
BoardAttachment contentImg2 = fileList.get(2);
BoardAttachment contentImg3 = fileList.get(3);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션_상세</title>
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
	border: 0px solid green;
	}
.water3 {
	background: #11BBFF;
	border-color: #11BBFF;
	width: 100px;
	height: 30px;
	border: none;
	color:  white;
	border-radius: 4px;
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
		
		
		<!-- 셀프가이드 전용 -->
		<div class="container" style="margin-bottom: 50px;">
			<div class="row" >
				<div class="col-4"></div>
				<div class="col-4" style=" text-align:center; font-size: 25px; color: #11BBFF; font-weight: bold;">프로모션</div>
				<div class="col-4"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-7" style=" font-size: 30px; text-decoration: none; font-weight: bold; margin-left: 20px; margin-bottom:30px;"><%= b.getBoardTitle() %></div>
			<div class="col-3"></div>
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-2"></div>
			<div class="col-5" style=" font-size: 17px; text-decoration: none; font-weight: bold; margin-left: 20px;">조회수 : <%= b.getBoardCount() %></div>
			<div class="col-4" style=" font-size: 17px; text-decoration: none; font-weight: bold; margin-left: 50px;">작성일자 : <%= b.getEnrollDate() %></div>
		</div>
		<% 
			String links = "";
		%>
		<% switch(b.getBoardId()){ 
						case 272 : links= "1,"; break;
						case 271 : links= "3,"; break;
						case 270 : links= "3,"; break;
						case 269 : links= "6,"; break;
						case 268 : links= "3,"; break;
						case 267 : links= "6,"; break;
					 } %>
		<div class="container">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">
					<div class="thumb-list" align="center">
						<div style="margin-bottom:30px;"><img id="titleImg" width=720 name="titleImg" src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=titleImg.getChangeName()%>"></div>
						<div style="margin-bottom:30px;"><img id="titleImg" width=720 name="contentImg1" src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg1.getChangeName()%>"></div>
						<div style="margin-bottom:30px;"><img id="titleImg" width=720 name="contentImg2" src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg2.getChangeName()%>"></div>
						<div style="margin-bottom:30px;"><img id="titleImg" width=720 name="contentImg3" src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg3.getChangeName()%>"></div>
						<div style="margin-top: 50px;font-weight:bold; font-size:20px;">프로모션 관련 상품을 보고 싶으시다면<br>
						<button class="water3" style="margin-top:30px; font-size: 18px;" 
						onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?currentPage=1&checkedItemCategory=<%=links%>'">보러 가기</button></div>
					</div>
		</div>
		<div class="col-2"></div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 60px;"><input type="button" class="button1" onclick="location.href='<%=request.getContextPath()%>/boardPromotion.bo'" value="돌아가기" style="margin-left: 205px;">
				</div>
				
					<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 160px;"></div>
	
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