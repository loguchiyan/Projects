<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%
    String ref=request.getParameter("ref");
    Connection con=new DB().fun();
    if(ref.equalsIgnoreCase("name")){
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        PreparedStatement p=con.prepareStatement("update reg set status='Authorized' where id='"+id+"' and name='"+name+"' ");
        p.executeUpdate();
        out.println("<script>"
                +"alert('Authorized Successfully..')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Cloud.jsp");
        rd.include(request, response);
    }
   
%>