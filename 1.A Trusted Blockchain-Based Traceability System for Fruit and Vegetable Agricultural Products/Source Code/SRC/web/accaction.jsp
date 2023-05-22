<%@page import="java.sql.*"%>
<%

String ctype=request.getParameter("ctype");
String bname=request.getParameter("bname");
String acc=request.getParameter("acc");
String ifsc=request.getParameter("ifsc");
String cvv=request.getParameter("cvv");
String branch=request.getParameter("branch");

String uuser=session.getAttribute("uuser").toString();

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
		    PreparedStatement query=con.prepareStatement("insert into account(uuser,ctype,bname,acc,ifsc,cvv,branch)values ('"+uuser+"','"+ctype+"','"+bname+"','"+acc+"','"+ifsc+"','"+cvv+"','"+branch+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Add Account Details Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("money.jsp");
                    rd.include(request,response);		
		
                

    


%>