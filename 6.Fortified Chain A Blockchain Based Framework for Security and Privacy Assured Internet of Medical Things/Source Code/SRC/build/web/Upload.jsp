<%@page import="java.sql.*"%>
<%
String pid=request.getParameter("pid");
String oname=request.getParameter("oname");
String pname=request.getParameter("pname");
String file=request.getParameter("file");
String date=request.getParameter("date");
String bdate=request.getParameter("bdate");
String cost=request.getParameter("cost");


Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/designer","root","root");
                        PreparedStatement query=con.prepareStatement("insert into upload(pid,oname,pname,cost,date,bdate,image)values('"+pid+"','"+oname+"','"+pname+"','"+cost+"','"+date+"','"+bdate+"','"+file+"')");
                         System.out.println(query);
                         query.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Register Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("dpage.jsp");
            rd.include(request, response);  



%>