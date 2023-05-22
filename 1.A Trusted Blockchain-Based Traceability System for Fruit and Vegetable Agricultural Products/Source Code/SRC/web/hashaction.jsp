

<%@page import="java.sql.*"%>
<%
 String pid=request.getParameter("pid");
 String uuser=request.getParameter("uuser");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
 PreparedStatement p=con.prepareStatement("Select hashkey from upload where pid='"+pid+"'");
 System.out.println(p);
  ResultSet rs=p.executeQuery();
    String hashkey="";
  if(rs.next())
    {
    hashkey=rs.getString("hashkey");
    System.out.println(hashkey);
    }
    PreparedStatement p1=con.prepareStatement("update ureq set hashkey='"+hashkey +"' where pid='"+pid+"' and uuser='"+uuser+"' ");
    p1.executeUpdate();
    out.println("<script>"
            +"alert('Send Hashkey  Successfully.')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("graph.jsp");
    rd.include(request, response);
%>