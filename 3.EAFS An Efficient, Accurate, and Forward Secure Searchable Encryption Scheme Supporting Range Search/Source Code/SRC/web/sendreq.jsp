<%-- 
    Document   : sendreq
    Created on : Aug 2, 2017, 4:40:58 PM
    Author     : DLK 1
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String fkey="",fname="",ename="";
        String name=session.getAttribute("name").toString();
        session.setAttribute("name", name);
        String id = request.getParameter("fname");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees", "root", "root");
        String Query22="select * from file where fname='"+id+"' ";
        PreparedStatement ps22=con.prepareStatement(Query22);
        ResultSet rss = ps22.executeQuery();
        if(rss.next())
        {
            fkey=rss.getString("fkey");
            //fname=rss.getString("fname");
        }
        PreparedStatement ps=con.prepareStatement("insert into filereq (name,fname,fkey) values ('"+name+"','"+id+"','"+fkey+"') ");
        ps.executeUpdate();
        out.println("<script>"
				+"alert('Request Send.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
    rd.include(request, response);    
%>