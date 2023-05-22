<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try{
String did=request.getParameter("did");
String cate=request.getParameter("cate");
String sub=request.getParameter("sub");
String dname=request.getParameter("dname");
String dprice=request.getParameter("dprice");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
  PreparedStatement p=con.prepareStatement("insert into request(did,cate,sub,dname,dprice)values('"+did+"','"+cate+"','"+sub+"','"+dname+"','"+ dprice+"')");
      System.out.println(p);
  ResultSet rs=p.executeQuery();
  System.out.println(rs);
  
  
                    out.println("<script>"); 			
                    out.println("alert(\" Make a request Successfully \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("searchinc.jsp");
                    rd.include(request,response);		
}
catch(Exception e)
{
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("searchinc.jsp");
                    rd.include(request,response);
}

  
%>
