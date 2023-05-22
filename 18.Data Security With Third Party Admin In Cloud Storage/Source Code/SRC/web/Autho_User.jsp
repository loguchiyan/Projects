<%@page import="java.sql.*"%>
<%try{
            String oname=request.getParameter("name");
            String fname=request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Intergity","root","root");
            PreparedStatement ps=con.prepareStatement(" update ureg set status='Authorized' where name='"+oname+"' and id='"+fname+"'  ");
            
            ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"User Authorized Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("AuUser.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("AuUser.jsp");
            rd.include(request, response);  
        }
    
%>