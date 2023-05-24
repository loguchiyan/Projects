/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pro;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
public class Patient_Record extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc=request.getSession().getServletContext();
        MultipartRequest gets=new MultipartRequest(request,sc.getRealPath("DataSets"));
        File f=gets.getFile("data");
        try
        {
            System.out.println("entering ........"); 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/risk_prediction","root","root");
            PreparedStatement query=con.prepareStatement("truncate table dataset");
            query.executeUpdate();
            con.setAutoCommit(false);
            PreparedStatement pstm = null ;
            FileInputStream input = new FileInputStream(f.getAbsolutePath());
            POIFSFileSystem fs = new POIFSFileSystem( input );
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            HSSFRow row; 
            for(int i=1; i<=sheet.getLastRowNum(); i++)
            {
                row = sheet.getRow(i);
                Double a = row.getCell(0).getNumericCellValue();
                Double b = row.getCell(1).getNumericCellValue();
                Double c = row.getCell(2).getNumericCellValue();
                Double d = row.getCell(3).getNumericCellValue();
                Double e = row.getCell(4).getNumericCellValue();
                Double f1 = row.getCell(5).getNumericCellValue();
                Double g = row.getCell(6).getNumericCellValue();
                Double h = row.getCell(7).getNumericCellValue();
                Double i1 = row.getCell(8).getNumericCellValue();
                Double j = row.getCell(9).getNumericCellValue();
                Double k = row.getCell(10).getNumericCellValue();
                Double l = row.getCell(11).getNumericCellValue();
                Double m = row.getCell(12).getNumericCellValue();
                Double n = row.getCell(13).getNumericCellValue();
                Double o = row.getCell(14).getNumericCellValue();
                String p = row.getCell(15).getStringCellValue();
                String cn = row.getCell(16).getStringCellValue();
                String sql = "insert into dataset values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f1+"','"+g+"','"+h+"','"+i1+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"','"+p+"','"+cn+"')";
                pstm = (PreparedStatement) con.prepareStatement(sql);
                pstm.execute();
                System.out.println("Import rows "+i);
                con.commit();
                pstm.close();
            }
            con.close();
            input.close();
            System.out.println("Success import excel to mysql table");
        }
        catch(SQLException | ClassNotFoundException | java.lang.NullPointerException e)
        {
            System.out.println(e);  
        }
        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Succesfully Updated for sql\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("UploadDataSet.jsp");  
        rd.include(request,response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
