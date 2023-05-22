/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java.2
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class FarmerRegistration extends HttpServlet {

Connection con=null;
    Statement st=null,st1=null;
    ResultSet rs=null;
    RequestDispatcher rd=null;
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
 
            
            HttpSession sn = req.getSession(true);
     
	   String fullname= req.getParameter("fullname");
            String username= req.getParameter("username");
          String password= req.getParameter("password");
        	String age= req.getParameter("age");
		String mobile= req.getParameter("mobile");
		String farmingarea= req.getParameter("farmingarea");
              
        	RequestDispatcher rd;
         Random generator1 = new Random();
            int seckey = generator1.nextInt(1000000);
            
	try {
		
		
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodnetworkblockchain","root","root");
           
            st1 = con.createStatement();
          int add=st1.executeUpdate("insert into farmerdetails values('"+fullname+"','"+username+"','"+password+"','"+age+"','"+mobile+"','"+farmingarea+"')");
        rd=req.getRequestDispatcher("success.jsp");
            rd.forward(req,res);
           
        } catch(Exception e2)
         {
            System.out.println("Exception : "+e2.toString());
        }
    }
}