
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%
    String name=(String)session.getAttribute("name");
    String pkey=request.getParameter("pkey");
    String tkey=request.getParameter("tkey");
    Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/policy","root","root");
                        PreparedStatement p=con.prepareStatement("select * from request where name='"+name+"' and fkey='"+pkey+"' and trap='"+tkey+"'");
    System.out.println(p);
   ResultSet rs=p.executeQuery();
    if(rs.next()){
        String filename=rs.getString("image");
    String filePath = "C:\\files\\"+filename;   
System.out.println(filePath);
      File downloadFile = new File(filePath);
   FileInputStream inStream = new FileInputStream(downloadFile);
    
   // if you want to use a relative path to context root:
   String relativePath = getServletContext().getRealPath("");
   System.out.println("relativePath = " + relativePath);
    
   // obtains ServletContext
   ServletContext context = getServletContext();
    
   // gets MIME type of the file
   String mimeType = context.getMimeType(filePath);
   if (mimeType == null) {        
       // set to binary type if MIME mapping not found
       mimeType = "application/octet-stream";
   }
   System.out.println("MIME type: " + mimeType);
   
   // modifies response
   response.setContentType(mimeType);
   response.setContentLength((int) downloadFile.length());
    
   // forces download
   String headerKey = "Content-Disposition";
   String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
   response.setHeader(headerKey, headerValue);
    
   // obtains response's output stream
   OutputStream outStream = response.getOutputStream();
    
   byte[] buffer = new byte[4096];
   int bytesRead = -1;
    
   while ((bytesRead = inStream.read(buffer)) != -1) {
       outStream.write(buffer, 0, bytesRead);
   }       
    inStream.close();
   outStream.close();
     PreparedStatement ps=con.prepareStatement("update request set downlad='1' where name='"+name+"' and fkey='"+pkey+"' and trap='"+tkey+"'");
    System.out.println(ps);
  ps.executeUpdate();
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