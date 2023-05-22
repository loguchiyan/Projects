package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import algo.CipherHelper;
import java.util.Random;

public final class Viewstu_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("  <title>MarkSheet</title>\n");
      out.write("  <meta content=\"\" name=\"description\">\n");
      out.write("  <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("  <!-- Favicons -->\n");
      out.write("  <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("  <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("  <!-- Google Fonts -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Vendor CSS Files -->\n");
      out.write("  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  <!-- Template Main CSS File -->\n");
      out.write("  <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <!-- ======= Header ======= -->\n");
      out.write("  <header id=\"header\" class=\"fixed-top d-flex align-items-center header-transparent\">\n");
      out.write("    <div class=\"container d-flex justify-content-between align-items-center\">\n");
      out.write("\n");
      out.write("      <div id=\"logo\">\n");
      out.write("        <h1><a href=\"index.html\">MarkSheet</a></h1>\n");
      out.write("        <!-- Uncomment below if you prefer to use an image logo -->\n");
      out.write("        <!-- <a href=\"index.html\"><img src=\"assets/img/logo.png\" alt=\"\"></a> -->\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <nav id=\"navbar\" class=\"navbar\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a class=\"nav-link scrollto \" href=\"ahome.jsp\">Home</a></li>\n");
      out.write("          <li><a class=\"nav-link scrollto\" href=\"addwater.jsp\">Add Students</a></li>\n");
      out.write("           <li><a class=\"nav-link scrollto\" href=\"addsem.jsp\">Add Semester Marks</a></li>\n");
      out.write("       \n");
      out.write("           <li><a class=\"nav-link scrollto \" href=\"sorder.jsp\">View All Mraks</a></li>\n");
      out.write("            <li><a class=\"nav-link scrollto\" href=\"index.html\">Logout</a></li>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("        </ul>\n");
      out.write("        <i class=\"bi bi-list mobile-nav-toggle\"></i>\n");
      out.write("      </nav><!-- .navbar -->\n");
      out.write("    </div>\n");
      out.write("  </header><!-- End Header -->\n");
      out.write("\n");
      out.write("  <!-- ======= Hero Section ======= -->\n");
      out.write("  <section id=\"hero\">\n");
      out.write("\n");
      out.write("    <div class=\"hero-text\" data-aos=\"zoom-out\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("      <main >\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                   \n");
      out.write("                   <style>\n");
      out.write("                    tr,td{\n");
      out.write("                                  \n");
      out.write("                                        font-size: 15px;\n");
      out.write("                                        color: black;\n");
      out.write("                                        font-weight: bold;\n");
      out.write("                                        padding: 5px;\n");
      out.write("                    }\n");
      out.write("                    table,tr,th,td{\n");
      out.write("                                        margin-left: 150px;\n");
      out.write("                                        height: auto;\n");
      out.write("                        \t\tborder-collapse: collapse;\n");
      out.write("                        \t\t\n");
      out.write("                                        border-radius: 30px;\n");
      out.write("                        \t\tpadding:5px;\n");
      out.write("                        \t\ttext-align:center;\n");
      out.write("                                        color:black;\n");
      out.write("                                        margin-top: -380px;\n");
      out.write("                                       \n");
      out.write("                                        \n");
      out.write("                    }\n");
      out.write("                    th{\n");
      out.write("                                        color: skyblue;\n");
      out.write("                    }\n");
      out.write("                    table{\n");
      out.write("                                        height: auto;\n");
      out.write("                                        width: auto;\n");
      out.write("                        }\n");
      out.write("                           \n");
      out.write("                        \t\n");
      out.write("                        \t\n");
      out.write("                        \t\n");
      out.write("                </style>\n");
      out.write("\n");
      out.write("    \n");
      out.write("        <div class=\"header-text\">\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <h3 class=\"h4\" align=\"center\" style=\" color: white; font-size: 23px; margin-bottom: 400px;  margin-left: 150px; \"> Add Subjects for first semester </h3>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("               \t\n");
      out.write("\t");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Time_Table_Generate","root","root");
            PreparedStatement query=con.prepareStatement("SELECT * FROM addstudent GROUP BY reg");
            ResultSet rs=query.executeQuery();
        
      out.write("\t\t\t\n");
      out.write("                <div class=\"container\">\n");
      out.write("    <form action=\"sem1sub.jsp\" method=\"post\"   > \n");
      out.write("        <table algin=\"center\">\n");
      out.write("                           <tr align=\"center\">\n");
      out.write("                    <td style=\"color:blue;\">Choose By StudentID : </td>\n");
      out.write("                    <td style=\"color: crimson;\">\n");
      out.write("                        <select name=\"type\" style=\"width: 171px;\">\n");
      out.write("                            <option>---Select--</option>\n");
      out.write("                        ");

                            while(rs.next())
                            {
                                
      out.write(" \n");
      out.write("                                    <option>");
      out.print(rs.getString("reg"));
      out.write("</option>\n");
      out.write("                                ");

                            }
                        
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>                \n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td style=\"color: crimson;\" colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"Search\"></td>\n");
      out.write("                </tr>                \n");
      out.write("            </table>\n");
      out.write("            </form>\n");
      out.write("      \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </section><!-- End Hero Section -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-chevron-up\"></i></a>\n");
      out.write("\n");
      out.write("  <!-- Vendor JS Files -->\n");
      out.write("  <script src=\"assets/vendor/aos/aos.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Template Main JS File -->\n");
      out.write("  <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
