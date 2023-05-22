
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/owner"})
public class owner extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        try{ String name=request.getParameter("user");
            String pass=request.getParameter("pass"); 
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/policy","root","root");
            PreparedStatement ps=con.prepareStatement("select * from oreg where name='"+name+"' and password='"+pass+"' ");
            System.out.println(ps);
            ResultSet r=ps.executeQuery();
            if(r.next()){
                String id=r.getString("id");
                String mail=r.getString("mail_id");
                String pic=r.getString("profile");
                String sno=r.getString("sno");
                String email=r.getString("mail_id");
               System.out.println(id+" "+mail+" "+pic+" "+name);
                session.setAttribute("name",name);
                session.setAttribute("id", id);
                session.setAttribute("pic", pic);
                session.setAttribute("sno", sno); 
                session.setAttribute("mail", email);               
                
                System.out.println("pname"+name+"id"+id+"pic"+pic+"mail"+mail);
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Welcome  "+name+"\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("Owner_Home.jsp");
                rd.include(request, response);  
            }
            else{
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Invalid Login\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("ownerlogin.jsp");
            rd.include(request, response);  
            }
           
        }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Invalid Login\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Provider_Login.jsp");
            rd.include(request, response);  
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
        processRequest(request, response);
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
        processRequest(request, response);
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
