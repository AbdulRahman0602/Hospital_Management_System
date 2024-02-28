<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Login Page</title>
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
        .card{
            padding: 10px;
            margin-left:50px;
            margin-right: 30px;
            margin-bottom: 30px;
            display: inline-block;
            border-radius: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
            box-shadow: 5px 5px #88888860;
            /* box-shadow: #CEE5D0; */
        }
        .card:hover {
    		background-color: #e3f2fd;
        }
        .card-body a{
        	margin-left: 40px;
        }
    </style>
</head>

<body>
        <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <a href="index.html" class="y">
                    <img style="margin: 10px;" class="logo" border="0" alt="iLearn logo" src="hms.png" width="40"
                        height="40">
                </a>
                <a style="margin-left:10px" class="navbar-brand mb-0 h1" href="index.html">HMS</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
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
                            <a class="btn btn-outline-info" href="contact.html" target="_blank">Contact Us</a>
                        </li>

                    </ul>

                    <form class="d-flex" action="NursePatientDetails.jsp">
                        <input class="form-control me-2" type="number" placeholder="Search" aria-label="Search"
                            name="id">
                        <input class="btn btn-outline-success" type="submit" value="Search">
                   </form>

                </div>
            </div>
        </nav>
        <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. VISHWAJEET TAKLE<BR> M.B.B.S, M.S, NEUROLOGIST</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. MOHD ABDUL WAHED<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR.SUMITT MANTE<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. ARYAN GUPTA<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. ARJAN SINGH JOHAR<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. SAIM AHMED QUADRI<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;">
        <img src="doctor.png" class="card-img-top" alt="..." width="300px" height="190px">
        <div class="card-body" >
          <h5 align = "center" class="card-title">DOCTOR</h5>
          <p align = "center" class="card-text">DR. ANSAR SIDDIQUI<BR>M.B.B.S, M.D</p>
          <a href="Appointment.jsp" class="btn btn-outline-success">Add Appointment</a>
        </div>
      </div>
</body>

</html>