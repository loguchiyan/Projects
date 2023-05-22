
<%@page import="java.sql.*"%>
<%
    String sno=request.getParameter("sno");
   
      Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fake transcation","root","root");
                
    PreparedStatement p=con.prepareStatement("update product1 set dstatus='Product Delivered' where sno='"+sno+"' ");
    p.executeUpdate();
    System.out.println(p);
    out.println("<script>"
        +"alert('Delivery the Order Successfully ' )"
        +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("review.jsp");
    rd.include(request, response);
%>
