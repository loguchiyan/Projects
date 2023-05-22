
<%@page import="java.sql.*"%>
<%
    String f=(String)session.getAttribute("f");
    String s=(String)session.getAttribute("s");
    String t=(String)session.getAttribute("t");
    String filename=(String)session.getAttribute("file");
    String fkey=request.getParameter("fkey");
    System.out.println(fkey);
    String tkey=request.getParameter("tkey");
    System.out.println(tkey);
    String skey=request.getParameter("skey");
    System.out.println(skey);
    System.out.println(filename);
    if(fkey.equals(f)&&skey.equals(s)&&tkey.equals(t)){
      String filepath = "C:\\files\\";   
      response.setContentType("APPLICATION/OCTET-STREAM");   
      response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
      
      java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
                
      int i;   
      while ((i=fileInputStream.read()) != -1) {  
        out.write(i);   
      }   
      fileInputStream.close();   
    }
    else
    {
    out.println("<script>"
				+"alert('You Enter the Wrong Key.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("uprofile.jsp");
    rd.include(request, response);
    }
%>