<%@page import="java.sql.*"%>
<%try{
            String oname=request.getParameter("oname");
            String fname=request.getParameter("reg");
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            String image=request.getParameter("image");
            String trap=request.getParameter("trap");
            String type=request.getParameter("type");
            int i=1;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/secureiot","root","root");
           PreparedStatement ps=con.prepareStatement("insert into Request(id,name,reg,oname,trap,type,image,request)values('"+id+"','"+name+"','"+fname+"','"+oname+"','"+trap+"','"+type+"','"+image+"','"+i+"')");
             System.out.println(ps); 
             ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Request Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Viewother.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Viewother.jsp");
            rd.include(request, response);  
        }
    
%>