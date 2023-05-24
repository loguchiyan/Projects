/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pro;

import au.com.bytecode.opencsv.CSVReader;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Upload extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            ServletContext sc=request.getSession().getServletContext();
            MultipartRequest m=new MultipartRequest(request,sc.getRealPath("dataset"));
            File file=m.getFile("file");
            String fname=file.getName();
            String csvFile =sc.getRealPath("dataset")+"\\"+fname;
            CSVReader reader = null;
            Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/risk_prediction","root","root");
            
            PreparedStatement paa= con.prepareStatement("truncate table dataset1");
            paa.executeUpdate();
            
            reader = new CSVReader(new FileReader(csvFile));
            String[] line;
            while ((line = reader.readNext()) != null)
            {
                
                String query="insert into dataset1(id,disease,drugs,symp,symp1,symp2,symp3,lin)values('"+line[0]+"','"+line[1]+"','"+line[2]+"','"+line[3]+"','"+line[4]+"','"+line[5]+"','"+line[6]+"','"+line[7]+"') ";
                PreparedStatement ps=con.prepareStatement(query);
                ps.executeUpdate();
                
            }
            out.println("<script>"
                    +"alert('Uploaded Successfully')"
                    +"</script>");
            RequestDispatcher rd = request.getRequestDispatcher("UploadDataSet.jsp");
            rd.include(request, response); 
        } catch (SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
