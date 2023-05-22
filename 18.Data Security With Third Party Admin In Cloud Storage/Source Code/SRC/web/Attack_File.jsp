<%@page import="java.sql.*"%>
<%try{
            String oname=request.getParameter("name");
            String fname=request.getParameter("id");
            String fkey=request.getParameter("fkey");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Intergity","root","root");
            PreparedStatement ps=con.prepareStatement(" update upload set Attack='Attack' where name='"+oname+"' and reg='"+fname+"' and fkey='"+fkey+"'  ");
            System.out.println(ps);
            ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Attack File..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Att.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Att.jsp");
            rd.include(request, response);  
        }
    
%>