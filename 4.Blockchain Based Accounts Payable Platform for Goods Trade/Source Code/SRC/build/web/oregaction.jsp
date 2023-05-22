<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String ouser=request.getParameter("ouser");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String contact=request.getParameter("contact");
String loc=request.getParameter("loc");
try{
    
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
	PreparedStatement ps=con.prepareStatement("insert into oreg(ouser,pass,email,dob,contact,loc)value('"+ouser+"','"+pass+"','"+email+"','"+dob+"','"+contact+"','"+loc+"')");
               System.out.println(ps);
              ps.executeUpdate();
               System.out.println(ps);
               out.println("<script>"); 			
                    out.println("alert(\" '"+ouser+"' Register Successfully \")");
                    out.println("</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("owner.jsp");
                    rd.include(request,response);

}
catch(Exception e){
     out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("owner.jsp");
                    rd.include(request,response);
    
}





%>