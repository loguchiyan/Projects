<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlinelearning","root","root");
    String user=(String)session.getAttribute("user");
    System.out.println(user);
    String id=(String)session.getAttribute("id");
    System.out.println(id);
    String questioncode=(String)session.getAttribute("code");
    System.out.println(questioncode);
    String title=request.getParameter("title");
    String testn=request.getParameter("testn");
    System.out.println(testn);
    System.out.println(title);
 
    for(int i=1;i<=10;i++)
    {
        String question=request.getParameter("q"+i);
        
        String answer=request.getParameter("answer"+i);
     PreparedStatement query1=con.prepareStatement("insert into answer(id,user,question_code,question,answer,title)"
                    + "values('"+id+"','"+user+"','"+questioncode+"','"+question+"','"+answer+"','"+title+"') ");
          System.out.println( query1);
            query1.executeUpdate();
      }
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\" Completed Exam Succesfully\")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("offass.jsp");   
    rd.include(request, response);
 
%>