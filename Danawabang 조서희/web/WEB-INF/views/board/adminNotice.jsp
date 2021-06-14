<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.Board, board.model.vo.PageInfo" %>
<% 
	ArrayList<Board> nList = (ArrayList<Board>)request.getAttribute("nList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int fNListCount = (Integer)request.getAttribute("fNListCount");
	
	int listCount = pi.getListCount();		
	int pageLimit = pi.getPageLimit();		
	int currentPage = pi.getCurrentPage();			
	int maxPage = pi.getMaxPage();				
	int startPage = pi.getStartPage();				
	int endPage = pi.getEndPage();		
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판 관리</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
<style>

.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
}

.page-link{
	color: #11bbff;
}

.bi-search{
 color: #11BBFF;
}
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		
		<!-- 중단 카테고리 -->	
		<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col"></div>
			<!-- 회원 관리, 상품 관리, 주문 관리, 게시판 관리, 설정 중단카테고리 -->
			<div onclick="location.href='회원 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				회원 관리</div>
			<div onclick="location.href='상품 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				상품 관리</div>
			<div onclick="location.href='주문 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				주문 관리</div>
			<div  class="col">
				<div onclick="location.href='#';" class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					게시판 관리
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_스토어(AdminBoardStore).html'">스토어</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_셀프가이드(AdminBoardSelfGuide).html'">셀프가이드</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_프로모션(AdminBoardPromotion).html'">프로모션</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_공지사항(AdminBoardNotice).html'">공지사항</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_FAQ(AdminBoardFaq).html'">FAQ</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_일대일(AdminBoardOtO).html'">1:1게시판</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div onclick="location.href='#';"  class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					설정
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='게시판 관리_설정_관리자정보수정.html'">관리자정보수정</a>
						<a class="dropdown-item" onclick="location.href='설정_관리자탈퇴.html'">관리자탈퇴</a>
					</div>
				</div>
			</div>
				
			<!-- 중단 카테고리 여백 -->
			<div class="col" style="margin-top: 40px;"></div>
		</div>
		<br>
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 본문(공지사항 게시글 리스트) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">공지사항 게시글 리스트</div>
			</div>
		</div>
		
		<!-- 테이블  -->
		<div class="row">
	            <table class="table" id="listArea" style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center; text-overflow: ellipsis;">
					<thead>
						<tr>
							<th scope="col" style="width: 30px;"><input type="checkbox" id="all" name="agree" onclick="selectAll();"></th>
								<th scope="col" style="width: 90px;">글번호</th>
								<th scope="col" style="width: 300px;">제목</th>
								<th scope="col" style="width: 140px;">작성자ID</th>
								<th scope="col"  style="width: 140px;">작성일</th>
								<th scope="col" style="width: 140px;">상세보기</th>
						</tr>
					</thead>
					<% if(nList.isEmpty()) {%>
					<tr>
						<td colspan="6">조회된 리스트가 없습니다.</td>
					</tr>
					<% } else { %>
					<tbody>
					<% 		for(Board b : nList) {%>
					<% int bId =  b.getBoardId(); %>
								<tr>
									<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
									<td><%= bId %></td>
									<td><%= b.getBoardTitle() %></td>
									<td><%= b.getWriter() %></td>
									<td><%= b.getEnrollDate() %></td>
									<td onclick="location.href='<%= request.getContextPath() %>/adminNoticeDetail.bo?bId='+ <%= bId %>" style="cursor:pointer;"><i class="bi bi-search"></i></td>
								</tr>
					<% 		} %>	
					<% } %>			
					</tbody>
				</table>
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 30px;"></div>
		
		<div class="row" style="height: 50px;">
			<!-- 검색창  -->
			<div class="col-3" style="left: 18%;">
				<div class="input-group mb-3">
					<input type="text" class="form-control form-control-research"
						placeholder="검색어를 입력해주세요" aria-label="Recipient's username"
						aria-describedby="button-addon2"
						style="font-size: 13px; border-color: #11BBFF;">
					<button class="btn btn-outline-secondary" type="submit"
						id="main-search" style="font-size: 13px;">검색</button>
				</div>
			</div>
			
			<!-- 버튼 -->
			<% if(loginUser != null){ %>
			<div class="col" style="left: 38%; width: 70%;">
				<!-- 등록 버튼 -->
				<button class="button1" onclick="location.href='<%=request.getContextPath() %>/adminNoticeEnroll.bo'">등록</button>
				<!-- 삭제 버튼 -->
				<button class="button1" id="delete">삭제</button>
			</div>
			<% } %>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 페이징 -->
		<nav aria-label="Page navigation example" class="pagination justify-content-center page-item">
         <!-- 맨 처음으로 -->
         <button class="page-link" onclick="location.href='<%=request.getContextPath() %>/adminNotice.bo?currentPage=1'"> &lt;&lt; </button>
         <!-- 이전 페이지로 -->
         <button class="page-link" onclick="location.href='<%=request.getContextPath() %>/adminNotice.bo?currentPage=<%= currentPage -1 %>'" id="beforeBtn"> &lt; </button>
         <script>
            if(<%= currentPage %> <= 1){
               $('#beforeBtn').attr('disabled', 'true');
            }
         </script>
         <!-- 숫자 버튼 -->
         <% for(int p = startPage; p <=endPage; p++) { %>
         <%       if(p == currentPage) { %>
                  <button class="page-link" id="chosen" disabled> <%= p %> </button>
         <%         } else { %>
                  <button class="page-link" id="numBtn" onclick="location.href='<%= request.getContextPath()%>/adminNotice.bo?currentPage=<%= p %>'"><%= p %></button>
         <%             } %>   
         <% }%>
         
         <!-- 다음 페이지로 -->
         <button class="page-link" onclick="location.href='<%=request.getContextPath() %>/adminNotice.bo?currentPage=<%= currentPage + 1%>'" id="afterBtn"> &gt; </button>
         <script>
            if(<%= currentPage %> >= <%=maxPage %>){
               $('#afterBtn').prop('disabled', true);
            }
         </script>
         <!-- 맨 끝으로 -->
         <button class="page-link" onclick="location.href='<%=request.getContextPath() %>/adminNotice.bo?currentPage=<%= maxPage %>'"> &gt;&gt;</button>
      </nav>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 120px;"></div>

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	</div>

	<!-- 상단 스크립트 -->
	<script>
		//2행 로고
		$(function() {
			$('#logo').hover(function() {
				$(this).css('font-size', '34px');
			}, function() {
				$(this).css('font-size', '32px');
			});
		});
		//2행 로그인
		$(function() {
			$('#login').hover(function() {
				$(this).css({
					'background-color' : '#FBA481',
					'border-color' : '#FBA481'
				});
			}, function() {
				$(this).css({
					'background-color' : '#11BBFF',
					'border-color' : '#11BBFF'
				});
			});
		});
		//3행
		$(function() {
			$('#thirdRow').children().hover(function() {
				$(this).css('color', '#FBA481');
			}, function() {
				$(this).css('color', '#11BBFF');
			});
		});
		<!-- 중단 스크립트 -->
		// 중단 카테고리
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
		
		$(function(){
			$('#delete').click(function(){
				var bool = prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')
				if(bool == "realadmin"){
					$('#detailForm').attr('action', 'delete.bo');
					$('#detailForm').submit();
				} else{
					alert("관리자 코드를 잘못입력하셨습니다.");
				}
			});	
		});	
		
		/* 체크박스 선택방식 메소드 */
		function selectAll() {
			var agree = document.getElementsByName("agree");
			var all = document.getElementById("all");
			
			if(document.getElementById("all").checked) {
				for(var i = 0 ; i < agree.length ; i++ ) {
					agree[i].checked = true;
				}
			} else {
				for(var i = 0 ; i < agree.length ; i++ ) {
					agree[i].checked = false;
				}
			}
		}
		
		function selectOne() {
			var agree = document.getElementsByName("agree");
			var all = document.getElementById("all");
			
			var count = 0;
				
			for(var i = 1 ; i < agree.length ; i++) {
				if(agree[i].checked) {
					count++;		
				}
			}
				
			if(count != 10)  {
				all.checked = false;
			} else {
				all.checked = true;
			}		
		}
		
		$(function(){
			for(var i = 1; i <= <%= fNListCount %>; i++){
				$('#listArea td').parent().children().eq(6 * i - 4).css({'font-weight' : 'bold'});
			}
		});	
		
	</script>
</body>
</html>