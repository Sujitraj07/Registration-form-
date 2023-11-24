import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root","Sujit@123");
			
			PreparedStatement ps = con.prepareStatement("select uname from users WHERE uname=? and pass=?");
			ps.setString(1, uname);
			ps.setString(2, pass);
			
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request,response);
			
			
		}else {
			
			out.println("<font color:red size=18>Login Failed!!<br>");
			dispatcher.forward(request,response);
		}
		
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
