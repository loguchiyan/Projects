
<%@page import="java.sql.*"%>
<%
    String name=(String)session.getAttribute("name");
    String pkey=request.getParameter("pkey");
    String tkey=request.getParameter("tkey");
    Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Intergity","root","root");
                        PreparedStatement p=con.prepareStatement("select * from request where name='"+name+"' and fkey='"+pkey+"' and trap='"+tkey+"'");
    System.out.println(p);
    ResultSet rs=p.executeQuery();
    if(rs.next()){
        String filename=rs.getString("fname");
     String filepath = "C:\\Users\\ADMIN\\Documents\\NetBeansProjects\\Intergity\\build\\web\\files\\";   
      response.setContentType("APPLICATION/OCTET-STREAM");   
      response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
      
      java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
                
      int i;   
      while ((i=fileInputStream.read()) != -1) {  
        out.write(i);   
      }   
      fileInputStream.close(); 
     RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
    rd.include(request, response);
       }
    else
    {
    out.println("<script>"
				+"alert('You Enter the Wrong Key.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
    rd.include(request, response);
    }
%>