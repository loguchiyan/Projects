<%@page import="java.sql.*"%>

<%
       
try 
{
    
    String song=request.getParameter("song");
    String movie=request.getParameter("movie");
    String singer=request.getParameter("singer");
    String year=request.getParameter("year");
   
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","root");
		    PreparedStatement query=con.prepareStatement("insert into song(song,movie,singer,year)values ('"+song+"','"+movie+"','"+singer+"','"+year+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Add to Your Playlist \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("srchaction.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("srchaction.jsp");
                    rd.include(request,response);
                }


%>