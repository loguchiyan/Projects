package upload;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cloud.SimpleFTPClient;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public FileUpload() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	     	List<String> ms = new ArrayList<String>();
	        String finalimage = "";
	        boolean isMultipart = ServletFileUpload.isMultipartContent(
	                request);
	        List<String> m = new ArrayList<String>();
	        File savedFile;
	        
	        if (!isMultipart) {System.out.println("File Not Upload");} 
	        else 
	        {
	            FileItemFactory factory = new DiskFileItemFactory();
	            ServletFileUpload upload = new ServletFileUpload(factory);
	            List items = null;

	            try 
	            {
	                items = upload.parseRequest(request);
	            } catch (FileUploadException e) {
	                e.printStackTrace();
	            }
	            Iterator itr = items.iterator();
	            while (itr.hasNext()) 
	            {
	                List<String> al = new ArrayList<String>();

	                String sss = "";
	                FileItem item = (FileItem) itr.next();
	                String value = "";
	                String a[];
	                if (item.isFormField()) 
	                {
	                    String name = item.getFieldName();
	                    value = item.getString();
	                    al.add(value);
	                    for (int i = 0; i < al.size(); i++) 
	                    {
	                        sss += al.get(i);
	                        System.out.println("is thios image" + sss);
	                    }
	                    a = sss.split("-");
	                    for (int i = 0; i < a.length; i++) 
	                    {
	                        String am = a[i];
	                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
	                        m.add(a[i]);
	                    }
	                 } 
	                 else 
	                 {
	                    String itemName = item.getName();
	                    String reg = "[.*]";
	                    String replacingtext = "";
	                    Pattern pattern = Pattern.compile(reg);
	                    Matcher matcher = pattern.matcher(itemName);
	                    StringBuffer buffer = new StringBuffer();
	                    while (matcher.find()) 
	                    {
	                        matcher.appendReplacement(buffer, replacingtext);
	                    }
	                    int IndexOf = itemName.indexOf(".");
	                    int Indexf = itemName.indexOf(".");
	                    String domainName = itemName.substring(IndexOf);
	                    finalimage = buffer.toString() + domainName;
	                    System.out.println("Final Image===" + finalimage);
	                    ms.add(finalimage);
	                    savedFile = new File("C:\\files\\" + finalimage);
	                    try 
	                    {
	                    	item.write(savedFile);
	                    	
	                    	SimpleFTPClient client=new SimpleFTPClient();
	                    	client.setHost("ftp.drivehq.com");
	                    	client.setUser("davidmesiya");
	                    	client.setPassword("jesusdavidmesiya");
	                    	client.setRemoteFile(finalimage);
	                    	boolean log= client.connect(); 
	                    	if(log)
	                    	{  
	                	    try 
	                            {
	                            	System.out.println("this is log true block");
	                            	FileOutputStream fos = new FileOutputStream(new  File(item.getName()));
	                            	byte b[] = new byte[1024];
	                            	int c=0;
	                            	InputStream is = item.getInputStream();
	                            	while((c=is.read(b)) != 0)
	                            	{	
	                            		fos.write(b, 0, c);
	                            	}
	                            	fos.close();                	    	
	                            }
	                	    	catch(Exception e){
	                            System.out.println("this is log false block    "+e);
	                            }
	                        	PrintWriter out=response.getWriter();
	                            if (client.uploadFile(new File(item.getName())))
	                            {
	                                System.out.println("This is a true block");
	                                out.println("<script>"
	                        				+"alert('File uploaded successfully')"
	                        				+"</script>");
	                        		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
	                        		rd.include(request, response); 
	                            }
	                    	}
	                    } 
	                    catch (Exception e) 
	                    {
							e.printStackTrace();
						}
	                 }
	            }
	        } 
//	        PrintWriter out=response.getWriter();
//            out.println("<script>"
//    				+"alert('File uploaded successfully')"
//    				+"</script>");
//    		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
//    		rd.include(request, response);
		}
	}