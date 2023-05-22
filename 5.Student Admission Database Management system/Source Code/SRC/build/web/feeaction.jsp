<%@page import="java.sql.*"%>
<%
String dept=request.getParameter("dept");
String year1=request.getParameter("year1");
String afee=request.getParameter("afee");
String tfee=request.getParameter("tfee");
String lfee=request.getParameter("lfee");

String sfee=request.getParameter("sfee");
String pfee=request.getParameter("pfee");
String hfee=request.getParameter("hfee");
String bfee=request.getParameter("bfee");
String mfee=request.getParameter("mfee");
String ofee=request.getParameter("ofee");
try 
		{
                    System.out.println("**********");
                    Class.forName("com.mysql.jdbc.Driver");
                
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentadmission","root","root");
		        System.out.println("**********");
                    PreparedStatement query=con.prepareStatement("insert into fees(dept,year1,afee,tfee,lfee,sfee,pfee,hfee,bfee,mfee,ofee)values('"+dept+"','"+year1+"','"+afee+"','"+tfee+"','"+lfee+"','"+sfee+"','"+pfee+"','"+hfee+"','"+bfee+"','"+mfee+"','"+ofee+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Add Fees Details Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addfees.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addfees.jsp");
                    rd.include(request,response);
                }



%>