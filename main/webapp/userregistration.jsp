<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Acknowledgment</title>
</head>
<body>
<%
    try {
    	Class.forName("com.mysql.jdbc.Driver");  
		response.setContentType("text/html");
    	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
    	Statement stmt=connection.createStatement();
    	int pid = Integer.parseInt(request.getParameter("pid"));
	    String pname =request.getParameter("pname");
	    int age = Integer.parseInt(request.getParameter("Age"));
	    String phoneno = request.getParameter("phoneno");
	    String disease =request.getParameter("disease");
	    int cid = Integer.parseInt(request.getParameter("Cid"));
	    String gender =request.getParameter("gender");
	    PreparedStatement stm=connection.prepareStatement("insert into patient_detail values(? ,?, ?, ?, ?, ?)");
		stm.setInt(1, pid);
		stm.setString(2, pname);
		stm.setInt(3, age);
		stm.setString(4, phoneno);
		stm.setInt(5, cid);
		stm.setString(6, gender);
		PreparedStatement stm1=connection.prepareStatement("insert into patient_disease values(? ,?)");
		stm1.setInt(1, pid);
		stm1.setString(2, disease);
		int i=stm.executeUpdate();
		int j=stm1.executeUpdate();// It returns 0 when the insertion operation is unsuccessful
		if(i!=0 && j!= 0)
		{
			
			%>
			<script>alert("Patient Added Successfully and has Patient ID "+<%=pid%>);
			</script>
			<%
			RequestDispatcher rd=request.getRequestDispatcher("userhomehtml.jsp");
			rd.include(request,response);
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