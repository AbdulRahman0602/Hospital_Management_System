<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
 @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');
html {
  height: 100vh;
}
body {
  height: 100vh;
  width: 100%;
  margin: 0;
  background: rgb(63,137,251);
  background: radial-gradient(circle, #81C6E8, #5F9DF7 100%);
  color: rgba(63,137,251,1);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
html, body {
  max-width: 100%;
  overflow-x: hidden;
}
a{
  text-decoration: none;
  color: rgba(63,137,251,1);
  font-family: 'Montserrat', sans-serif;
}
ul{
list-style: none;
}
 a,button{
  font-weight: bold;
}
/* navbar */
.navbar{
background-color: #FFFFFF;
padding-top:10px;
border-top: 5px solid;
border-image:-webkit-linear-gradient(rgba(0,117,255,1), rgba(0,255,235,1));
padding-bottom:10px;
}
.flex{
  display: flex;
  justify-content:center;
}
.flex .item{
  text-align: center;
  justify-content:center;
  font-size: 18px;
  margin-left:50px;
  padding-top: 10px;
  padding-bottom: 10px;
}
.item a:hover{
  background: -webkit-linear-gradient(rgba(0,117,255,1), rgba(0,255,235,1));
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
.container{
  padding: 20px;
  text-align: center;
  border-radius: 15px;;
  /* background-color:rgba(255,255,255,0.13); */
  background-color: #FFFFFF;
  padding: 20px;
  width: 50%;
  margin:0 auto;
 margin-top: 100px;
  margin-bottom: 150px;
  padding-bottom:50px;
}
.backBtn{
  display:inline-block;
  position:relative;
  margin-top: 15px;
  margin-right: 15px;
}
.backBtn:hover{
  opacity: 0.5;
}
.head2{
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 40px;
}
#names{
}
  h1{
    display: inline-block;
  font-size: 42px;
  background: -webkit-linear-gradient(rgba(0,117,255,1), rgba(0,255,235,1));
  -webkit-background-clip: text;
  margin: 30px;
  -webkit-text-fill-color: transparent;
}
.button_slide {
  color: rgba(63,137,251,1);
  border: 2px solid rgba(0,255,235,1);
  border-radius: 20px;
  padding: 18px 36px;
  display: inline-block;
  font-family: 'Montserrat', sans-serif;
  font-size: 14px;
  letter-spacing: 1px;
  cursor: pointer;
  box-shadow: inset 0 0 0 0 rgba(63,137,251,1);
  -webkit-transition: ease-out 0.4s;
  -moz-transition: ease-out 0.4s;
  transition: ease-out 0.4s;
}
.slide_left:hover {
  box-shadow: inset 0 0 0 50px rgba(63,137,251,1);
  color:#FFFFFF;
}
.butn{
  background-color: transparent;
  margin-top: 10px;
  margin-left: 10px;
  margin-right: 10px;
}
#names{
  background: -webkit-linear-gradient(rgba(0,117,255,1), rgba(0,255,235,1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
/* text input */
.input-box{
  width:200px;
  margin-top: 10px;
  margin:0 auto;
}
.input-box label{
  margin-right: 111px;
  font-weight:600;
}
.form-input{
margin-bottom: 10px;
  padding:5px;
  width:200px;
  border:0.5px solid rgba(0,255,235,1);
}
.form-input:hover{
    border:1px solid rgba(0,117,255,1);
}

</style>
</head>
<body>
<div class="container background">
    
    <p class="head2">Please Enter The Patient ID:</p>
    <form method="post" action = "DoctorPatientDetail.jsp">
        <div class="txt_field">
          <input style = "margin-bottom: 30px" class="form-control me-2" type="number" placeholder="Enter Patient ID.." aria-label="Search" name="id">
          <input class="btn btn-outline-success" type="submit" value="Search">
        </div>
        
    </form>


</body>
</html>
