<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>

<%

String sno=request.getParameter("sno");
 String keyy=request.getParameter("keyy");
Random r = new Random(); 
                      String x = Integer.toString(r.nextInt(10000));
                      String a="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghiijklmnopqrstuvwxyz";                      
                   CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                  
                   long code   =(long)((Math.random()*9*Math.pow(10,15))+Math.pow(10,15));
                  String unique_password="";
                 for (long i=code;i!=0;i/=100)
                   {
                    long digit=i%100;
                    if (digit<=90)
                    digit=digit+32; 
                    char ch=(char) digit;
                    unique_password=ch+unique_password;
                    }
    System.out.println("unique password ="+unique_password);
    
    
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blockhealthcare","root","root");
      PreparedStatement p1=con.prepareStatement("UPDATE request SET keyy='"+tkey+"' WHERE sno='"+sno+"' ");
   System.out.println(p1);
    p1.executeUpdate();
    System.out.println(p1);
    out.println("<script>"
            +"alert('Update Encryption Key Successfully.')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("genkey.jsp");
    rd.include(request, response);

%>

