
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%

String user=request.getParameter("user");
String ParGur=request.getParameter("ParGur");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String foccup=request.getParameter("foccup");
String moccup=request.getParameter("moccup");
String noo=request.getParameter("noo");
String annual=request.getParameter("annual");
String sno=request.getParameter("sno");
try{
    
    Class.forName("com.mysql.jdbc.Driver");
                          System.out.println("**********");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentadmission","root","root");
		      PreparedStatement ps=con.prepareStatement("UPDATE personal set ParGur='"+ParGur+"' where user ='"+user+"'  ");
               System.out.println(ps);
               ps.executeUpdate();
               System.out.println(ps);
               out.println("<script>"); 			
                    out.println("alert(\"Register Successfully\")");
                    out.println("</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("personal1.jsp");
                    rd.include(request,response);

}
catch(Exception e){
     out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("family.jsp");
                    rd.include(request,response);
    
}





%>
