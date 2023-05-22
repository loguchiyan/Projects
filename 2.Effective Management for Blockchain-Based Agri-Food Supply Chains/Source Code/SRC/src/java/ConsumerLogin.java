import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
   public class ConsumerLogin extends HttpServlet {
    String username="";
    String password="";
    String type="";
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
        username = req.getParameter("username");
        password = req.getParameter("password");
     
	HttpSession sn = req.getSession(true);
     sn.setAttribute("username",username);
 
		RequestDispatcher rd = null;
        System.out.println("User login works"+type);        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodnetworkblockchain","root","password");
            st = con.createStatement();
            rs = st.executeQuery("select * from consumerdetails where username='"+username+"' && password='"+password+"'");
            if(rs.next()) {
                 rd=req.getRequestDispatcher("consumerpage.jsp");
           }
                else {

               rd=req.getRequestDispatcher("failure.jsp");
	       
            }		
     rd.forward(req,res);
              
         
        }
        catch(Exception e2)
         {
             
            System.out.println("Exception : "+e2.toString());
            
        }
    }
}