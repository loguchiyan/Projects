<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String user=session.getAttribute("user").toString();
String cno=request.getParameter("cno");
String ctype=request.getParameter("ctype");
String cvno=request.getParameter("cvno");
String exp=request.getParameter("exp");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String aclim=request.getParameter("aclim");
String password=request.getParameter("password");
String sec=request.getParameter("sec");
String ans=request.getParameter("ans");
System.out.println( email);
System.out.println(mobile);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fake transcation","root","root");                
                    PreparedStatement query=con.prepareStatement("insert into card(user,cno,cvno,exp,mobile,email,aclim,password,sec,ans)values('"+user+"','"+cno+"','"+cvno+"','"+exp+"','"+mobile+"','"+email+"','"+aclim+"','"+password+"','"+sec+"','"+ans+"')");
  System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("card.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("card.jsp");
                    rd.include(request,response);
                }

%>