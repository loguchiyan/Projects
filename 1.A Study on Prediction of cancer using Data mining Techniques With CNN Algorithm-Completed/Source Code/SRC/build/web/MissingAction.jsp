 <%@include file="Connection.jsp"%>
<%
    String id=request.getParameter("id");
    String a1=request.getParameter("a1");
    String a2=request.getParameter("a2");
    String a3=request.getParameter("a3");
    String a4=request.getParameter("a4");
    String a5=request.getParameter("a5");
    String a6=request.getParameter("a6");
    String a7=request.getParameter("a7");
    String a8=request.getParameter("a8");
    String a9=request.getParameter("a9");
    String a10=request.getParameter("a10");
    String a11=request.getParameter("a11");
    String a12=request.getParameter("a12");
    String a13=request.getParameter("a13");
    String a14=request.getParameter("a14");
    String a15=request.getParameter("a15");
    query=con.prepareStatement("update dataset set age='"+a1+"',sex='"+a2+"',cp='"+a3+"',trestbps='"+a4+"',chol='"+a5+"',fbs='"+a6+"',restecg='"+a7+"',thalach='"+a8+"',exang='"+a9+"',oldpeak='"+a10+"',slope='"+a11+"',ca='"+a12+"',thal='"+a13+"',num='"+a14+"',name='"+a15+"' where id='"+id+"' ");
    query.executeUpdate();
    
    out.println("<script type=\"text/javascript\">"); 			   
    out.println("alert(\"Succesfully Updated\")");
    out.println("</script>");    
    RequestDispatcher rd=request.getRequestDispatcher("Search.jsp");  
    rd.include(request,response);


%>