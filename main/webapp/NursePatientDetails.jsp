<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Patient Details</title>
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
		html {
  height: 100vh;
}
        .nav-item {
            margin: 5px;
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
		String sql="Select patient_nurse.pid, pname, phoneno, disease, Age,temp,  Weight, bp, bs, patient_nurse.visit from patient_nurse, patient_detail, patient_disease where patient_nurse.pid =  patient_detail.pid and patient_detail.pid = patient_disease.pid and patient_detail.pid = ? and patient_nurse.visit = (select max(patient_nurse.visit) from patient_nurse)";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setInt(1, name);
		ResultSet rs=stm.executeQuery();
		
	if(rs.next()){
		int pid=rs.getInt("pid");
		String pname=rs.getString("pname");
		String phoneno=rs.getString("phoneno");
		String disease=rs.getString("disease");
		int age=rs.getInt("Age");
		int wei=rs.getInt("weight");
		int temp=rs.getInt("temp");
		String bp=rs.getString("bp");
		int bs=rs.getInt("bs");
		String visit = rs.getString("visit");
		//out.println(cid+"     "+cname+"         "+caddress);
	%>
	<nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a href="index.html" class="y">
                <img style="margin: 10px;" class="logo" border="0" alt="iLearn logo" src="hms.png" width="40"
                    height="40">
            </a>
            <a style="margin-left:10px" class="navbar-brand mb-0 h1" href="index.html">HMS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="btn btn-outline-info active" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-info" href="about.html" target="_blank">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="btn btn-outline-info" href="contact.html" target="_blank">Contact Us</a>
                    </li>

                </ul>

                <form class="d-flex" action="NursePatientDetails.jsp">
                    <input class="form-control me-2" type="number" placeholder="Search" aria-label="Search" name="id">
                    <input class="btn btn-outline-success" type="submit" value="Search">
                </form>

            </div>
        </div>
    </nav>
	<div class = "container">
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
            <th>Disease</th>
            <td><%=disease%></td>
          </tr>
          <tr>
            <th scope="row">Age</th>
            <td><%=age %></td>
            <th>Weight</th>
            <td><%=wei%></td>
          </tr>
          <tr>
            <th scope="row">Blood Pressure</th>
            <td><%=bp%></td>
            <th>Blood Sugar</th>
            <td><%=bs%></td>
          </tr>
        </tbody>
      </table>
    
        <table class="table table-bordered">
            <thead>
              <tr>
                <th style="text-align: center;" colspan="7"><h3>MEDICAL HISTORY</h3></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">Patient ID</th>
                <th scope="row">Patient Name</th>
                
                <th scope="row">Temperature</th>
                <th scope="row">Blood Pressure</th>
                <th scope="row">Blood Sugar</th>
                <th scope="row">Visit</th>
              </tr>
              <tr> 
                <td><%=pid %></td>
                <td><%=pname%></td>
                <td><%=temp%></td>
                <td><%=bp%></td>
                <td><%=bs%></td>
                <td><%=visit%></td>
              </tr>
            </tbody>
          </table> 
          <form action="NursePatientAdd.jsp">
    	<div class = "a">
        	<button id="abc" class="btn btn-primary" type = "submit">ADD / UPDATE DETAILS</button>
    	</div>
    </form> 
    </div>
    
<%
	}else{
		
		//response.sendRedirect("NurseLogin.jsp");
		%>
		<script>
			alert("Patient Had Not Been Register Till Yet !!");
			window.location = 'NurseLogin.jsp';
			</script>
		<%
	}
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
</body>
</html>