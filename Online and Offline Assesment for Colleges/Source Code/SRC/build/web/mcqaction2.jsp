<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
    String title=request.getParameter("title");
    String testn=request.getParameter("testn");
    String q1=request.getParameter("q1");
    String q2=request.getParameter("q2");
    String q3=request.getParameter("q3");
    String q4=request.getParameter("q4");
    String q5=request.getParameter("q5");
    String q6=request.getParameter("q6");
    String q7=request.getParameter("q7");
    String q8=request.getParameter("q8");
    String q9=request.getParameter("q9"); 
    String q10=request.getParameter("q10");
 
     
    Random rr=new Random();
    int ex=rr.nextInt(100000);
    String Qid="Java"+ex;
    System.out.println("this is 1");
    PreparedStatement query1=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q1+"','"+title+"','"+testn+"')");
    query1.executeUpdate();
    System.out.println("this is 2");
    PreparedStatement query2=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q2+"','"+title+"','"+testn+"')");
    query2.executeUpdate();
    System.out.println("this is 3");
    PreparedStatement query3=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q3+"','"+title+"','"+testn+"')");
    query3.executeUpdate();
    System.out.println("this is 4");
    PreparedStatement query4=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q4+"','"+title+"','"+testn+"')");
    query4.executeUpdate();
    System.out.println("this is 5");
    PreparedStatement query5=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q5+"','"+title+"','"+testn+"')");
    query5.executeUpdate();
    System.out.println("this is 6");
    PreparedStatement query6=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q6+"','"+title+"','"+testn+"')");
    query6.executeUpdate();
    System.out.println("this is 7");
    PreparedStatement query7=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q7+"','"+title+"','"+testn+"')");
    query7.executeUpdate();
    System.out.println("this is 8");
    PreparedStatement query8=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q8+"','"+title+"','"+testn+"')");
    query8.executeUpdate();
    System.out.println("this is 9");
    PreparedStatement query9=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q9+"','"+title+"','"+testn+"')");
    query9.executeUpdate();
    System.out.println("this is 10");
    PreparedStatement query10=con.prepareStatement("insert into java1(id,questions,title,testn)values('"+Qid+"','"+q10+"','"+title+"','"+testn+"')");
    query10.executeUpdate();
    

    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Succesfully Created Exam\")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("add1.jsp");   
    rd.include(request, response);
%>