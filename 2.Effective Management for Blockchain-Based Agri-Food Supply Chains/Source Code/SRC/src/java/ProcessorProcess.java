
   import java.io.*;
   import java.sql.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   import java.lang.*;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
  // import de.daslaboratorium.machinelearning.classifier.Classification;
///import de.daslaboratorium.machinelearning.classifier.Classifier;
public class ProcessorProcess extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
	        
                String username= sn.getAttribute("username").toString();
             String id= req.getParameter("id");
                
               String status="approved";
               
        	RequestDispatcher rd;

	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodnetworkblockchain","root","password");
           
            int id1=0;
            String prevdata="";
             st = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from blockchain");
            while(rs1.next()) {
            id1=rs1.getInt(1)+1;
            prevdata=rs1.getString(2);
            }
                
                
                 java.util.Date date = new java.util.Date() ;
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm") ;
			dateFormat.format(date);
			System.out.println(dateFormat.format(date));
                 String data1 = prevdata+dateFormat.format(date)+username;
			            
                 
                 
			            StringBuffer sb=new StringBuffer();
			            MessageDigest md = MessageDigest.getInstance("MD5");
				        md.update(String.valueOf(data1).getBytes());
				 
				        byte byteData[] = md.digest();
				 
				        //convert the byte to hex format method 1
				        
				        for (int i = 0; i < byteData.length; i++) {
				         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				        }
                                        
                                File file = new File("E://blockchain//block"+id1+".txt");
  
//Create the file
if (file.createNewFile())
{
    System.out.println("File is created!");
} else {
    System.out.println("File already exists.");
}
 
//Write Content
FileWriter writer = new FileWriter(file);
writer.write(sb.toString());
writer.close();        

  Statement st1 = con.createStatement();
          int add1=st1.executeUpdate("insert into blockchain values('"+id1+"','"+sb.toString()+"')");
            
            
            
            String query = "update cropdetails set processor = ?,hashkey1 = ? where id = ?";
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setString  (1, username);
     preparedStmt.setString(2, sb.toString());
      preparedStmt.setString(3, id);
      // execute the java preparedstatement
      preparedStmt.executeUpdate();
            
            rd=req.getRequestDispatcher("processorstatus.jsp");
            rd.forward(req,res);
        } catch(Exception e2) {
            // rd=req.getRequestDispatcher("failure.jsp");
            System.out.println(e2);
        }
    }
}