<%@page import="java.sql.*"%>
<%try{
            String oname=request.getParameter("oname");
            String fname=request.getParameter("reg");
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            String image=request.getParameter("image");
            String trap=request.getParameter("trap");
            int i=1;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/policy","root","root");
           PreparedStatement ps=con.prepareStatement("insert into Request(id,name,reg,oname,trap,image,request)values('"+id+"','"+name+"','"+fname+"','"+oname+"','"+trap+"','"+image+"','"+i+"')");
             System.out.println(ps); 
             ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Request Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Search.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Search.jsp");
            rd.include(request, response);  
        }
    
%>