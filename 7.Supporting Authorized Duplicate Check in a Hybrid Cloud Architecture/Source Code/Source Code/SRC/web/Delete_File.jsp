<%@page import="java.sql.*"%>
<%try{
            String oname=request.getParameter("name");
            String fname=request.getParameter("reg");
            String fkey=request.getParameter("fkey");Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/secureiot","root","root");
            PreparedStatement ps=con.prepareStatement(" delete from upload where name='"+oname+"' and reg='"+fname+"' and fkey='"+fkey+"' ");
            
            ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"File Deleted Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Manage.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Manage.jsp");
            rd.include(request, response);  
        }
    
%>