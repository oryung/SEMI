<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
    
<%
	ArrayList<Product> pSearchList = (ArrayList<Product>)request.getAttribute("pSearchList");
	ArrayList<ProductAttachment> pList = (ArrayList<ProductAttachment>)request.getAttribute("pList");
	int pSearchCount = (Integer)request.getAttribute("pSearchCount");
	String sAllWord = (String)request.getAttribute("sAllWord");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다나와방</title>
<script type=text/javascript src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">

<style>
.container {
    max-width: 1140px;
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


</style>


</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<div id="main-container" class="container">

		<%@ include file="../common/top.jsp"%>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<!-- 행 사이 빈공간-->
		<div class="col-12" style="margin-top: 30px;"><span style="font-size:20px; font-weight: bold;" >'<%= sAllWord %>'</span>에 대한 검색 결과 <span style="color: #11bbff"><%= pSearchCount %></span>개</div>
		<% if(pSearchList.isEmpty()) { %>
		<div class="row">
			<div class="col-2"><img src="images\nosearch.png"></div>
			<div class="col-8 text-center" style="height:300px; top:300px; font-size:30px; font-weight: bold;">찾으시는 결과가 없네요...</div>
			<div class="col-2"></div>
		</div>	
		
		<% } %>
		<!-- 상품결과 -->
		<% if(pSearchList.isEmpty() || pList.isEmpty()) { %>
			<% } else { %>
		<!-- 구분선 -->
		<div class="container">	
		<div style="margin-top: 10px; width: 100%; border-bottom: 1px solid #11BBFF; margin-bottom: 15px;"></div>
			<div class="row">
				<% for(int i = 0; i < pSearchList.size(); i++) { %>
					
					<% Product p = pSearchList.get(i); %>
					<input type="hidden" name="cId" value="<%= p.getProductCategoryId() %>">
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < pList.size(); j++) { %>
								<% ProductAttachment pa = pList.get(j); %>
								<% if(p.getProductId() == pa.getProductId() && pa.getProductFileLevel() == 0) { %>
									<span><img src="<%= request.getContextPath() %>/thumbnail_uploadFiles/<%= pa.getProductChangeName() %>" width="300px" height="300px"></span><br><br>
								<% } %>
							<% } %>
						</div>
						<% int rate =  (int)(Math.ceil(p.getProductDiscountRate()*100)); %>
						<span style="font-size:20px; font-weight:bold; color:#11bbff; margin-left:20px;  margin-right: 80px;"><%= rate %>%</span>
						<span style="font-size:20px; font-weight:bold;"><%= p.getProductPrice() %>원</span><br><br>
						<span style="font-size:17px; font-weight:bold; margin-top:10px;"><%= p.getProductName() %></span><br>
						<span style="font-size:15px;"><%= p.getProductBrand() %></span>
						<input type="hidden" name="pId" value="<%= p.getProductId() %>">
					</div>
					<%  if(i == 8) break; %>
					
				<% } %>
				<pre>
					<button type="button" style="width:250px; margin-left: 100px; font-size: 18px; font-weight: bolder; "class="button1" id="more">더보기</button>
				</pre>
				<div id="product8" style="display:none" >
				<% for(int i = 9; i < pSearchList.size(); i++) { %>
					<% Product p = pSearchList.get(i); %>
					<input type="hidden" name="cId" value="<%= p.getProductCategoryId() %>">
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 9; j < pList.size(); j++) { %>
								<% ProductAttachment pa = pList.get(j); %>
								<% if(p.getProductId() == pa.getProductId() && pa.getProductFileLevel() == 0) { %>
									<span><img src="<%= request.getContextPath() %>/thumbnail_uploadFiles/<%= pa.getProductChangeName() %>" width="300px" height="300px"></span><br><br>
								<% } %>
							<% } %>
						</div>
						<% int rate =  (int)(Math.ceil(p.getProductDiscountRate()*100)); %>
						<span style="font-size:20px; font-weight:bold; color:#11bbff; margin-left:20px;  margin-right: 80px;"><%= rate %>%</span>
						<span style="font-size:20px; font-weight:bold;"><%= p.getProductPrice() %>원</span><br><br>
						<span style="font-size:17px; font-weight:bold; margin-top:10px;"><%= p.getProductName() %></span><br>
						<span style="font-size:15px;"><%= p.getProductBrand() %></span>
						<input type="hidden" name="pId" value="<%= p.getProductId() %>">
					</div>
				<% } %>
				</div>
			</div>
		<% } %>
		</div>
		
			
				
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp"%>
		<!-- 오른쪽 따라 다니는 네비게이션 바 -->
		<div class="container">
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
		</div>	
	
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	</div>
	
	<script>
		//상품 검색 상세페이지 이동
		$(function(){
			$('.thumb-list').click(function(){
				var pId = $(this).find("input").val();
				location.href="<%=request.getContextPath()%>/boardStoreDetail.bo?pId=" + pId;
			});
		});
		
		
		// 더보기 클릭
		//상품 더보기
		$(function(){
		<% if(9 > pSearchList.size()) { %>
			$('#more').hide();
		<% } %>
		});
		
		
		//9페이지 이후 
		$('#more').click(function(){
			$('#more').hide();
			$('#product8').show();
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
	
	
	<!-- --------------------따라오는 오른쪽 네비게이션 ------------------------------- !-->

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