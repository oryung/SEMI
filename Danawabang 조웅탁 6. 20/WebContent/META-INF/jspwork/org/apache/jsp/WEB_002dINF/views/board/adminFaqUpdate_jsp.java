/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.46
 * Generated at: 2021-06-15 11:49:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import board.model.vo.Board;
import member.model.vo.Member;

public final class adminFaqUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/views/board/../common/top.jsp", Long.valueOf(1623694714810L));
    _jspx_dependants.put("/WEB-INF/views/board/../common/adminMiddleCategory.jsp", Long.valueOf(1623694714805L));
    _jspx_dependants.put("/WEB-INF/views/board/../common/bottom.jsp", Long.valueOf(1623694714807L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("member.model.vo.Member");
    _jspx_imports_classes.add("board.model.vo.Board");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

	Board board = (Board) request.getAttribute("b");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>관리자_게시판관리_FAQ상세</title>\r\n");
      out.write("<script src=\"js/popper.min.js\"></script>\r\n");
      out.write("<script src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap-4.3.1.js\"></script>\r\n");
      out.write("<link href=\"css/bootstrap-4.3.1.css\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\">\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap\"\r\n");
      out.write("	rel=\"stylesheet\">\r\n");
      out.write("<style>\r\n");
      out.write("table {\r\n");
      out.write("	border: 1px solid #DEEAF4;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".table th[scope=\"col\"] {\r\n");
      out.write("	background: rgb(17, 187, 255);\r\n");
      out.write("	color: white;\r\n");
      out.write("	width: 60px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".page-link {\r\n");
      out.write("	color: #11bbff;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/*검색창 색상*/\r\n");
      out.write(".bi-search {\r\n");
      out.write("	color: #11BBFF;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"font-family: 'Nanum Gothic', sans-serif;\">\r\n");
      out.write("	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("	<div id=\"main-container\" class=\"container\">\r\n");
      out.write("		");
      out.write('\r');
      out.write('\n');
 
	Member loginUser = (Member) session.getAttribute("loginUser"); 
	

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>메인페이지</title>\r\n");
      out.write("\r\n");
      out.write("<!-- 메인이미지슬라이드 -------------->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://unpkg.com/swiper/swiper-bundle.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://unpkg.com/swiper/swiper-bundle.min.css\" />\r\n");
      out.write("<script src=\"https://unpkg.com/swiper/swiper-bundle.js\"></script>\r\n");
      out.write("<script src=\"https://unpkg.com/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("<!-- --------------------- -->\r\n");
      out.write("<style>\r\n");
      out.write("/*상단 관련 스타일*/\r\n");
      out.write("/*검색창*/\r\n");
      out.write(".btn-outline-secondary {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	border-color: #11BBFF;\r\n");
      out.write("	background-color: #11BBFF;\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-outline-secondary:hover {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	background-color: #FBA481;\r\n");
      out.write("	border-color: #FBA481;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-outline-secondary:focus, .btn-outline-secondary.focus {\r\n");
      out.write("	box-shadow: 0 0 0 0 rgba(17, 187, 255, 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-outline-secondary:not (:disabled ):not (.disabled ):active,\r\n");
      out.write("	.btn-outline-secondary:not (:disabled ):not (.disabled ).active, .show>.btn-outline-secondary.dropdown-toggle\r\n");
      out.write("	{\r\n");
      out.write("	color: #fff;\r\n");
      out.write("	background-color: #11BBFF;\r\n");
      out.write("	border-color: #11BBFF;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-outline-secondary:not (:disabled ):not (.disabled ):active:focus,\r\n");
      out.write("	.btn-outline-secondary:not (:disabled ):not (.disabled ).active:focus,\r\n");
      out.write("	.show>.btn-outline-secondary.dropdown-toggle:focus {\r\n");
      out.write("	box-shadow: 0 0 0 0 rgba(17, 187, 255, 0);\r\n");
      out.write("}\r\n");
      out.write("/*아이콘 색변경*/\r\n");
      out.write(".i-plain {\r\n");
      out.write("	color: #11BBFF;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".i-plain:hover {\r\n");
      out.write("	color: #FBA481;\r\n");
      out.write("}\r\n");
      out.write("/*메뉴버튼*/\r\n");
      out.write(".dropdown-menu {\r\n");
      out.write("   position: absolute;\r\n");
      out.write("   top: 100%;\r\n");
      out.write("   left: 0;\r\n");
      out.write("   z-index: 1000;\r\n");
      out.write("   display: none;\r\n");
      out.write("   float: left;\r\n");
      out.write("   min-width: 250px;\r\n");
      out.write("   padding: 0;\r\n");
      out.write("   margin: 0;\r\n");
      out.write("   font-size: 18px;\r\n");
      out.write("   color: black;\r\n");
      out.write("   text-align: left;\r\n");
      out.write("   list-style: none;\r\n");
      out.write("   background-color: #fff;\r\n");
      out.write("   background-clip: padding-box;\r\n");
      out.write("   border: 2px solid rgba(17, 187, 255, 1);\r\n");
      out.write("   border-radius: 0.25rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown-item:hover {\r\n");
      out.write("   color: #11bbff;\r\n");
      out.write("}\r\n");
      out.write(".button1{\r\n");
      out.write("	border: 1px solid rgb(17, 187, 255);\r\n");
      out.write("	background-color: rgb(17, 187, 255);\r\n");
      out.write("	color: white;\r\n");
      out.write("	border-radius: 4px;\r\n");
      out.write("	width: 100px;\r\n");
      out.write("	height: 40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* ----------------아이콘 호버시 색 바꾸기------------------- */\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".i-side {\r\n");
      out.write("     color: #fff;\r\n");
      out.write(" }\r\n");
      out.write(".i-side:hover {\r\n");
      out.write("     color: #FBA481;\r\n");
      out.write(" }\r\n");
      out.write(" \r\n");
      out.write(".side-nav {\r\n");
      out.write("	color: #fff;\r\n");
      out.write("}\r\n");
      out.write(".side-nav:hover{\r\n");
      out.write("	color: #FBA481;\r\n");
      out.write("	text-decoration:none !important\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"font-family: 'Nanum Gothic', sans-serif;\">\r\n");
      out.write("	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("		<!-- 1행 -->\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<!-- 상단 광고 -->\r\n");
      out.write("			<div class=\"col-12\" id=\"top-bar\" onclick=\"location.href='프로모션.html';\"\r\n");
      out.write("				style=\"background: #11BBFF; text-align: center; cursor: pointer; line-height: 30px; font-size: 14px; font-weight: bold; color: white;\">\r\n");
      out.write("				더운 여름을 시원하게! 여름 맞이 프로모션으로 함께 떠나요!</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<!-- 2행 -->\r\n");
      out.write("		<div class=\"row\" id=\"secondRow\">\r\n");
      out.write("			<!-- 로고  -->\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<div id=\"logo\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/mainPage.me';\"\r\n");
      out.write("					style=\"color: #11BBFF; font-size: 32px; text-align: center; vertical-align: middle; margin-top: 16px; font-weight: bold; cursor: pointer; color: #11BBFF;\">\r\n");
      out.write("					<i class=\"bi bi-house\" style=\"font-size: 37px;\"></i>다나와방\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("			<!-- 검색창  -->\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<!-- 검색 아이콘  -->\r\n");
      out.write("				<div style=\"margin-top: 30px;\">\r\n");
      out.write("					<input type=\"text\" class=\"form-control\" placeholder=\"검색어를 입력해주세요\"\r\n");
      out.write("						style=\"font-size: 13px; border-color: #11BBFF; margin-left: 30px;\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-1\">\r\n");
      out.write("				<button class=\"btn btn-outline-secondary\" type=\"submit\"\r\n");
      out.write("					id=\"main-search\" style=\"font-size: 14px; margin-top: 30px;\">검색</button>\r\n");
      out.write("			</div>		\r\n");
      out.write("			");
 if(loginUser == null) { 
      out.write("\r\n");
      out.write("			<!-- 로그인/회원가입 아이콘 -->\r\n");
      out.write("			<div class=\"col-2\">\r\n");
      out.write("				<div id=\"login\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/loginForm.me';\"\r\n");
      out.write("					style=\"width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;\">로그인/회원가입</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			\r\n");
      out.write("			");
 } else { 
      out.write("\r\n");
      out.write("			<!-- 로그아웃 아이콘 -->\r\n");
      out.write("			<div class=\"col-2\">\r\n");
      out.write("				<div id=\"logout\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/logout.me';\"\r\n");
      out.write("					style=\"width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;\">로그아웃</div>\r\n");
      out.write("			</div>	\r\n");
      out.write("			");
 } 
      out.write("\r\n");
      out.write("			<!-- 마이페이지 아이콘  -->\r\n");
      out.write("			<div class=\"col-1\" style=\"margin-top: 18px; cursor: pointer; font-size: 42px;\">\r\n");
      out.write("			");
 if(loginUser == null) { 
      out.write("\r\n");
      out.write("				<i class=\"bi bi-person i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/loginForm.me';\"></i>\r\n");
      out.write("			");
 } else if (loginUser != null && loginUser.getIsAdmin().equals("ADMIN")) { 
      out.write("\r\n");
      out.write("				<i class=\"bi bi-person i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/adminMember.me';\"></i>\r\n");
      out.write("			");
 } else {
      out.write("\r\n");
      out.write("				<i class=\"bi bi-person i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/myOrder.me';\"></i>\r\n");
      out.write("			");
 } 
      out.write("	\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 고객센터 아이콘  -->\r\n");
      out.write("			<div class=\"col-1\" style=\"margin-top: 20px; cursor: pointer; font-size: 37px;\">\r\n");
      out.write("				<i class=\"bi bi-headset i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/boardFaq.bo';\"></i>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 장바구니 아이콘 -->\r\n");
      out.write("			<div class=\"col-1\" style=\"margin-top: 18px; cursor: pointer; font-size: 38px;\">\r\n");
      out.write("			");
 if(loginUser == null) { 
      out.write("\r\n");
      out.write("				<i class=\"bi bi-cart2 i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/loginForm.me';\"></i>\r\n");
      out.write("			");
 } else if (loginUser != null && loginUser.getIsAdmin().equals("USER")) { 
      out.write("\r\n");
      out.write("				<i class=\"bi bi-cart2 i-plain\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/????????';\"></i>\r\n");
      out.write("			");
 } 
      out.write("	\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<!-- 3행 -->\r\n");
      out.write("		<!-- 메뉴아이콘 -->\r\n");
      out.write("		<div class=\"row\" id=\"thirdRow\"\r\n");
      out.write("			style=\"text-align: center; margin-top: 15px;\">\r\n");
      out.write("			<div class=\"col-1\">\r\n");
      out.write("				<div class=\"dropdown\" style=\"margin-top: -10px;\">\r\n");
      out.write("					<a class=\"btn-group-vertical\" href=\"#\" role=\"button\"\r\n");
      out.write("						id=\"dropdownMenuLink\" data-bs-toggle=\"dropdown\"\r\n");
      out.write("						aria-expanded=\"false\"><i class=\"bi bi-list i-plain\"\r\n");
      out.write("						style=\"font-size: 35px;\"></i></a>\r\n");
      out.write("					<ul class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\"\r\n");
      out.write("						style=\"text-align: center; font-weight: bold;\">\r\n");
      out.write("						<li class=\"dropdown-item\" style=\"font-weight: bold;\">6평<a\r\n");
      out.write("							class=\"dropdown-item\" href=\"스토어페이지.html\"><img\r\n");
      out.write("								src=\"images/6평.png\"></a></li>\r\n");
      out.write("						<li class=\"dropdown-item\" style=\"font-weight: bold;\">8평<a\r\n");
      out.write("							class=\"dropdown-item\" href=\"스토어페이지.html\"><img\r\n");
      out.write("								src=\"images/8평.png\"></a></li>\r\n");
      out.write("						<li class=\"dropdown-item\" style=\"font-weight: bold;\">10평<a\r\n");
      out.write("							class=\"dropdown-item\" href=\"스토어페이지.html\"><img\r\n");
      out.write("								src=\"images/10평.png\"></a></li>\r\n");
      out.write("						<li class=\"dropdown-item\" style=\"font-weight: bold;\">12평<a\r\n");
      out.write("							class=\"dropdown-item\" href=\"스토어페이지.html\"><img\r\n");
      out.write("								src=\"images/12평.png\"></a></li>\r\n");
      out.write("						<li class=\"dropdown-item\" style=\"font-weight: bold;\">14평<a\r\n");
      out.write("							class=\"dropdown-item\" href=\"스토어페이지.html\"><img\r\n");
      out.write("								src=\"images/14평.png\"></a></li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 스토어 카테고리 -->\r\n");
      out.write("			<div class=\"col-2\" onclick=\"location.href='스토어페이지(완).html';\"\r\n");
      out.write("				style=\"font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer\">스토어</div>\r\n");
      out.write("			<!-- 셀프가이드 카테고리 -->\r\n");
      out.write("			<div class=\"col-2\" onclick=\"location.href='셀프가이드(완).html';\"\r\n");
      out.write("				style=\"text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer\">셀프가이드</div>\r\n");
      out.write("			<!-- 프로모션 카테고리 -->\r\n");
      out.write("			<div class=\"col-2\" onclick=\"location.href='프로모션(완).html';\"\r\n");
      out.write("				style=\"text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer\">프로모션</div>\r\n");
      out.write("			<div class=\"col-5\"></div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<!-- 구분선 -->\r\n");
      out.write("		<div\r\n");
      out.write("			style=\"margin-top: 20px; width: 100%; border-bottom: 2px solid #11BBFF\"></div>\r\n");
      out.write("\r\n");
      out.write("		<!-- 행 사이 빈공간-->\r\n");
      out.write("		<div class=\"row\" style=\"margin-top: 15px;\"></div>\r\n");
      out.write("\r\n");
      out.write("		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("		<!-- ------------------------스크립트 공간 ----------------------- -->\r\n");
      out.write("	\r\n");
      out.write("	<!-- 상단 스크립트 -->\r\n");
      out.write("	<script>\r\n");
      out.write("	//2행 로고\r\n");
      out.write("	$(function() {\r\n");
      out.write("		$('#logo').hover(function() {\r\n");
      out.write("			$(this).css('font-size', '34px');\r\n");
      out.write("		}, function() {\r\n");
      out.write("			$(this).css('font-size', '32px');\r\n");
      out.write("		});\r\n");
      out.write("	});\r\n");
      out.write("	//2행 로그인\r\n");
      out.write("	$(function() {\r\n");
      out.write("		$('#login').hover(function() {\r\n");
      out.write("			$(this).css({\r\n");
      out.write("				'background-color' : '#FBA481',\r\n");
      out.write("				'border-color' : '#FBA481'\r\n");
      out.write("			});\r\n");
      out.write("		}, function() {\r\n");
      out.write("			$(this).css({\r\n");
      out.write("				'background-color' : '#11BBFF',\r\n");
      out.write("				'border-color' : '#11BBFF'\r\n");
      out.write("			});\r\n");
      out.write("		});\r\n");
      out.write("	});\r\n");
      out.write("	//3행\r\n");
      out.write("	$(function() {\r\n");
      out.write("		$('#thirdRow').children().hover(function() {\r\n");
      out.write("			$(this).css('color', '#FBA481');\r\n");
      out.write("		}, function() {\r\n");
      out.write("			$(this).css('color', '#11BBFF');\r\n");
      out.write("		});\r\n");
      out.write("	});\r\n");
      out.write("	</script>\r\n");
      out.write("\r\n");
      out.write("	<!-- 필요한 외부 script -->\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"\r\n");
      out.write("		integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js\"\r\n");
      out.write("		integrity=\"sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>		");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("\r\n");
      out.write("		<!-- 중단 카테고리 -->\r\n");
      out.write("		");
      out.write("\r\n");
      out.write("    \r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"row\" id=\"middleCategories\">\r\n");
      out.write("			<!-- 중단 카테고리 여백 -->\r\n");
      out.write("			<div class=\"col\"></div>\r\n");
      out.write("			<!-- 회원 관리, 상품 관리, 주문 관리, 게시판 관리, 설정 중단카테고리 -->\r\n");
      out.write("			<div onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/adminMember.me';\" class=\"col\"\r\n");
      out.write("				style=\"text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;\">\r\n");
      out.write("				회원 관리</div>\r\n");
      out.write("			<div onclick=\"location.href='관리자_상품관리(AdminProductManage).html';\" class=\"col\"\r\n");
      out.write("				style=\"text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;\">\r\n");
      out.write("				상품 관리</div>\r\n");
      out.write("			<div onclick=\"location.href='관리자_주문관리(AdminOrderManage).html';\" class=\"col\"\r\n");
      out.write("				style=\"text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;\">\r\n");
      out.write("				주문 관리</div>\r\n");
      out.write("			<div  class=\"col\">\r\n");
      out.write("				<div class=\"dropdown\" data-toggle=\"dropdown\"\r\n");
      out.write("					style=\"text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;\">\r\n");
      out.write("					게시판 관리\r\n");
      out.write("					<div class=\"dropdown-menu\">\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='관리자_게시판관리_스토어(AdminBoardStore).html'\">스토어</a>\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='관리자_게시판관리_셀프가이드(AdminBoardSelfGuide).html'\">셀프가이드</a>\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='관리자_게시판관리_프로모션(AdminBoardPromotion).html'\">프로모션</a>\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/adminNotice.bo';\">공지사항</a>\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/adminFaq.me';\">FAQ</a>\r\n");
      out.write("						<a class=\"dropdown-item\" onclick=\"location.href='관리자_게시판관리_일대일(AdminBoardOtO).html'\">1:1게시판</a>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col\">\r\n");
      out.write("				<div onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/adminSetting.me'\" class=\"col\"\r\n");
      out.write("               	style=\"text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; margin-left:-20px;font-size: 20px; font-weight: bold;\">\r\n");
      out.write("              	 설정\r\n");
      out.write("         		</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<!-- 중단 카테고리 여백 -->\r\n");
      out.write("			<div class=\"col\" style=\"margin-top: 40px;\"></div>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("		<br>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("	\r\n");
      out.write("		<!------ 본문 (FAQ 게시글 상세보기)-------->\r\n");
      out.write("		<div class=\"row\" style=\"padding: 10px;\">\r\n");
      out.write("			<div class=\"col\" style=\"padding: 0px;\">\r\n");
      out.write("				<div\r\n");
      out.write("					style=\"font-weight: bold; font-size: 25px; text-align: center; margin-bottom: 10px; color: rgb(17, 187, 255);\"\r\n");
      out.write("					class=\"\">FAQ 게시글 수정</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<!-- 테이블 -->\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<form action=\"");
      out.print( request.getContextPath() );
      out.write("/adminFaqUpdate.me\" method=\"post\">\r\n");
      out.write("				<table class=\"table\"\r\n");
      out.write("					style=\"width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;\">\r\n");
      out.write("					<tr>\r\n");
      out.write("						<th scope=\"col\">제목</th>\r\n");
      out.write("						<td>\r\n");
      out.write("						<input type=\"hidden\" name=\"id\" value=\"");
      out.print( board.getBoardId());
      out.write("\">\r\n");
      out.write("						<input type=\"text\" size=\"35px\" name=\"title\"\r\n");
      out.write("							class=\"form-control\" value=");
      out.print(board.getBoardTitle());
      out.write("></td>\r\n");
      out.write("						<th scope=\"col\">카테고리</th>\r\n");
      out.write("						<td width=\"30%\">\r\n");
      out.write("							<select name=\"faqCategory\" id=\"category\" class=\"form-control\">\r\n");
      out.write("									<option value=\"주문/결제\" ");
      out.print( board.getBoardCategoryName().equals("주문/결제") ? "selected" : "" );
      out.write(">주문/결제</option>\r\n");
      out.write("									<option value=\"배송관련\" ");
      out.print( board.getBoardCategoryName().equals("배송관련") ? "selected" : "" );
      out.write(">배송관련</option>\r\n");
      out.write("									<option value=\"취소/환불\" ");
      out.print( board.getBoardCategoryName().equals("취소/환불") ? "selected" : "" );
      out.write(">취소/환불</option>\r\n");
      out.write("									<option value=\"회원정보변경\" ");
      out.print( board.getBoardCategoryName().equals("회원정보변경") ? "selected" : "" );
      out.write(">회원정보변경</option>\r\n");
      out.write("									<option value=\"서비스/기타\" ");
      out.print( board.getBoardCategoryName().equals("서비스/기타") ? "selected" : "" );
      out.write(">서비스/기타</option>\r\n");
      out.write("							</select>\r\n");
      out.write("						</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<th scope=\"col\" id=\"ie\">내용</th>\r\n");
      out.write("						<td colspan=\"3\"><textarea class=\"form-control\" name=\"content\"\r\n");
      out.write("								style=\"height: 500px; resize: none;\">");
      out.print(board.getBoardContent());
      out.write("</textarea>							\r\n");
      out.write("								</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("				</table>\r\n");
      out.write("				<br>\r\n");
      out.write("				<div class=\"col\">\r\n");
      out.write("					<input type=\"button\" class=\"button1\"\r\n");
      out.write("						onclick=\"location.href='");
      out.print(request.getContextPath());
      out.write("/adminFaq.me'\"\r\n");
      out.write("						value=\"돌아가기\" style=\"margin-left: 300px; margin-right: 350px;\">\r\n");
      out.write("					<input type=\"submit\" class=\"button1\" id=\"update\" value=\"등록\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<!-- 행 사이 빈공간-->\r\n");
      out.write("		<div class=\"row\" style=\"margin-top: 160px;\"></div>\r\n");
      out.write("\r\n");
      out.write("		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("		");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("		<!-- 행 사이 빈공간-->\r\n");
      out.write("		<div class=\"row\" style=\"margin-top: 40px;\"></div>\r\n");
      out.write("\r\n");
      out.write("		<!-- 하단 -->\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-12\" onclick=\"location.href='고객센터.html';\"\r\n");
      out.write("				style=\"color: black; line-height: 30px; font-size: 22px; font-weight: bold; cursor: pointer;\">\r\n");
      out.write("				고객센터 : 1555-5551</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-12\" style=\"color: black; font-size: 13px;\">평일\r\n");
      out.write("				09:00 ~ 18:00 (주말 & 공휴일 제외)</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<!-- 행 사이 빈공간-->\r\n");
      out.write("		<div class=\"row\" style=\"margin-top: 20px;\"></div>\r\n");
      out.write("		<div class=\"row\" style=\"text-align: center;\">\r\n");
      out.write("			<div class=\"col-1\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/introduction.me';\"\r\n");
      out.write("				style=\"color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;\">회사소개</div>\r\n");
      out.write("			<div class=\"col-1\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/accessTerms.me';\"\r\n");
      out.write("				style=\"color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;\">이용약관</div>\r\n");
      out.write("			<div class=\"col-2\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/privacyPolicy.me';\"\r\n");
      out.write("				style=\"color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;\">개인정보처리방침</div>\r\n");
      out.write("			<div class=\"col-1\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/boardNotice.bo';\"\r\n");
      out.write("				style=\"color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;\">공지사항</div>\r\n");
      out.write("			<div class=\"col-1\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("/boardFaq.bo';\"\r\n");
      out.write("				style=\"color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;\">고객센터</div>\r\n");
      out.write("			<div class=\"col-6\"></div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<!-- 행 사이 빈공간-->\r\n");
      out.write("		<div class=\"row\" style=\"margin-top: 10px;\"></div>\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-12\" style=\"font-size: 12px;\">\r\n");
      out.write("				<p>\r\n");
      out.write("					상호명 : (주)다나와방 / 이메일 : danawabang@danawabang.com / 대표이사 : 박신우 /\r\n");
      out.write("					사업자등록번호 : 999-88-77777 / 통신판매업신고번호 : 제2021-서울역삼-0215호<br> 주소 :\r\n");
      out.write("					서울 역삼구 역삼대로56길 6 타워팰리스타워 31층 <br> Copyright 2021. danawabang,\r\n");
      out.write("					Co., Ltd. All rights reserved\r\n");
      out.write("				</p>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->\r\n");
      out.write("\r\n");
      out.write("	<!-- 상단 스크립트 -->\r\n");
      out.write("	<script>\r\n");
      out.write("	<!-- 중단 스크립트 -->\r\n");
      out.write("		// 중단 카테고리\r\n");
      out.write("		$(function() {\r\n");
      out.write("			$('#middleCategories').children().hover(function() {\r\n");
      out.write("				$(this).css('color', '#11BBFF');\r\n");
      out.write("			}, function() {\r\n");
      out.write("				$(this).css('color', 'black');\r\n");
      out.write("			});\r\n");
      out.write("		});\r\n");
      out.write("	</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
