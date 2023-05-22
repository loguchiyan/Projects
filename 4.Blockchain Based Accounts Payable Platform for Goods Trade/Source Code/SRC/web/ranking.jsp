<%@page import="java.sql.*"%>
<%
    
         
    
    String ouser=session.getAttribute("uuser").toString();   
    
                String pname=request.getParameter("pname");
                 String pcat=request.getParameter("pcat");
                String image=request.getParameter("image");
               
                String review=request.getParameter("review");
                String ranking=request.getParameter("rank");
                int i;
                if(ranking.equals("* * * * *"))
                {
                 i=5;   
                }else if(ranking.equals("* * * *"))
                {
                    i=4;
                }else if(ranking.equals("* * *"))
                {
                    i=3;
                }else if(ranking.equals("* *"))
                {
                    i=2;
                }else
                {
                    i=1;
                }
                
               
               
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri","root","root");
                        PreparedStatement query=con.prepareStatement("insert into review (ouser,pname,pcat,image,review,ranking) values ('"+ouser+"','"+pname+"','"+pcat+"','"+image+"','"+review+"','"+ranking+"')");
                        System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                   
                    out.println("<script>"); 			
                    out.println("alert(\"Added Review and ranking Successfully!\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("review.jsp");
                    rd.include(request,response);		
		
                
                
                %>