import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		out.print("Working if it collect the request.");
		
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String dob = request.getParameter("dob");
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		String email = request.getParameter("email");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");//driver class load driver and register
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","Sujit@123");//connect tp database with server
			
			PreparedStatement ps= con.prepareStatement("insert into users(fname,lname,dob,uname,pass,email) values(?,?,?,?,?,?) ");//insert data 
			ps.setString(1, fname);//positional parameter
			ps.setString(2, lname);
			ps.setString(3, dob);
			ps.setString(4, uname);
			ps.setString(5, pass);
			ps.setString(6, email);
			
			int rowCount = ps.executeUpdate();
			dispatcher = request.getRequestDispatcher("register.jsp");
			if(rowCount > 0) {
				request.setAttribute("status","success");
			}
			else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request,response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
