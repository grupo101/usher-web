/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-07-13 05:19:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class success_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Usher</title>\r\n");
      out.write("<meta name=\"ROBOTS\" content=\"NOINDEX, NOFOLLOW\">\r\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"plugins/data-tables/DT_bootstrap.css\" rel=\"stylesheet\">\r\n");
      out.write("<!-- <link rel=\"shortcut icon\" href=\"images/BauerMecanicaLogo2.png\" /> -->\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/jquery-1.12.js\"></script>\r\n");
      out.write(" \r\n");
      out.write(" <script src=\"js/jPushMenu.js\"></script> \r\n");
      out.write("<script src=\"js/side-chats.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"light_theme left_nav_fixed atm-spmenu-push\" style=\"\">\r\n");
      out.write("<div class=\"wrapper\">\r\n");
      out.write("  <!--\\\\\\\\\\\\\\ wrapper Start \\\\\\\\\\\\-->\r\n");
      out.write("  <div class=\"header_bar\">\r\n");
      out.write("  \r\n");
      out.write("    <!--\\\\\\\\\\\\\\ header Start \\\\\\\\\\\\-->\r\n");
      out.write("    <div class=\"brand\">\r\n");
      out.write("      <!--\\\\\\\\\\\\\\ brand Start \\\\\\\\\\\\-->\r\n");
      out.write("      <div class=\"logo\" style=\"display:block\">Admin <span class=\"theme_color\">USHER</span></div></div>\r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("    <!--\\\\\\\\\\\\\\ brand end \\\\\\\\\\\\-->\r\n");
      out.write("    <div class=\"header_top_bar\" style=\"background-image: url(images/redNeuronal7.jpg)\">\r\n");
      out.write("      <!--\\\\\\\\\\\\\\ header top bar start \\\\\\\\\\\\-->\r\n");
      out.write("<!--       <a href=\"javascript:void(0);\" class=\"menutoggle\"> <i class=\"fa fa-bars\"></i> </a>\r\n");
      out.write(" -->      \r\n");
      out.write("    </div>\r\n");
      out.write("    <!--\\\\\\\\\\\\\\ header top bar end \\\\\\\\\\\\-->\r\n");
      out.write("  </div>\r\n");
      out.write("  <!--\\\\\\\\\\\\\\ header end \\\\\\\\\\\\-->\r\n");
      out.write("  <div class=\"inner\">\r\n");
      out.write("    <!--\\\\\\\\\\\\\\ inner start \\\\\\\\\\\\-->\r\n");
      out.write("    <div class=\"left_nav\">\r\n");
      out.write("      <!--\\\\\\\\\\\\\\left_nav start \\\\\\\\\\\\-->\r\n");
      out.write("      <div class=\"search_bar\"> <i class=\"fa fa-home\"></i>\r\n");
      out.write("        <a type=\"text\" class=\"search\" href=\"index.jsp\">INICIO</a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"slimScrollDiv\" style=\"position: relative; width: auto; height: 70px;\"><div class=\"left_nav_slidebar\" >\r\n");
      out.write("        <ul>\r\n");
      out.write("<li><a href=\"user2\">USUARIOS</a></li>\r\n");
      out.write("<li><a href=\"member2\">DIPUTADOS</a></li>\r\n");
      out.write("<li><a href=\"canvas\">QUORUM</a></li>\r\n");
      out.write("\r\n");
      out.write("      </ul>\r\n");
      out.write("      </div><div class=\"slimScrollBar\" style=\"background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;\"></div><div class=\"slimScrollRail\" style=\"width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;\"></div></div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!--\\\\\\\\\\\\\\left_nav end \\\\\\\\\\\\-->\r\n");
      out.write("   <!--  <div class=\"contentpanel\" style=\"background-image: url('images/MECANICABAUER.jpg');min-height: 600px;\"> -->\r\n");
      out.write("        <div class=\"contentpanel\">\r\n");
      out.write("         <!--\\\\\\\\\\\\\\ contentpanel start\\\\\\\\\\\\-->\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"pull-left breadcrumb_admin clear_both\">\r\n");
      out.write("        <div class=\"pull-left page_title theme_color\">\r\n");
      out.write("          <h1>OPERACION EXITOSA</h1>\r\n");
      out.write("          </div>\r\n");
      out.write("        <div class=\"pull-right\">\r\n");
      out.write("          <ol class=\"breadcrumb\">\r\n");
      out.write("            <li><a href=\"#\">Principal</a></li>\r\n");
      out.write("            <li><a href=\"#\">op.Concretada</a></li>\r\n");
      out.write("            \r\n");
      out.write("          </ol>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
