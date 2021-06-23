<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
<% 
	ArrayList<Product> pList = (ArrayList<Product>)request.getAttribute("pList");
	ArrayList<ProductAttachment> fList = (ArrayList<ProductAttachment>)request.getAttribute("fList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int checkBoardCount = 0;
%>      
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스토어</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>
.categories {font-size: 20px; color: #11BBFF; font-weight: bold; margin-left:20px;}

.categories:hover {color: #FBA481; text-decoration: none;}


/*페이지번호매기는거*/
.pagination > li > a
{
    background-color: white;
    color: #11bbff;
}

/* ---------카테고리----------- */
.categorys {font-size: 25px; color: #11BBFF; font-weight: bold; margin-left:30px;}

.categorys:hover {color: #FBA481; text-decoration: none;}

/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }

/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }

.place { width: 50px; height: 50px; background-color: #336699; }

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="first-container" class="container">
		<div class="row" style="margin-top: 40px;">
			<div class="col-12"
				style="font-size: 25px; color: #11BBFF; text-align: center; font-weight: bold;">스토어</div>
		</div>
			<!-- 상세 검색 ---->
			<div class="row"
				style="margin-top: 60px; margin-left: 80px; font-size: 20px; font-weight: bold; color: #11BBFF;">상세검색</div>
			<!--테두리-->
			<div class="container"
				style="left: 20px; margin-top: 20px; border: 3px solid #11bbff; width: 1000px; border-radius: 10px;">
				<!--여백-->
				<div
					style="margin-left: 30px; margin-top: 30px; margin-bottom: 30px;">
					<!--평수-->
					<div class="row"
						style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-bottom: 20px;">평수</div>
					<!--평수 체크박스-->
					<div class="row" style="margin-bottom: 30px;">
						<div class="col-8">
							<div class="row"
								style="font-size: 15px; color: gray; font-weight: bold;">
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">6평</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">8평</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">10평</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">12평</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">14평</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">16평</span>
								</div>
							</div>
						</div>
						<div class="col-4"></div>
					</div>
					<!--브랜드-->
					<div class="row"
						style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-bottom: 20px;">브랜드</div>
					<!--브랜드 체크박스-->
					<div class="row" style="margin-bottom: 30px;">
						<div class="col-8">
							<div class="row"
								style="font-size: 15px; color: gray; font-weight: bold;">
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㄱ</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㄴ</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㄷ</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㄹ</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㅁ</span>
								</div>
								<div class="col-2">
									<input type="checkbox"><span style="margin-left: 10px;">ㅂ</span>
								</div>
							</div>
						</div>
						<div class="col-4"></div>
					</div>
					<!--가격-->
					<div class="row"
						style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-bottom: 20px;">가격</div>
					<!--가격 및 검색-->
					<div class="row">
						<div class="col">
							<div class="range-slider"
								style="font-size: 17px; color: #11BBFF; font-weight: bold;">
								<input class="range-slider__range" type="range" value="0"
									style="width: 300px;" min="0" max="1000000" step="30000">
								~ <span class="range-slider__value">0</span>원
							</div>
						</div>
						<div class="col" style="margin-left: 460px; margin-top: 30px;">
							<button class="button1" type="submit">검색</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 인기,신상,낮은가격, 높은가격 순 -->
			<div class="row"
				style="font-size: 15px; font-weight: bold; cursor: pointer; margin-top: 30px; margin-bottom: 100px;">
				<div class="col-8">
					<div class="row">
						<div class="col-2">
							인기상품순<span style="margin-left: 22px;">|</span>
						</div>
						<div class="col-2">
							신상품순<span style="margin-left: 30px;">|</span>
						</div>
						<div class="col-2">
							낮은가격순<span style="margin-left: 22px;">|</span>
						</div>
						<div class="col-2">높은가격순</div>
					</div>
				</div>
				<div class="col-4"></div>
			</div>
		</div>
		
		<div class="row">
				<!-- FAQ 카테고리 -->
				<ul class="nav nav-tabs"
					style="margin-left: 50px; font-size: 18px; color: #11BBFF; font-weight: bold;">
					<li class="active"><a data-toggle="tab" class="categories" href="#home">침대</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu1">매트리스</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu2">서랍장</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu3">커튼</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu4">조명</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu5">행거</a></li>
				</ul>
				<!-- FAQ 카테고리에 해당하는 질문들 -->
				<div class="tab-content">
				<!-- 침대 -->
					<div id="home" class="tab-pane fade in active">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<input type="hidden" name="cId" value="<%= p.getProductCategoryId() %>">
					<% if(p.getProductCategoryId() == 1) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<!-- 페이징 -->
		<nav aria-label="Page navigation example" class="pagination justify-content-center page-item">
		<!-- 맨 처음으로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?cId=1&currentPage=1'" id="bebeforeBtn"> &lt;&lt; </button>
			<!-- 이전 페이지로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?cId=1&currentPage=<%= currentPage -1 %>'" id="beforeBtn"> &lt; </button>
			<script>
				if(<%= currentPage %> <= 1){
					$('#bebeforeBtn').attr('disabled', 'true');
					$('#beforeBtn').attr('disabled', 'true');
				}
			</script>
			<!-- 숫자 버튼 -->
			<% for(int p = startPage; p <=endPage; p++) { %>
			<%		 if(p== currentPage) { %>
						<button class="page-link" id="chosen" disabled> <%= p %> </button>
			<%			} else { %>
						<button class="page-link" id="numBtn" onclick="location.href='<%= request.getContextPath()%>/boardStore.bo?cId=1&currentPage=<%= p %>'"><%= p %></button>
			<% 				} %>	
			<% }%>		
			<!-- 다음 페이지로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?cId=1&currentPage=<%= currentPage + 1%>'" id="afterBtn"> &gt; </button>
			<!-- 맨 끝으로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?cId=1&currentPage=<%= maxPage %>'" id="afafterBtn"> &gt;&gt;</button>
			<script>
				if(<%= currentPage %> >= <%=maxPage %>){
					$('#afterBtn').prop('disabled', true);
					$('#afafterBtn').prop('disabled', true);
				}
			</script>
		</nav>
		</div>
		
		
		<!-- 매트리스 -->
			<div id="menu1" class="tab-pane fade">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<% if(p.getProductCategoryId() == 2) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		</div>
		
		<!-- 서랍장 -->
			<div id="menu2" class="tab-pane fade">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<% if(p.getProductCategoryId() == 3) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		</div>
		
		
		<!-- 커튼 -->
			<div id="menu3" class="tab-pane fade">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<% if(p.getProductCategoryId() == 4) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		</div>
		
		
		
		<!-- 조명 -->
			<div id="menu4" class="tab-pane fade">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<% if(p.getProductCategoryId() == 5) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		</div>
		
		
		<!-- 행거 -->
			<div id="menu5" class="tab-pane fade">
		<div class="container">
			<% if(pList.isEmpty() || fList.isEmpty()) { %>
			등록된 사진이 없습니다.
			<% } else { %>
				<% for(int i = 0; i < pList.size(); i++) { %>
					<% Product p = pList.get(i); %>
					<% if(p.getProductCategoryId() == 6) { %>
					<div class="col-3 thumb-list" style="display:inline-block; margin-top: 30px; margin-left:30px; margin-right:30px; margin-bottom:50px; vertical-align:middle;">
						<div style="cursor:pointer;">
							<% for(int j = 0; j < fList.size(); j++) { %>
								<% ProductAttachment pa = fList.get(j); %>
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
				<% } %>
			<% } %>
		</div>
		</div>
		</div>	
		</div>
		<%-- <!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<!-- 페이징 -->
		<nav aria-label="Page navigation example" class="pagination justify-content-center page-item">
		<!-- 맨 처음으로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?currentPage=1'" id="bebeforeBtn"> &lt;&lt; </button>
			<!-- 이전 페이지로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?currentPage=<%= currentPage -1 %>'" id="beforeBtn"> &lt; </button>
			<script>
				if(<%= currentPage %> <= 1){
					$('#bebeforeBtn').attr('disabled', 'true');
					$('#beforeBtn').attr('disabled', 'true');
				}
			</script>
			<!-- 숫자 버튼 -->
			<% for(int p = startPage; p <=endPage; p++) { %>
			<%		 if(p== currentPage) { %>
						<button class="page-link" id="chosen" disabled> <%= p %> </button>
			<%			} else { %>
						<button class="page-link" id="numBtn" onclick="location.href='<%= request.getContextPath()%>/boardStore.bo?currentPage=<%= p %>'"><%= p %></button>
			<% 				} %>	
			<% }%>		
			<!-- 다음 페이지로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?currentPage=<%= currentPage + 1%>'" id="afterBtn"> &gt; </button>
			<!-- 맨 끝으로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath() %>/boardStore.bo?currentPage=<%= maxPage %>'" id="afafterBtn"> &gt;&gt;</button>
			<script>
				if(<%= currentPage %> >= <%=maxPage %>){
					$('#afterBtn').prop('disabled', true);
					$('#afafterBtn').prop('disabled', true);
				}
			</script>
		</nav> --%>
	 	
	 	
	 	
	 	<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 120px;"></div>

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
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
	<!-- 가격 표시 -->
	<script type="text/javascript">
		var rangeSlider = function() {
			var slider = $('.range-slider'),
			
			range = $('.range-slider__range'),
			value = $('.range-slider__value');
			slider.each(function() {
				value.each(function() {
					var value = $(this).prev().attr('value');
					$(this).html(value);
				});
				range.on('input', function() {
					
					$(this).next(value).html(this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
				});
			});
		};

		rangeSlider();
	</script>
	<script>
		$(function(){
			$('.thumb-list').click(function(){
				var pId = $(this).find("input").val();
				location.href="<%=request.getContextPath()%>/boardStoreDetail.bo?pId=" + pId;
			});
		});
	</script>	
</body>
</html>

	