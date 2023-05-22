<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%

String sno=request.getParameter("sno");


 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/block","root","root");
Statement st=null,st1=null;
               ResultSet rs=null;
            int id1=0;
            String prevdata="";
            st = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from blockchain");
            System.out.println(rs1);
            while(rs1.next()) {
            id1=rs1.getInt(1)+1;
            prevdata=rs1.getString(2);
            System.out.println(prevdata);
            }
            java.util.Date date = new java.util.Date() ;
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm") ;
			dateFormat.format(date);
			System.out.println(dateFormat.format(date));
                 String data1 = prevdata+dateFormat.format(date);
			            
                 
                 
			            StringBuffer sb=new StringBuffer();
			            MessageDigest md = MessageDigest.getInstance("MD5");
				        md.update(String.valueOf(data1).getBytes());
				 
				        byte byteData[] = md.digest();
				 
				        //convert the byte to hex format method 1
				        
				        for (int i = 0; i < byteData.length; i++) {
				         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				        }
                                        
                                File file = new File("C://blockchain//OriginalHashblock"+id1+".txt");
                                System.out.println(file);
      FileWriter writer = new FileWriter(file);
writer.write(sb.toString());
writer.close();        
System.out.println("Hashkey:"+sb.toString());
  
                    
                    PreparedStatement query=con.prepareStatement("Update cart set hashkey='"+sb.toString()+"' where sno='"+sno+"' ");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update original Hashkey Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("aneworder.jsp");
                    rd.include(request,response);		
		
                

    


%>