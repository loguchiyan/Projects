/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import algo.Stopwords;
import algo.TFIDFCalculator;
import algo.Stem;
import algo.CipherHelper;
import algo.replace;
import clo.SimpleFTPClient;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.security.SecureRandom;
//import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.Statement;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/Upload"})
public class Upload extends HttpServlet {
 
    Date dNow = new Date( );
    String fna="";
    String fdo="",content="";
        String image;
     String b1,b2,b3;
      SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
    int hashh;
     static String wordcon="";
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException 
{      
    hashh=0;
     List<String> ms = new ArrayList<String>();
        String finalimage = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(
                request);
        List<String> m = new ArrayList<String>();
        File savedFile;
        
        if (!isMultipart) {
           float dummy=(float)Math.log(0)+1;
           
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory)
;
            List items = null;

            try {
                items = upload.parseRequest(request);
                //System.out.println("items: "+items);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                List<String> al = new ArrayList<String>();

                String sss = "";
                FileItem item = (FileItem) itr.next();
                String value = "";
                String a[];
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    //System.out.println("name: "+name+'\n');
                    value = item.getString();
                    // System.out.println("value: "+value);
                    al.add(value);
                    for (int i = 0; i < al.size(); i++) {
                        sss += al.get(i);
                        System.out.println("is thios image" + sss);

     //System.out.println("the value sixcwe"+m.size());
                    }

                    a = sss.split("-");
                    for (int i = 0; i < a.length; i++) 
                    {

                        String am = a[i];
                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                        m.add(a[i]);
                    }
                } else {
                    
                    String itemName = item.getName();

                    String reg = "[.*]";
                    String replacingtext = "";
                    Pattern pattern = Pattern.compile(reg);
                    Matcher matcher = pattern.matcher(itemName);
                    StringBuffer buffer = new StringBuffer();

                    while (matcher.find()) {
                        matcher.appendReplacement(buffer, replacingtext);
                    }
                    int IndexOf = itemName.indexOf(".");
                    int Indexf = itemName.indexOf(".");
                    String domainName = itemName.substring(IndexOf);
                    
                    finalimage = buffer.toString() + domainName;
                    
                    System.out.println("hi..... " +domainName);
                    System.out.println("Final Image===" + finalimage);
                    ms.add(finalimage);
                    fna=buffer.toString();
                    fdo=domainName;
                    savedFile = new File("C:\\files\\" + finalimage);
                    try 
	                    {
	                    	item.write(savedFile);	                    	
	                    	
                    CipherHelper c= new CipherHelper();
                     File path = new File("C:\\files\\" + finalimage);
                     File path1 = new File("C:\\files\\enc\\" + finalimage);
                     
                   		
                    BufferedReader br= null;
                    
                    String sCurrentLine;
                    StringBuilder b= new StringBuilder();       
                    StringBuilder bb= new StringBuilder(); 
                    br = new BufferedReader(new FileReader("C:\\files\\" + finalimage));
                    while ((sCurrentLine = br.readLine()) != null) 
                    {    
                         bb.append(sCurrentLine);
                         String myAppContext = sCurrentLine;
                    }
                    String rep = bb.toString().replaceAll("( )+", " ");
                    content=rep;
                    String enc=c.cipher(m.get(1),content);                      
                    String renc=c.cipher(m.get(1),enc);
                    PrintWriter writer = new PrintWriter("C:\\files\\enc\\"+finalimage, "UTF-8");
                    writer.println(enc);
                    writer.close(); 
                    PrintWriter writer1 = new PrintWriter("C:\\files\\enc\\renc\\"+finalimage, "UTF-8");
                    writer1.println(renc);
                    writer1.close(); 
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
                 
            }
        }
        Stopwords ss=new Stopwords();
        LinkedList<String>stop=new LinkedList<String>();
        stop = ss.words(content);   
        String result1=""; 
        for(String zob : stop)
        {
            result1+=zob+" ";
        }
        result1 = result1.replaceAll("[,]"," "); 
        replace rep = new replace();
        result1=rep.remove(result1);
        Stem sn=new Stem();		
	LinkedList<String> kk=new LinkedList<String>();
	kk=sn.stem(result1);
        String result2 = kk.toString().replaceAll("[,]",""); 
        TFIDFCalculator tf = new TFIDFCalculator();
        tf.tf(kk, content);
        String strQuery = "";
          String tfvalue="";
        Set<String> unique = new HashSet<String>(kk);
        for (String key : unique)
            {                
                int zz=Collections.frequency(kk, key);
                tfvalue+=key+" : "+zz;
                tfvalue+=" \n";
            }
        System.out.println("Number of Frequent List");
        //System.out.println(tfvalue);
        PrintWriter out=response.getWriter();
        PreparedStatement ps,ps1; 
        System.out.println("completed.....");
        Random r = new Random(); 
        String xyz = Integer.toString(r.nextInt(10000));
	try 
        {            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/secureiot","root","root");
            PreparedStatement p1=con.prepareStatement("Select * from upload where image='"+image+"'");
      
      ResultSet rs1=p1.executeQuery();
      System.out.println(p1);
      if(rs1.next()){      
      out.println("<script>"
				+"alert('This file Is Duplicate ,ALready Exists')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/Upload.jsp");
		rd.include(request, response);
       } 
      else{
           PreparedStatement ps2=con.prepareStatement("insert into upload (reg,name,fkey,dates,trapdoor,type,image)values('" + m.get(0)+ "','" + m.get(1) + "','" + m.get(2) + "','" + m.get(3)+ "','" + m.get(4) + "','" + m.get(5) + "','" + ms.get(0) + "')");

            System.out.println(ps2);
            ps2.executeUpdate();
            
                out.println("<script>"
				+"alert('File uploaded successfully')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/Uploadrequest.jsp");
		rd.include(request, response); 
      }
        }
	catch(Exception e){ 
            out.println("<script>"
				+"alert('Try Again')"
				+"</script>");
		RequestDispatcher rd=request.getRequestDispatcher("/Uploadrequest.jsp");
		rd.include(request, response); 
        }
    }
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}