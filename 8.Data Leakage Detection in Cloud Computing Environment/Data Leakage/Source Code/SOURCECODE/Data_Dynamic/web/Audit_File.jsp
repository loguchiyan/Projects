<%@page import="java.sql.*"%>
<%try{    
            String trap=request.getParameter("trap");
            String fname=request.getParameter("file");
            String id=request.getParameter("reg");
            String name=request.getParameter("name");
            String fkey=request.getParameter("fkey");Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Intergity","root","root");
            PreparedStatement ps=con.prepareStatement("insert into audit(id,name,fkey,trap,fname) values ('"+id+"','"+name+"','"+fkey+"','"+trap+"','"+fname+"')");
            System.out.println(ps);
            ps.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Auditing Request sent to TPA Successfully..\")");
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