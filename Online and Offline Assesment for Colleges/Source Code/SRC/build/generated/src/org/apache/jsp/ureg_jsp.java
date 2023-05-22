package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ureg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <title>Assessment</title>\n");
      out.write("\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    <!-- FontAwesome CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <!-- ElegantFonts CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/elegant-fonts.css\">\n");
      out.write("\n");
      out.write("    <!-- themify-icons CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/themify-icons.css\">\n");
      out.write("\n");
      out.write("    <!-- Swiper CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/swiper.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"hero-content\">\n");
      out.write("        <header class=\"site-header\">\n");
      out.write("            <div class=\"top-header-bar\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0\">\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                           \n");
      out.write("                        </div><!-- .col -->\n");
      out.write("\n");
      out.write("                        <div class=\"col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center\">\n");
      out.write("                         \n");
      out.write("\n");
      out.write("                         \n");
      out.write("                        </div><!-- .col -->\n");
      out.write("                    </div><!-- .row -->\n");
      out.write("                </div><!-- .container-fluid -->\n");
      out.write("            </div><!-- .top-header-bar -->\n");
      out.write("\n");
      out.write("            <div class=\"nav-bar\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-9 col-lg-3\">\n");
      out.write("                            <div class=\"site-branding\">\n");
      out.write("                                <h1 class=\"site-title\"><a href=\"index.html\" rel=\"home\">Assess<span>ment</span></a></h1>\n");
      out.write("                            </div><!-- .site-branding -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("\n");
      out.write("                        <div class=\"col-3 col-lg-9 flex justify-content-end align-content-center\">\n");
      out.write("                            <nav class=\"site-navigation flex justify-content-end align-items-center\">\n");
      out.write("                                <ul class=\"flex flex-column flex-lg-row justify-content-lg-end align-content-center\">\n");
      out.write("                                    <li class=\"current-menu-item\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                                    <li><a href=\"admin.jsp\">Staff</a></li>\n");
      out.write("                                    <li><a href=\"user.jsp\">Student</a></li>\n");
      out.write("                               \n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                                \n");
      out.write("                            </nav><!-- .site-navigation -->\n");
      out.write("                        </div><!-- .col -->\n");
      out.write("                    </div><!-- .row -->\n");
      out.write("                </div><!-- .container -->\n");
      out.write("            </div><!-- .nav-bar -->\n");
      out.write("        </header><!-- .site-header -->\n");
      out.write("\n");
      out.write("        <div class=\"hero-content-overlay\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <div class=\"hero-content-wrap flex flex-column justify-content-center align-items-start\">\n");
      out.write("                            <header class=\"entry-header\">\n");
      out.write("                               <h4  style=\" font-size: 20px; margin-top: -100px; color:#18d26e;font-weight: bolder; font-family:  sans-serif; \">Welcome Student Login!!!</h4>\n");
      out.write("                           <br>\n");
      out.write("                           <br>\n");
      out.write("                           \n");
      out.write("                            <style>\n");
      out.write("                            h4{\n");
      out.write("                                font-size: 20px;\n");
      out.write("                             \n");
      out.write("                                margin-left: 380px;\n");
      out.write("                                \n");
      out.write("                            }\n");
      out.write("                            \n");
      out.write("                            table,tr,td{\n");
      out.write("                                margin-left: 380px;\n");
      out.write("                                font-size: 14px;\n");
      out.write("                                font-weight: bold;\n");
      out.write("                                padding: 5px;\n");
      out.write("                               \n");
      out.write("                                color:white;\n");
      out.write("                                \n");
      out.write("                            }\n");
      out.write("                        </style>\n");
      out.write("                    \n");
      out.write("                       \n");
      out.write("                        <form action=\"Register\" method=\"post\" enctype=\"multipart/form-data\" > \n");
      out.write("                            <table align=\"center\">\n");
      out.write("                                 <tr><td><strong>Profile&emsp; </strong></td><td><input type=\"file\" name=\"image\" value=\"\" style=\"border-radius: 10px; color: #2f323a; \" required></td></tr>\n");
      out.write("                              <tr><td><strong>Student ID&emsp; </strong></td><td><input type=\"text\" name=\"id\" value=\"\" style=\"border-radius: 10px; color: #2f323a; \" required></td></tr>\n");
      out.write("                            <tr><td><strong>Student name&emsp; </strong></td><td><input type=\"text\" name=\"user\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                            <tr><td><strong>Password &emsp; </strong></td><td><input type=\"password\" name=\"password\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                            <tr><td><strong>Email &emsp; </strong></td><td><input type=\"email\" name=\"email\" value=\"\" style=\"border-radius: 10px; color: #2f323a; \" required></td></tr>\n");
      out.write("                            <tr><td><strong>Date of Birth &emsp; </strong></td><td><input type=\"text\" name=\"date\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                            </select></td></tr>\n");
      out.write("                            <tr><td><strong>Gender&emsp; </strong></td><td>\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"male\" style=\" \"> Male\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"female\"> Female\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"other\"> Other</td></tr>    \n");
      out.write("                            <tr><td><strong>Mobile Number&emsp; </strong></td><td><input type=\"text\" name=\"mobile\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                            <tr><td><strong>Country &emsp; </strong></td><td><input type=\"text\" name=\"country\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                            <tr><td><strong>State &emsp; </strong></td><td><input type=\"text\" name=\"state\" value=\"\" style=\" border-radius: 10px; color: #2f323a;  \" required></td></tr>\n");
      out.write("                          \n");
      out.write("                           \n");
      out.write("                            <tr><td align=\"center\" colspan=\"2\"><button type=\"submit\" value=\"submit\" style=\" margin-left: -60px; color: black; font-size: 15px; background-color: #18d26e; font-family: sans-serif;\">Register</button> </td></tr>\n");
      out.write("                                                           </table></form>\n");
      out.write("                    \n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("                            </header><!-- .entry-header -->\n");
      out.write("\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                        </div><!-- .hero-content-wrap -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("                </div><!-- .row -->\n");
      out.write("            </div><!-- .container -->\n");
      out.write("        </div><!-- .hero-content-hero-content-overlay -->\n");
      out.write("    </div><!-- .hero-content -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type='text/javascript' src='js/jquery.js'></script>\n");
      out.write("<script type='text/javascript' src='js/swiper.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>\n");
      out.write("<script type='text/javascript' src='js/custom.js'></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
