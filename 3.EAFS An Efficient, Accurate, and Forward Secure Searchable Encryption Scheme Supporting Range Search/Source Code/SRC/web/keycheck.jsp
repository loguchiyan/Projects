<%-- 
    Document   : keycheck
    Created on : Mar 9, 2017, 11:09:43 PM
    
--%>

<%@page import="algorithm.CipherHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try
    {
    String k,key,fname,name,key1;
    k=request.getParameter("k");
    key1=request.getParameter("key");
    CipherHelper cc = new CipherHelper();
    key=cc.decipher("12345678", key1);
    fname=request.getParameter("fname");
    name=request.getParameter("name");
    session.setAttribute("name", name);
    session.setAttribute("fname", fname);
    System.out.println(key1+"  "+key);
    if(k.equals(key))
    {
        String filename=fname;
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
				+"alert('Wrong Key.....')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
    rd.include(request, response);
    }
    }
    catch(Exception ex)
    {
    out.println("<script>"
				+"alert('Input length must be multiple of 8 when decrypting with padded cipher')"
				+"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
    rd.include(request, response);
    }
%>