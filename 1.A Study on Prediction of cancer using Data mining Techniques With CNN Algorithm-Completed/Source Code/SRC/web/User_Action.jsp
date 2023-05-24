<%@page import="java.sql.*"%>
<%
   
    String name=request.getParameter("username");
    String pass=request.getParameter("pass");  
    try {              
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/risk_prediction", "root","root");
                String q="select * from register where name='"+name+"' and pass='"+pass+"' ";
                PreparedStatement ps=con.prepareStatement(q);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {                   
                    session.setAttribute("name", name);
                    session.setAttribute("id", rs.getString("id"));                   
                    out.println("<script>"
                            +"alert('Login Successfully')"
                            +"</script>");
                           
                    RequestDispatcher rd=request.getRequestDispatcher("User_Home.jsp");
                    rd.include(request, response);       
                } 
                else{
                    out.println("<script>"
                            +"alert('Invalid Login')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("Users.jsp");
                    rd.include(request, response);
                    }
            } catch (Exception ex) 
             {
            }
%>