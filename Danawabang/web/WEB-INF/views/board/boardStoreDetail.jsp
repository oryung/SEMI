<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
<%
	Product p = (Product) request.getAttribute("product");
	
	ArrayList<ProductAttachment> fileList = (ArrayList) request.getAttribute("fileList");
	ProductAttachment titleImg = fileList.get(0);
	ProductAttachment contentImg1 = fileList.get(1);
	ProductAttachment contentImg2 = fileList.get(2);
	ProductAttachment contentImg3 = fileList.get(3);
	
	ArrayList<ProductOption> optionList = (ArrayList) request.getAttribute("optionList");
	
	ArrayList<Reply> replyList = (ArrayList)request.getAttribute("replyList");
%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">

<style>

div {
	border: 0px solid #11BBFF;
	line-height: 30px;
}

#cart {
	background: rgb(184, 233, 255);
	border-color: rgb(184, 233, 255);
	width: 150px;
	height: 50px;
	border: none;
	color: black;
	border-radius: 4px;
}

#cartPayment {
	background: #11BBFF;
	border-color: #11BBFF;
	width: 150px;
	height: 50px;
	border: none;
	color: white;
	border-radius: 4px;
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
	margin-right: -850px;
}

.categories {font-size: 20px; color: #11BBFF; font-weight: bold; margin-left:30px;}

.categories:hover {color: #FBA481; text-decoration: none;}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp"%>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->



		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>


		<!-- ------------------------------------상품 상세 페이지--------------------------------------------- -->


		<div class="row">
			<div class="col-12">
				<h5
					style="color: #11BBFF; text-align: center; font-weight: bold; font-size: 25px;">상품
					상세 페이지
					</h5>
				<hr>
			</div>
		</div>
		<form action="" id="detailForm" method="post">
			<div class="row">
				<div class="col-5">
					<!-- 왼쪽 영역 첫행  -->
					<div class="row">
						<div class="col-12">
						<input type="hidden" id="productId" name="productId" value="<%= p.getProductId() %>">
							<img id="titleImg" name="titleImg" width="500" height="350"
								src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=titleImg.getProductChangeName()%>">
						</div>
					</div>
					<br>
					<% 
						String tips = null; 
						int links = 0;
					%>
					<% switch(p.getProductCategoryId()){ 
						case 1 : tips = "침구의 종류와 침구를 선책하는 간단한 팁은?"; links= 176; break; // 침대
						case 2 : tips = "메트리스 종류와 선택하는 팁은?"; links= 142; break; // 매트리스
						case 3 : tips = "공간에 따른 효율적인 수납 팁은?"; links= 169; break; // 서랍장
						case 4 : tips = "커튼마다 종류와 기능이 달라요!"; links= 171; break; // 커튼
						case 5 : tips = "조명 하나로 원하는 분위기를 연출할 수 있어요!"; links= 156; break; // 조명
						case 6 : tips = "가구를 효율적으로 배치할 수 있는 팁은?"; links= 164; break; // 행거
					 } %>
					<div class="row">
						<div class="col-12">
							<div style="font-size: 20px; width:500px; border-radius:8px;  background: rgb(184, 233, 255)">
								<span style="font-weight: bold;">&nbsp; Tips: <%= tips %><br> </span>
								<span style="font-size: 17px;"> &nbsp; 자세한 정보를 원한다면 click! &nbsp; </span>
								<span><a href="<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId=<%= links %>"><%=p.getProductTip()%></a></span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-1" align="left"></div>
				<!-- 오른쪽 영역  -->
				<div class="col-6" align="left"">
					<!-- 오른쪽 영역  -->
					<div class="row">
						<div class="col-12" style="font-weight: bold; color: #686868;">
							<%=p.getProductBrand() %>
						</div>
					</div>
					<div class="row">
						<div class="col-12" style="font-weight: bold; font-size: 25px;">
							<%=p.getProductName()%>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<span style="font-weight: bold; font-size: 22px;"><%=p.getProductPrice()%>원</span>
							<span style="color: rgb(231, 76, 60);"><%= (int)(p.getProductDiscountRate() * 100.0) %>%</span>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<a href="#"
								style="color: rgb(158, 158, 158); text-decoration: none; font-size: 18px;">
								배송비 </a> <a href="#"
								style="color: rgb(158, 158, 158); text-decoration: none; font-size: 20px;">
								<%=p.getProductDeliveryFee()%>원
							</a>
						</div>
					</div>
					<div class="row">

						<div class="col-12">
							<b style="font-size: 20px;">옵션</b>
						</div>
						<div class="col-12">
							<select class="form-control" name="pOptionId" id="pOptionId"
								style="width: 200px; margin-top: 5px; margin-bottom: 10px;">
								<option disabled>== 선택 ==</option>
								<%
									for (ProductOption op : optionList) {
								%>
								<option value="<%=op.getProductOptionId()%>"><%=op.getProductOptionValue()%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<b style="font-size: 20px;">수량</b>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<input class="form-control" type="number" id ="cartProductAmount" name="cartProductAmount" min="1"
								max="100" step="1" value="1"
								style="width: 80px; height: 30px; margin-top: 5px; margin-bottom: 10px;">
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<b>합계: <span style="color: rgb(192, 57, 43);"><%= p.getProductPrice() + p.getProductDeliveryFee() %></span>원
							</b>
						</div>
					</div>
<%-- 					<% if (loginUser != null && loginUser.getIsAdmin().equals("USER")) {%> --%>
<!-- 					<div class="row" style="margin-top: 5px; margin-bottom: 10px;"> -->
<!-- 						<div class="col-12"> -->
<!-- 							<input type="button" class="pay" id="cart" value="장바구니 담기"> &nbsp;&nbsp; -->
<!-- 							<input type="submit" class="pay" id="cartPayment" value="결제하기"> -->
<!-- 						</div> -->
<!-- 					</div> -->
<%-- 					<% } %> --%>
						<div class="row" style="margin-top: 5px; margin-bottom: 10px;">
						<div class="col-12">
							<input type="button" class="pay" id="cart" value="장바구니 담기"> &nbsp;&nbsp;
							<input type="submit" class="pay" id="cartPayment" value="결제하기">
						</div>
					</div>
				</div>
			</div>
		</form>
	
		<script>
				$(function() {
					<% if (loginUser != null && loginUser.getIsAdmin().equals("USER")) {%> 
						$('#cart').click(function() {							
							var bool = confirm('상품이 담겼습니다.\n장바구니로 이동하시겠습니까?');
							if (bool) {
								$('#detailForm').attr('action', 'cart.bo');
								$('#detailForm').submit();
							} else {
								$('#detailForm').attr('action', 'cartInsert.bo');
								$('#detailForm').submit();
							}
						
							});
						$('#cartPayment').click(function() {
							var bool = confirm('결제창으로 이동하시겠습니까?');
							if (bool == true) {
								$('#detailForm').attr('action', 'cartPayment.bo');
								$('#detailForm').submit();
							}	
						});
					<% } %> 	
				});
		</script>
		
		<!-- -------------------------------- 상품상세정보 / 리뷰 / 배송/환불 ----------------------------------- -->
		
		<div id="" class="row" style="margin-top: 100px;">
			<div class="col"></div>
			<div class="col-12">
			
				<!-- 카테고리 -->
				<ul class="nav nav-tabs"
					style="font-size: 18px; color: #11BBFF; font-weight: bold;">
					<li class="active"><a data-toggle="tab" class="categories" href="#home">상품상세정보</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu1">리뷰</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu2">배송/환불</a></li>
				</ul>
				<!-- 세부 카테고리 -->
				<div class="tab-content">
					<div id="home" class="tab-pane in active">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<div style="text-align: center;" class="container"  id="product-detail">
									<br>
										<img id="titleImg" name="titleImg" style="width: 650px;"
											src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=titleImg.getProductChangeName()%>">
										<img id="contentImg1" name="contentImg1" style="width: 650px;"
											src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg1.getProductChangeName()%>">
										<img id="contentImg2" name="contentImg2" style="width: 650px;"
											src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg2.getProductChangeName()%>">
										<img id="contentImg3" name="contentImg3" style="width: 650px;"
											src="<%=request.getContextPath()%>/thumbnail_uploadFiles/<%=contentImg3.getProductChangeName()%>">
									</div>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
									<!-- 가이드 작성 내용-->
	<%-- <form action="<%= request.getContextPath() %>/boardOTOUpdateForm.bo" id="detailForm" method="post" >

		<!-- 댓글 -->
		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<span style="font-weight: bold; font-size: 18px;">댓글</span>
				<div style="border-top: 1px solid lightgray; border-bottom: 1px solid lightgray;">
					<div class="row" style="margin: 5px;">
						<div class="col" id="replySelectArea">
							<div id="replySelectTable">
								<% if(replyList.isEmpty()){ %>
									<div>
										<span >댓글이 없습니다.</span>
									</div>
								<% } else {%>
									<% for(int i = 0; i < replyList.size(); i++){ %>
										<div id="rep<%= i%>">
											<input type="hidden" class="replyId" id="replyId<%= i%>"value="<%= replyList.get(i).getReplyId() %>">
											<span style="font-size: 18px; font-weight: bold;"><%= replyList.get(i).getMemberId() %></span>
											<span style="margin-left: 10px"><%= replyList.get(i).getEnrollDate() %></span>
											
											<% if(loginUser != null && loginUser.getId().equals(replyList.get(i).getMemberId()) && !loginUser.getId().contains("admin") ) { %>
											<span class="repBtnF repUpdate" id="repUpdate">수정</span>
											<span class="repBtnB repDelete" id="repDelete">삭제</span>
											<% } %>
											
											<br>
											<span><%= replyList.get(i).getReplyContent() %></span>
										</div>
										<div style="display: none; width: 760px; height: 120px" id="repUpdateForm<%= i%>">
											<span style="font-weight: bold; font-size: 18px;"><%= loginUser.getId() %></span><span class="repBtnF update" id="update<%= i%>">등록</span><span class="repBtnB cancle" id="cancle<%= i%>">취소</span>
											<textarea rows="3" cols="107" class="form-control" id="updateContent<%= i%>" style="resize: none; border-color: lightgray;"></textarea>
										</div>
										
									<% } %>
								<% } %>
								
							</div>
						</div> 
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<br>

		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<div class="row">
					<div class="col-10" style="margin-left:10px;">
					<textarea rows="3" cols="107" class="form-control" id="replyContent" style="resize: none; border-color: lightgray;" placeholder="댓글을 입력하세요."></textarea>
					</div>
					<div class="col">
						<button id="addReply" type="button" class="button1" style="margin-top: 20px;">댓글달기</button>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 버튼 -->
			<div class='row'>
				<div class="col"></div>
				<div class='col'>
					<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/boardOTO.bo';">돌아가기</button>
				</div>
				<div class='col-5'></div>
				<div class='col'>
			<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
					<input type="submit" class="button1" value="수정">					
			<% } %>
				</div>
				<div class='col'>
			<% if(loginUser != null && loginUser.getId().equals(board.getWriter())) { %>
					<button type="button" style="margin-left: 50px;"class="button1" id="delete">삭제</button>
			<% } %>
				</div>
				<div class='col'></div>
			</div>
	</form> --%>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu2" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<div style="margin-top: 80px; margin-left:70px; margin-right:70px;">
										<%= p.getProductContent() %>
									</div>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 100px;"></div>


		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp"%>
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
		<div class="col-1" style="">
			<i class="bi bi-arrow-up-circle-fill bottomNav i-plain"
				style="cursor: pointer;" onclick="window.scrollTo(0,0);"></i>
		</div>
		<div class="col-1">
			<i class="bi bi-whatsapp bottomNav i-plain" style="cursor: pointer;"></i>

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
		setInterval(function() {
			if (didScroll) {
				hasScrolled();
				didScroll = false;
			}
		}, 250);

		function hasScrolled() {
			var nowScrollTop = window.scrollY;
			if (Math.abs(lastScrollTop - nowScrollTop) <= delta) {
				return;
			}
			if (nowScrollTop > lastScrollTop && nowScrollTop > fixBoxHeight) {
				//Scroll down
				fixBox.classList.add('show');
			} else {
				if (nowScrollTop + window.innerHeight < document.body.offsetHeight) {
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
		$(window).scroll(function() {
			var scrollTop = $(document).scrollTop();
			if (scrollTop < 180) {
				scrollTop = 180;
			}
			$("#followquick").stop();
			$("#followquick").animate({
				"top" : scrollTop
			});
		});
	</script>

</body>
</html>
