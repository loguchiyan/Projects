<%@page import="java.sql.*"%>
<%try{
             String name=request.getParameter("name");
            String id=request.getParameter("id");
            String image=request.getParameter("image");
            String trap=request.getParameter("trap");
            String sno=request.getParameter("sno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/imagecloud","root","root");
            PreparedStatement ps=con.prepareStatement("Update Request set status='Accept' where sno='"+sno+"' and reg='"+id+"' and oname='"+name+"' ");
            System.out.println(ps); 
             ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Accept Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Viewrequest.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Viewrequest.jsp");
            rd.include(request, response);  
        }
    
%>