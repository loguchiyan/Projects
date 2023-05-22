<%@page import="DB.DB"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    Connection con=new DB().Connect();
    PreparedStatement ps=con.prepareStatement("insert into keyword_request(uid,uname)values('"+id+"','"+name+"')");
    ps.executeUpdate();
    System.out.println(ps);
    out.println("<script>"
                +"alert('Keyword request send to the cloud2')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Send_Keyword.jsp");
        rd.include(request, response);
%>