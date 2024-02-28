<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Medical Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .nav-item {
            margin: 5px;
        }
        .xyz {
            width: 250px;
            height: 100px;
            margin: auto;
        }
        button {
            margin: 10px
        }
        a {
            text-decoration: none;
        }
        .xyz{
		padding-top: 100px
		}
		.a{
			text-align: center;
		}
		body {
  height: 100vh;
  width: 100%;
  margin: 0;
  background: rgb(63, 137, 251);
  background: radial-gradient(circle, #81C6E8, #5F9DF7 100%);
  color: rgba(63, 137, 251, 1);
  
}
html,
body {
  max-width: 100%;
  overflow-x: hidden;
  background: linear-gradient(-135deg, #5837D0, #5DA7DB)
}
a {
  text-decoration: none;
  color: rgba(63, 137, 251, 1);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
}
ul {
  list-style: none;
}
a,
button {
  font-weight: bold;
}
/* navbar */
.navbar {
  background-color: #FFFFFF;
  padding-top: 10px;
  border-top: 5px solid;
  border-image: -webkit-linear-gradient(rgba(0, 117, 255, 1), rgba(0, 255, 235, 1));
  padding-bottom: 10px;
}
.flex {
  display: flex;
  justify-content: center;
}
.flex .item {
  text-align: center;
  justify-content: center;
  font-size: 18px;
  margin-left: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
}
.item a:hover {
  background: -webkit-linear-gradient(rgba(0, 117, 255, 1), rgba(0, 255, 235, 1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-decoration: underline;
}
.hover-underline {
  display: inline-block;
  position: relative;
  color: #0087ca;
}
.hover-underline:after {
  content: '';
  position: absolute;
  width: 100%;
  transform: scaleX(0);
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: #0087ca;
  transform-origin: bottom right;
  transition: transform 0.25s ease-out;
}
.hover-underline:hover:after {
  transform: scaleX(1);
  transform-origin: bottom left;
}
/* navbar */
.container {
  padding: 20px;
  text-align: center;
  border-radius: 15px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  /* background-color:rgba(255,255,255,0.13); */
  background-color: #FFFFFF;
  padding: 20px;
  width: 60%;
  margin: 0 auto;
  margin-top: 70px;
  margin-bottom: 150px;
  padding-bottom: 30px;
}
.backBtn {
  display: inline-block;
  position: relative;
  margin-top: 15px;
  margin-right: 15px;
}
.backBtn:hover {
  opacity: 0.5;
}
.head2 {
  font-size: 24px;
  font-weight: bold;
}
#names {}
h1 {
  display: inline-block;
  font-size: 42px;
  background: -webkit-linear-gradient(rgba(0, 117, 255, 1), rgba(0, 255, 235, 1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-bottom: 30px;
}
.button_slide {
  color: rgba(63, 137, 251, 1);
  border: 2px solid rgba(0, 255, 235, 1);
  border-radius: 20px;
  padding: 18px 36px;
  display: inline-block;
  font-family: 'Montserrat', sans-serif;
  font-size: 14px;
  letter-spacing: 1px;
  cursor: pointer;
  box-shadow: inset 0 0 0 0 rgba(63, 137, 251, 1);
  -webkit-transition: ease-out 0.4s;
  -moz-transition: ease-out 0.4s;
  transition: ease-out 0.4s;
}
.slide_left:hover {
  box-shadow: inset 0 0 0 50px rgba(63, 137, 251, 1);
  color: #FFFFFF;
}
.butn {
  background-color: transparent;
  margin-top: 10px;
  margin-left: 10px;
  margin-right: 10px;
}
/* trial */
/* footer */
/*footer{
  width: 100%;
  /* margin-top: 100px; */
/*padding: 20px;
  line-height: 1.5;
  font-weight:bold;
  text-align: center;
  background-color: #FFFFFF;
  position: relative;
  bottom: 0;
}*/
#names {
  background: -webkit-linear-gradient(rgba(0, 117, 255, 1), rgba(0, 255, 235, 1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
/* text input */
.input-box {
  width: 200px;
  margin-top: 10px;
  margin: 30px auto;
}
.input-box label {
  margin-right: 111px;
  font-weight: 600;
}
.form-input {
  margin-bottom: 10px;
  padding: 5px;
  width: 200px;
  border: 0.5px solid rgba(0, 255, 235, 1);
}
.form-input:hover {
  border: 1px solid rgba(0, 117, 255, 1);
}
a .btn{
	margin: 30px;
	border-radius: 25px
}
		
    </style>

</head>
<body>

	<%
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
		Statement stmt=connection.createStatement();
		int name=Integer.parseInt(request.getParameter("id"));
		String sql="Select patient_detail.pid, pname, phoneno,Age from patient_detail where patient_detail.pid=?";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setInt(1, name);
		ResultSet rs=stm.executeQuery();
		
	if(rs.next()){
		int pid=rs.getInt("pid");
		String pname=rs.getString("pname");
		String phoneno=rs.getString("phoneno");
		int age=rs.getInt("Age");
	%>
	
	<div class = "container" >
    <table class="table table-bordered">
        <thead>
          <tr>
            <th style="text-align: center;" colspan="4"><h3>PATIENT DETAILS</h3></th>
            
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">Patient ID</th>
            <td><%=pid %></td>
            <th>Patient Name</th>
            <td><%=pname %></td>
          </tr>
          <tr>
          <tr>
            <th scope="row">Phone No.</th>
            <td><%=phoneno %></td>
            <th>Age</th>
            <td><%=age%></td>
          </tr>
        </tbody>
      </table>
    <!-- </div> -->
    <%
	}
		
		//response.sendRedirect("NurseLogin.jsp");

	
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
	<!--<div style="margin: 70px;">  -->
        <table class="table table-bordered">
            <thead>
              <tr>
                <th style="text-align: center;" colspan="7"><h3>MEDICAL HISTORY</h3></th>
              </tr>
            </thead>
            <tbody>
            <%
            try
            {
            	Class.forName("com.mysql.jdbc.Driver");
        		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","2009");
        		Statement stmt=connection.createStatement();
        		int name=Integer.parseInt(request.getParameter("id"));
        		String sql="select bp,bs,patient_doctor.Visit,Prescription,dis_detail from patient_doctor,patient_nurse where patient_doctor.pid=patient_nurse.pid and patient_nurse.pid =? and  patient_doctor.Visit=patient_nurse.Visit";
        		PreparedStatement stm=connection.prepareStatement(sql);
        		stm.setInt(1, name);
        		ResultSet rs=stm.executeQuery();
            	
            %>
            
              <tr>
                <th scope="row">Blood Pressure</th>
                <th scope="row">Blood Sugar</th>
                <th scope="row">Visit</th>
                <th scope="row">Prescription</th>
                <th scope="row">Disease Details</th>
              </tr>
              <%
              while(rs.next())
              {
            	 %>
            	 <tr> 
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
              </tr>
            </tbody>
            <% 
              }
              %>
          </table>  
    </div>
    <%
        	}
        		
        		//response.sendRedirect("NurseLogin.jsp");

        	
        	catch(SQLException e){
        		e.printStackTrace();
        	}
        	
            %>

</body>
</html>