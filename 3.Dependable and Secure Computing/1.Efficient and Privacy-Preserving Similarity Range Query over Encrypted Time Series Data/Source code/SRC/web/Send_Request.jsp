<%-- 
    Document   : sendreq
    Created on : Aug 2, 2017, 4:40:58 PM
    Author     : DLK 1
--%>
<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String fkey="",fname="",ename="",trapdoor="",timedelay="",date="";
        String name=session.getAttribute("name").toString();
        session.setAttribute("name", name);
        String id = request.getParameter("fname");
        Connection con=new DB().Connect();
        String Query22="select * from file where fname='"+id+"' ";
        PreparedStatement ps22=con.prepareStatement(Query22);
        ResultSet rss = ps22.executeQuery();
        if(rss.next())
        {
            fkey=rss.getString("fkey");
            trapdoor=rss.getString("trapdoor");
            timedelay=rss.getString("timedelay");
            date=rss.getString("date");
            //fname=rss.getString("fname");
        }
        PreparedStatement ps=con.prepareStatement("insert into filereq (name,fname,fkey,trapdoor,date,timedelay) values ('"+name+"','"+id+"','"+fkey+"','"+trapdoor+"','"+date+"','"+timedelay+"') ");
        ps.executeUpdate();
        out.println("<script>"
				+"alert('Request Sends to the cloud..')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
    rd.include(request, response);    
%>