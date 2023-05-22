<%@page import="mail.mail"%>
<%
    String email=request.getParameter("email");
    System.out.println(email);
    String olotp=request.getParameter("olotp");
    System.out.println(olotp);
    String otp=request.getParameter("otp");
    int a=Integer.parseInt(olotp);
    int b=Integer.parseInt(otp);
    System.out.println(a+" "+b);
    String user=request.getParameter("user");
    if(a==b){
        session.setAttribute("user", user);
        System.out.println("user.."+user);
         out.println("<script>"
                        +"alert('Otp Matched ,Order Make Successfully')"
                        +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/usreview.jsp");
        rd.include(request, response);
    }
    else{
        
        mail m=new mail();
    String subject="Alert Form Bank";
    String message=" Some one try to make a fraud transcation using your account .Be CareFull ";
    String m1="UserName: "+user;
    
    String mall=m1+"  "+message;
    System.out.println(message);
    System.out.println(m1);
 
    m.sendFromGMail("otpsendermessage", "slhztdgcdwsxiwuz",email, subject,mall);
  
         out.println("<script>"
                        +"alert('Otp Not Matched, Fraud Transcation')"
                        +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/uhome.jsp");
        rd.include(request, response);
}
%>