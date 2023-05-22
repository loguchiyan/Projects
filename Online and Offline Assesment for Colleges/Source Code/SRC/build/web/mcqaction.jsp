<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
    String title=request.getParameter("title");
    String testn=request.getParameter("testn");
    String q1=request.getParameter("q1");
    String a1=request.getParameter("a1");
    String a2=request.getParameter("a2");
    String a3=request.getParameter("a3");
    String a4=request.getParameter("a4");
    String ans1=request.getParameter("ans1");
    
    String q2=request.getParameter("q2");
    String b1=request.getParameter("b1");
    String b2=request.getParameter("b2");
    String b3=request.getParameter("b3");
    String b4=request.getParameter("b4");
    String ans2=request.getParameter("ans2");
    
    
    String q3=request.getParameter("q3");
    String c1=request.getParameter("c1");
    String c2=request.getParameter("c2");
    String c3=request.getParameter("c3");
    String c4=request.getParameter("c4");
    String ans3=request.getParameter("ans3");
    
    
    String q4=request.getParameter("q4");
    String d1=request.getParameter("d1");
    String d2=request.getParameter("d2");
    String d3=request.getParameter("d3");
    String d4=request.getParameter("d4");
    String ans4=request.getParameter("ans4");
    
    
    String q5=request.getParameter("q5");
    String e1=request.getParameter("e1");
    String e2=request.getParameter("e2");
    String e3=request.getParameter("e3");
    String e4=request.getParameter("e4");
    String ans5=request.getParameter("ans5");
    
    
    String q6=request.getParameter("q6");
    String f1=request.getParameter("f1");
    String f2=request.getParameter("f2");
    String f3=request.getParameter("f3");
    String f4=request.getParameter("f4");
    String ans6=request.getParameter("ans6");
    
    
    String q7=request.getParameter("q7");
    String g1=request.getParameter("g1");
    String g2=request.getParameter("g2");
    String g3=request.getParameter("g3");
    String g4=request.getParameter("g4");
    String ans7=request.getParameter("ans7");
    
    
    String q8=request.getParameter("q8");
    String h1=request.getParameter("h1");
    String h2=request.getParameter("h2");
    String h3=request.getParameter("h3");
    String h4=request.getParameter("h4");
    String ans8=request.getParameter("ans8");
    
    
    String q9=request.getParameter("q9");
    String i1=request.getParameter("i1");
    String i2=request.getParameter("i2");
    String i3=request.getParameter("i3");
    String i4=request.getParameter("i4");
    String ans9=request.getParameter("ans9");
    
    
    String q10=request.getParameter("q10");
    String j1=request.getParameter("j1");
    String j2=request.getParameter("j2");
    String j3=request.getParameter("j3");
    String j4=request.getParameter("j4");
    String ans10=request.getParameter("ans10");
    
    
    String q11=request.getParameter("q11");
    String k1=request.getParameter("k1");
    String k2=request.getParameter("k2");
    String k3=request.getParameter("k3");
    String k4=request.getParameter("k4");
    String ans11=request.getParameter("ans11");
    
    
    String q12=request.getParameter("q12");
    String l1=request.getParameter("l1");
    String l2=request.getParameter("l2");
    String l3=request.getParameter("l3");
    String l4=request.getParameter("l4");
    String ans12=request.getParameter("ans12");
    
    
    String q13=request.getParameter("q13");
    String m1=request.getParameter("m1");
    String m2=request.getParameter("m2");
    String m3=request.getParameter("m3");
    String m4=request.getParameter("m4");
    String ans13=request.getParameter("ans13");
    
    
    String q14=request.getParameter("q14");
    String n1=request.getParameter("n1");
    String n2=request.getParameter("n2");
    String n3=request.getParameter("n3");
    String n4=request.getParameter("n4");
    String ans14=request.getParameter("ans14");
    
    
    String q15=request.getParameter("q15");
    String o1=request.getParameter("o1");
    String o2=request.getParameter("o2");
    String o3=request.getParameter("o3");
    String o4=request.getParameter("o4");
    String ans15=request.getParameter("ans15");
    
    
    
    String q16=request.getParameter("q16");
    String p1=request.getParameter("p1");
    String p2=request.getParameter("p2");
    String p3=request.getParameter("p3");
    String p4=request.getParameter("p4");
    String ans16=request.getParameter("ans16");
    
    
    String q17=request.getParameter("q17");
    String  qe1=request.getParameter("qe1");
    String qe2=request.getParameter("qe2");
    String qe3=request.getParameter("qe3");
    String qe4=request.getParameter("qe4");
    String ans17=request.getParameter("ans17");
    
    
    
     String q18=request.getParameter("q18");
    String  r1=request.getParameter("r1");
    String r2=request.getParameter("r2");
    String r3=request.getParameter("r3");
    String r4=request.getParameter("r4");
    String ans18=request.getParameter("ans18");
    
    
     String q19=request.getParameter("q19");
    String  s1=request.getParameter("s1");
    String s2=request.getParameter("s2");
    String s3=request.getParameter("s3");
    String s4=request.getParameter("s4");
    String ans19=request.getParameter("ans19");
    
    
     String q20=request.getParameter("q20");
    String  t1=request.getParameter("t1");
    String t2=request.getParameter("t2");
    String t3=request.getParameter("t3");
    String t4=request.getParameter("t4");
    String ans20=request.getParameter("ans20");
    
    Random rr=new Random();
    int ex=rr.nextInt(100000);
    String Qid="Java"+ex;
    System.out.println("this is 1");
    PreparedStatement query1=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q1+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+ans1+"','"+title+"','"+testn+"')");
    query1.executeUpdate();
    System.out.println("this is 2");
    PreparedStatement query2=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q2+"','"+b1+"','"+b2+"','"+b3+"','"+b4+"','"+ans2+"','"+title+"','"+testn+"')");
    query2.executeUpdate();
    System.out.println("this is 3");
    PreparedStatement query3=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q3+"','"+c1+"','"+c2+"','"+c3+"','"+c4+"','"+ans3+"','"+title+"','"+testn+"')");
    query3.executeUpdate();
    System.out.println("this is 4");
    PreparedStatement query4=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q4+"','"+d1+"','"+d2+"','"+d3+"','"+d4+"','"+ans4+"','"+title+"','"+testn+"')");
    query4.executeUpdate();
    System.out.println("this is 5");
    PreparedStatement query5=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q5+"','"+e1+"','"+e2+"','"+e3+"','"+e4+"','"+ans5+"','"+title+"','"+testn+"')");
    query5.executeUpdate();
    System.out.println("this is 6");
    PreparedStatement query6=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q6+"','"+f1+"','"+f2+"','"+f3+"','"+f4+"','"+ans6+"','"+title+"','"+testn+"')");
    query6.executeUpdate();
    System.out.println("this is 7");
    PreparedStatement query7=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q7+"','"+g1+"','"+g2+"','"+g3+"','"+g4+"','"+ans7+"','"+title+"','"+testn+"')");
    query7.executeUpdate();
    System.out.println("this is 8");
    PreparedStatement query8=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q8+"','"+h1+"','"+h2+"','"+h3+"','"+h4+"','"+ans8+"','"+title+"','"+testn+"')");
    query8.executeUpdate();
    System.out.println("this is 9");
    PreparedStatement query9=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q9+"','"+i1+"','"+i2+"','"+i3+"','"+i4+"','"+ans9+"','"+title+"','"+testn+"')");
    query9.executeUpdate();
    System.out.println("this is 10");
    PreparedStatement query10=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q10+"','"+j1+"','"+j2+"','"+j3+"','"+j4+"','"+ans10+"','"+title+"','"+testn+"')");
    query10.executeUpdate();
    System.out.println("this is 11");
    PreparedStatement query11=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q11+"','"+k1+"','"+k2+"','"+k3+"','"+k4+"','"+ans11+"','"+title+"','"+testn+"')");
    query11.executeUpdate();
    System.out.println("this is 12");
    PreparedStatement query12=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q12+"','"+l1+"','"+l2+"','"+l3+"','"+l4+"','"+ans12+"','"+title+"','"+testn+"')");
    query12.executeUpdate();
    System.out.println("this is 13");
    PreparedStatement query13=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q13+"','"+m1+"','"+m2+"','"+m3+"','"+m4+"','"+ans13+"','"+title+"','"+testn+"')");
    query13.executeUpdate();
    System.out.println("this is 14");
    PreparedStatement query14=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q14+"','"+n1+"','"+n2+"','"+n3+"','"+n4+"','"+ans14+"','"+title+"','"+testn+"')");
    query14.executeUpdate();
    System.out.println("this is 15");
    PreparedStatement query15=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q15+"','"+o1+"','"+o2+"','"+o3+"','"+o4+"','"+ans15+"','"+title+"','"+testn+"')");
    query15.executeUpdate();
    System.out.println("this is 16");
    PreparedStatement query16=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q16+"','"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+ans16+"','"+title+"','"+testn+"')");
    query16.executeUpdate();
     System.out.println("this is 17");
    PreparedStatement query17=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q17+"','"+qe1+"','"+qe2+"','"+qe3+"','"+qe4+"','"+ans17+"','"+title+"','"+testn+"')");
    query17.executeUpdate();
     System.out.println("this is 18");
    PreparedStatement query18=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q18+"','"+r1+"','"+r2+"','"+r3+"','"+r4+"','"+ans18+"','"+title+"','"+testn+"')");
    query18.executeUpdate();
     System.out.println("this is 19");
    PreparedStatement query19=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q19+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+ans19+"','"+title+"','"+testn+"')");
    query19.executeUpdate();
     System.out.println("this is 20");
    PreparedStatement query20=con.prepareStatement("insert into java(id,questions,choice1,choice2,choice3,choice4,answer,title,testn)values('"+Qid+"','"+q20+"','"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+ans20+"','"+title+"','"+testn+"')");
    query20.executeUpdate();

    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Succesfully Created Exam\")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("add.jsp");   
    rd.include(request, response);
%>