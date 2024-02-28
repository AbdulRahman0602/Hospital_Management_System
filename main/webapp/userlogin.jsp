<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		sql = "select * from users where uname=? and password=?";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setString(1, name);
		stm.setString(2, pass);	
		ResultSet rs=stm.executeQuery();
		if(rs.next()){
			
			session.setAttribute("user", rs.getString(1));
			%>
			<script>
			
			alert("login Sucessfully");
			window.location = 'userhomehtml.jsp';
			</script>
<% 		}
		else
		{
			%>
			<script>alert("Invalid Details!!");
			window.location = 'userloginhtml.jsp';
			</script>
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