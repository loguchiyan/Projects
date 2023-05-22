package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class movements_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

   String id=(String)session.getAttribute("id");
   String user=(String)session.getAttribute("user");
    try{
   String profile=request.getParameter("image");
   String name=request.getParameter("user");
   String description=request.getParameter("description");
   String topic=request.getParameter("topic");
   String grup=request.getParameter("grup");
  String location=request.getParameter("location");
    System.out.println( topic);
    
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group","root","root");
  
   PreparedStatement ps=con.prepareStatement("Insert into movements ()values ('"+profile+"','"+description+"','"+topic+"','"+grup+"','"+location+"','"+name+"')");
   System.out.println(ps);
   ps.executeUpdate();
   
   
   out.print(" Recommended post sucessfully to Groups ");
   out.println("<script>"); 			
   out.println("alert(\"Successfully Recommend\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vpost.jsp");  
        rd.include(request, response);  

 
            
    }   catch(Exception e){
        out.println("<script>"); 			
        out.println("alert(\"Please Try Again..\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vpost.jsp");  
        rd.include(request, response);  

        
    }
    
      out.write('\n');
      out.write('\n');
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
