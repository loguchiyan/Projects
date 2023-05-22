<%@page import="java.sql.*"%>

<%
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String qua=request.getParameter("qua");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
String city=request.getParameter("city");
System.out.println(pid);
try{


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","root");
 PreparedStatement query=con.prepareStatement("insert into product(pid,pname,qua,contact,address,city,)values ('"+pid+"','"+pname+"','"+qua+"','"+contact+"','"+address+"','"+city+"')");
 System.out.println(query);
 query.executeUpdate();
 
                out.println("<script>"); 			
                    out.println("alert(\"Add Workers detail Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addwater.jsp");
                    rd.include(request,response);	
 
 





}
catch(Exception e){
    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addwater.jsp");
                    rd.include(request,response);
    
}



%>