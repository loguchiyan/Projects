<%@page import="java.sql.*"%>
<%
    String name=request.getParameter("username");
    String pass=request.getParameter("pass");
    String mail=request.getParameter("mail");
    String mobile=request.getParameter("mobile");
    String city=request.getParameter("city");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/risk_prediction","root","root");
    PreparedStatement p=con.prepareStatement("insert into register(name,pass,mail,mobile,city)values('"+name+"','"+pass+"','"+mail+"','"+mobile+"','"+city+"')");
    p.executeUpdate();
    out.println("<script>"
                    +"alert('Registered Successfully')"
                    +"</script>");
    RequestDispatcher rd = request.getRequestDispatcher("Users.jsp");
    rd.include(request, response);

%>