<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acknowledgement for Sign Up</title>
</head>
<body>
<%try {
		String sql;
		Class.forName("com.mysql.jdbc.Driver");  
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
		Statement stmt=connection.createStatement(); 
		String n=request.getParameter("name");
		String name=request.getParameter("username");
		String pass=request.getParameter("password");
		//String user = request.getParameter("UserType");
		sql = "insert into users values (?, ?, ?)";
		PreparedStatement stm=connection.prepareStatement(sql);
		
		stm.setString(1, n);
		stm.setString(2, name);
		stm.setString(3, pass);	
	
		int i=stm.executeUpdate();
		if(i!=0)
		{
			session.setAttribute("user", n);
			%>
			<script>
				alert("Successfully Submittd!!");
				window.location = 'userhomehtml.jsp';
			</script>
			<%
			
		}
		
    }
	 catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} 
	%>
</body>
</html>