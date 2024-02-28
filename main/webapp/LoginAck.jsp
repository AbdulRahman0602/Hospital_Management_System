<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Acknowledgment Page</title>
</head>
<body>
	<%
	try {
		String sql;
		Class.forName("com.mysql.jdbc.Driver");  
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
		Statement stmt=connection.createStatement(); 
		String name=request.getParameter("username");
		String pass=request.getParameter("password");
		//String user = request.getParameter("UserType");
		sql = "select * from employee where username=? and password=?";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setString(1, name);
		stm.setString(2, pass);	
		ResultSet rs=stm.executeQuery();
		if(rs.next())
		{
			%>
			<script>alert("Sucessfully Login");
			</script>
			<%
			if(name.contains("dr")){
				session.setAttribute("name", name.split("@", 5)[0].substring(0,1).toUpperCase()+name.split("@")[0].substring(1));
				RequestDispatcher rd=request.getRequestDispatcher("DoctorDashboard.jsp");
				rd.include(request,response);
				
			}
			else if(name.contains("nurse")){
				session.setAttribute("name", name.split("@", 5)[0].substring(0,1).toUpperCase()+name.split("@")[0].substring(1));
				RequestDispatcher rd=request.getRequestDispatcher("NurseDashboard.jsp");
				rd.include(request,response);
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
				rd.include(request,response);
				
			}
		}
		else
		{
			//out.println("<b>Invalid username and password !</b><br>");
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			rd.include(request,response);
			%>
			<script>alert("Invalid Details!!")</script>
			<%
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>
</body>
</html>