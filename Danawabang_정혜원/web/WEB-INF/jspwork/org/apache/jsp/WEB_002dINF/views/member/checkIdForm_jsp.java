/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.46
 * Generated at: 2021-06-09 04:45:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkIdForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<script src=\"js/popper.min.js\"></script>\r\n");
      out.write("<script src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap-4.3.1.js\"></script>\r\n");
      out.write("<link href=\"css/bootstrap-4.3.1.css\" rel=\"stylesheet\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap\"\r\n");
      out.write("	rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write(".button1 {\r\n");
      out.write("	border: 1px solid rgb(17, 187, 255);\r\n");
      out.write("	background-color: rgb(17, 187, 255);\r\n");
      out.write("	color: white;\r\n");
      out.write("	border-radius: 4px;\r\n");
      out.write("	width: 100px;\r\n");
      out.write("	height: 40px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body onload=\"inputValue();\" style=\"font-family: 'Nanum Gothic', sans-serif; text-align: center;\">\r\n");
      out.write("	\r\n");
      out.write("	<!-- 행 사이 빈공간-->\r\n");
      out.write("	<div class=\"row\" style=\"margin-top: 20px;\"></div>\r\n");
      out.write("					\r\n");
      out.write("	<b style=\"text-align: center;\">아이디 중복 검사</b><br>\r\n");
      out.write("	<br>\r\n");
      out.write("	<form action=\"");
      out.print( request.getContextPath() );
      out.write("/checkId.me\" id=\"idCheckForm\">\r\n");
      out.write("		<input type=\"text\" class=\"form-control\" id=\"inputId\" name=\"inputId\" pattern=\".{5,15}\" required title=\"아이디는 5~15글자입니다.\" style=\"font-size: 15px; width: 200px; display: inline;\">\r\n");
      out.write("		<input type=\"submit\" class=\"button1\" value=\"중복확인\" style=\"margin-left: 10px;\">\r\n");
      out.write("	</form>\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("	");

		Integer result = (Integer)request.getAttribute("result");
		if(result != null) {
			if(result > 0) {
	
      out.write("\r\n");
      out.write("			이미 사용 중인 아이디 입니다.\r\n");
      out.write("	");

			} else if(((String)request.getAttribute("checkedId")).length() == 0 ) {
	
      out.write("\r\n");
      out.write("			아이디를 입력해주세요.\r\n");
      out.write("	");

			} else {
	
      out.write("\r\n");
      out.write("			사용 가능한 아이디입니다.\r\n");
      out.write("	");
		
			}
		}
	
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("	<input type=\"button\" class=\"button1\" id=\"usedId\" value=\"확인\">\r\n");
      out.write("	<input type=\"button\" class=\"button1\" id=\"cancel\" style=\"margin-left: 10px;\" value=\"취소\" onclick=\"window.close();\">\r\n");
      out.write("	\r\n");
      out.write("	<script>\r\n");
      out.write("		function inputValue() {\r\n");
      out.write("			if('");
      out.print( request.getAttribute("checkedId") );
      out.write("' == 'null') {  \r\n");
      out.write("				document.getElementById(\"inputId\").value = opener.document.signUpForm.id.value;\r\n");
      out.write("			} else {\r\n");
      out.write("				document.getElementById(\"inputId\").value = '");
      out.print( (String)request.getAttribute("checkedId") );
      out.write("';\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("	\r\n");
      out.write("		document.getElementById('usedId').onclick=function() { \r\n");
      out.write("			");

				if(result != null) {
					if(result > 0) {
			
      out.write("\r\n");
      out.write("				opener.document.signUpForm.id.value = '';\r\n");
      out.write("				self.close();\r\n");
      out.write("			");
 
				} else if(((String)request.getAttribute("checkedId")).length() == 0 ) {
			
      out.write("\r\n");
      out.write("				opener.document.signUpForm.id.value = '';\r\n");
      out.write("				self.close();\r\n");
      out.write("			");

					} else {
			
      out.write("\r\n");
      out.write("				opener.document.signUpForm.id.value = '");
      out.print( (String)request.getAttribute("checkedId") );
      out.write("';\r\n");
      out.write("				self.close();\r\n");
      out.write("			");
		
					}
				}
			
      out.write("\r\n");
      out.write("		}\r\n");
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
