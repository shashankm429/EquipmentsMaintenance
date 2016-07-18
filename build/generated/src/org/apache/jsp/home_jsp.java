package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write("\t\t<head>\n");
      out.write("\t\t\t<title> appliance maintenance system </title>\n");
      out.write("\t\t\t<style>\n");
      out.write("\t\t\t*  { margin:0px; padding:0px;}\n");
      out.write("//div#outerbody { margin:0px; padding:0px;}\n");
      out.write("\t\t\tdiv#header{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:50px; }\n");
      out.write("\t\t\tdiv#menu {background-color: #000000 ; color:white; height:50px;}\n");
      out.write("\t\t\tdiv#menu ul{ list-style:none;}\n");
      out.write("\t\t\tdiv#menu ul li{float:left; margin:12px; margin-left:170px;}\n");
      out.write("\t\t\tdiv#main { margin:auto; color:red; position: absolute; top: 50%;left: 35%;}\n");
      out.write("\n");
      out.write("\t\t\ta.colour:link {color:#ff0000; cursor:pointer;}\n");
      out.write("\t\ta.colour:visited { color: #00FF00; text-decoration:none; cursor:pointer;}\n");
      out.write("\t\ta.colour:hover { color: hotpink; text-decoration:underline; cursor:pointer;}\n");
      out.write("\t\ta.colour:active {color: blue; }\n");
      out.write("\t\t\t</style>\n");
      out.write("\t\t</head>\n");
      out.write("\t<body>\n");
      out.write("            ");

                                    String uname = (String)session.getAttribute("un");
                                    
                                    if(uname == ""||session.isNew()==false)
                                        {
                                        int username = Integer.parseInt(uname);
                                        response.sendRedirect("login.jsp?msg=Please enter valid username !");
                                        }
                                    
      out.write("\n");
      out.write("\t\t<div id=\"outerbody\" >\n");
      out.write("\t\t\t<div id=\"header\">\n");
      out.write("\t\t\t<p class=\"normal\">APPLIANCE MAINTENANCE SYSTEM</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div id=\"menu\" >\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<a class=\"colour\" href=\"#\">\t<li>home</li></a>\n");
      out.write("\t\t\t\t<a class=\"colour\" href=\"change_password.jsp\"><li>change password</li></a>\n");
      out.write("\t\t\t\t<a class=\"colour\" href=\"admin.jsp\"><li>admin</li></a>\n");
      out.write("\t\t\t\t<a class=\"colour\" href=\"maintenance.jsp\"><li>maintenance</li></a>\n");
      out.write("\t\t\t\t<a class=\"colour\" href=\"login.jsp\"><li>logout</li></a>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t<div id=\"main\">\n");
      out.write("                                    \n");
      out.write("\t\t\t\t\tWELCOME TO APPLIANCE MAINTENANCE SYSTEM !\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
