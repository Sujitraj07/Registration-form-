<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
</head>
<body ><center>

	<h1>This is a Admin page</h1>
	<table border="1">
	<tr>
		<td>S No.</td>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Date Of Birth</td>
		<td>Username</td>
		<td>Password</td>
		<td>Email</td>
		<td>Delete</td>
		<td>Edit</td>		
	</tr>
	<%
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root","Sujit@123");
		
		 st=con.createStatement();
		 
		 String qry="select * from users";
		 rs=st.executeQuery(qry);
		 while(rs.next()){
			 %>
			 <tr>
			 	<td><%= rs.getString(1) %></td>
			 	<td><%= rs.getString(2) %></td>
			 	<td><%= rs.getString(3) %></td>
			 	<td><%= rs.getString(4) %></td>
			 	<td><%= rs.getString(5) %></td>
			 	<td><%= rs.getString(6) %></td>
			 	<td><%= rs.getString(7) %></td>
			 </tr>
			 <%
		 }
	}catch(Exception e){}
	
	%>
	</table>
	</center>
</body>
</html>