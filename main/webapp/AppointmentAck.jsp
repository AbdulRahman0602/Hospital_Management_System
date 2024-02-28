<%@page import="javax.script.ScriptContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.text.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.time.*" %>
    <%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Acknowledgement</title>
</head>
<body>
<%
try {
	int flag=0,flag1=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
	Statement stm=connection.createStatement(); 
	String date=request.getParameter("date");
	String start=request.getParameter("timest");
	String end=request.getParameter("timend");
	int Empid = Integer.parseInt(request.getParameter("Empid"));
	int pid = Integer.parseInt(request.getParameter("pid"));
	String sql = "SELECT Employee.Empid, starttime, endtime, dates, timest, timend FROM appointment, Employee where Appointment.Empid = Employee.Empid and Employee.Empid = ?";
	PreparedStatement pstmt=connection.prepareStatement(sql);
	pstmt.setInt(1, Empid);
	//String username = (String)session.getAttribute("name"); 
	start  = start +":00";
	end  = end +":00";
	ResultSet rs = pstmt.executeQuery();  
	
    while(rs.next()){
    	int i = rs.getInt("Empid");
    	String ds = rs.getString("starttime");
    	String de = rs.getString("endtime");
    	String ps = rs.getString("timest");
    	String pe = rs.getString("timend");
    	String pd = rs.getString("dates");
    	
    	String a= Character.toString(ds.charAt(0));
    	String b=Character.toString(ds.charAt(1));
    	String ab=a+b;
    	int iab=Integer.parseInt(ab);
    	
    	String a1= Character.toString(de.charAt(0));
    	String b1=Character.toString(de.charAt(1));
    	String ab1=a1+b1;
    	int iab1=Integer.parseInt(ab1);
    	
    	String a2= Character.toString(start.charAt(0));
		String b2=Character.toString(start.charAt(1));
		String ab2=a2+b2;
		int iab2=Integer.parseInt(ab2);

		String a3= Character.toString(end.charAt(0));
		String b3=Character.toString(end.charAt(1));
		String ab3=a3+b3;
		int iab3=Integer.parseInt(ab3);
		
		if(iab<=iab2 && iab3<=iab1)
		{
			flag=0;
		}
		else
		{
			flag=1;
		}
		if(start.equals(ps)&& end.equals(pe) && date.equals(pd))
		{
			flag=2;
		}
		
	}
		//out.print(flag);
	if(flag==2){
		%>
			<script>alert("slot already booked");
			window.location = 'NurseDashboard.jsp';</script>
		<%
	}
	else if(flag==1)
	{
		%>
			<script>alert("slot outside docters timings");
			window.location = 'NurseDashboard.jsp';</script>
		<%
	}
	else
	{
		String sql1 ="insert into appointment (Empid ,pid ,timest,timend,dates) values(?,?,?,?,?)";
	    PreparedStatement stmt=connection.prepareStatement(sql1);
		stmt.setInt(1, Empid);
		stmt.setInt(2, pid);
		stmt.setString(3,start);
		stmt.setString(4,end);
		stmt.setString(5,date);
		stmt.executeUpdate();
		%>
		<script>alert("slot booked successfully");
		window.location = 'NurseDashboard.jsp';</script>
		<%  
	}	

} catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>