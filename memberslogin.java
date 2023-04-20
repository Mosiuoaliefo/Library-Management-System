package pac;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class memberslogin extends HttpServlet 
{
     
 public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();       
        //Register the MYSQL DB driver
        String url = "jdbc:mysql://localhost:3306/botho_university_lesotho";
        String user = "root";
        String Password ="";
        
        String username= req.getParameter("username");
        String password = req.getParameter("password");
        Connection conn=null;
        int z=0;
        try
        {
            //register mysql driver
            Class.forName("com.mysql.cj.jdbc.Driver");   //loading the driver
              
            //creating connection
            conn = DriverManager.getConnection(url, user, Password);   
        
            java.sql.Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from member where username='"+username+"' and password='"+password+"'");
            while(rs.next())
            {
                z =1;
                HttpSession session=req.getSession();
                session.setAttribute("username",username );
               RequestDispatcher ds=req.getRequestDispatcher("memberhome.jsp");
               ds.forward(req, res);
               
               // RequestDispatcher ds=req.getRequestDispatcher("display.java");
              // ds.forward(req, res);
            }
            if(z==0)
            {
             // out.println("password mismatch");
                RequestDispatcher ds=req.getRequestDispatcher("loginpage.jsp");
               ds.forward(req, res);
            }
                     
        }
        catch(Exception e)
        {
            System.out.println(e);

        }
        
    }
}
