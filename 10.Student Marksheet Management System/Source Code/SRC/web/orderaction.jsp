<%@page import="java.sql.*"%>
<%
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String cost=request.getParameter("cost");
String qua=request.getParameter("qua");
String much=request.getParameter("much");
String amount=request.getParameter("amount");
String bank=request.getParameter("bank");
String card=request.getParameter("card");
String ifsc=request.getParameter("ifsc");
String cvv=request.getParameter("cvv");
String user=session.getAttribute("user").toString();
  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/water","root","root");
		    PreparedStatement query=con.prepareStatement("insert into orders(user,pid,pname,cost,qua,much,amount,card,bank,ifsc,cvv)values('"+user+"','"+pid+"','"+pname+"','"+cost+"','"+qua+"','"+much+"','"+amount+"','"+bank+"','"+card+"','"+ifsc+"','"+cvv+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Ordered your Products Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("new.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("makeorder.jsp");
                    rd.include(request,response);
                }

       
                                   
























%>