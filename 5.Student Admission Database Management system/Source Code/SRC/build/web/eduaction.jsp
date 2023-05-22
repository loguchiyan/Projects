<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%

String user=request.getParameter("user");
String reg=request.getParameter("reg");
String hschl=request.getParameter("hschl");
String hroll=request.getParameter("hroll");
String hmedium=request.getParameter("hmedium");
String hgrup=request.getParameter("hgrup");
String hper=request.getParameter("hper");
String hyear=request.getParameter("hyear");
String sschl=request.getParameter("sschl");
String sroll=request.getParameter("sroll");
String smedium=request.getParameter("smedium");
String sper=request.getParameter("sper");
String syear=request.getParameter("syear");
String ug=request.getParameter("ug");
String uclg=request.getParameter("uclg");
String udept=request.getParameter("udept");
String uper=request.getParameter("uper");
String pclg=request.getParameter("pclg");
String pdept=request.getParameter("pdept");
String pper=request.getParameter("pper");

try{
    
    
    Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentadmission","root","root");
	 PreparedStatement query=con.prepareStatement(" insert into education(reg,user,hschl,hroll,hmedium,hgrup,hper,hyear,sschl,sroll,smedium,sper,syear,ug,uclg,udept,uper,pclg,pdept,pper)"
                 + "values('"+reg+"','"+user+"','"+hschl+"','"+hroll+"','"+hmedium+"','"+hgrup+"','"+hper+"','"+hyear+"','"+sschl+"','"+sroll+"','"+smedium+"','"+sper+"','"+syear+"','"+ug+"','"+uclg+"','"+udept+"','"+uper+"','"+pclg+"','"+pdept+"','"+pper+"')");
               System.out.println(query);
              query.executeUpdate();
               System.out.println(query);
               out.println("<script>"); 			
                    out.println("alert(\"Add Education Details Successfully\")");
                    out.println("</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("education.jsp");
                    rd.include(request,response);

}
catch(Exception e){
     out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("education.jsp");
                    rd.include(request,response);
    
}





%>
