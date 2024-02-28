<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact US</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://kit.fontawesome.com/f75d9f1071.js" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
<style>
	
.x {
    text-align: center;
}

.y {
    padding-right: 10px;
    padding-bottom: 5px;
}

.my-4 {
    width: 500px;
    margin: auto;
}
#abc {
    display: block;
    margin: auto;
}
.nav-item{
			margin : 5px;
		}
</style>
</head>
<body>
	<nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a href="index.html" class="y">
                <img style = "margin: 10px;" class="logo" border="0" alt="iLearn logo" src="hms.png" width="40" height="40">
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
                        <a class="btn btn-outline-info" aria-current="page" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-info" href="about.html" target="_blank">About</a>
                    </li>
                
                    <li class="nav-item">
                        <a class="btn btn-outline-info active" href="contactus.jsp" target="_blank">Contact Us</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
	<div class="y">
        <div class="container my-4">
            <h2 class="x">Contact Us</h2>
            <form action="contactus.jsp" method="post">
                <div class="form-group">
                    <label for="exampleFormControlInput1">Email address</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1"
                       name="email" placeholder="name@example.com">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Name</label>
                    <input type="text" name="name" class="form-control" id="exampleFormControlInput1"
                        placeholder="John">
                </div>

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Tell us about yourself</label>
                    <textarea class="form-control" name="urself" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea2">Feedback</label>
                    <textarea class="form-control" name="feedback" id="exampleFormControlTextarea2" rows="3"></textarea>
                </div>
                <div>
                    <button id="abc" type = "submit" class="btn btn-primary">Submit</button>
                </div>
            </form>

        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>
<%
    try {
    	Class.forName("com.mysql.jdbc.Driver");  
		response.setContentType("text/html");
    	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","abdulrahman");
    	Statement stmt=connection.createStatement();
    	String email = request.getParameter("email");
	    String name =request.getParameter("name");
	    String urself = request.getParameter("urself");
	    String fb = request.getParameter("feedback");
	    
	    PreparedStatement stm=connection.prepareStatement("insert into contactus values(? ,?, ?, ?)");
		stm.setString(1, email);
		stm.setString(2, name);
		stm.setString(3, urself);
		stm.setString(4, fb);
		
		int i=stm.executeUpdate();
		
		if(i!=0)
		{
			%>
			<script>
				alert("Successfully Submittd!!")
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