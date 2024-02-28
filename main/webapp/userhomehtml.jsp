<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Homepage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="av.css"> -->
<style>
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');
html {
  height: 100vh;
}

body {
  height: 50vh;
  width: 100%;
  margin-top: 200px;
  background: rgb(63,137,251);
background: radial-gradient(circle, #81C6E8, #5F9DF7 100%);
  color: rgba(63,137,251,1);
  font-family: 'Montserrat', sans-serif;
}

html, body {
  max-width: 100%;
  overflow-x: hidden;
}
a{
  text-decoration: none;
  color: rgba(63,137,251,1);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

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
}

#names{

}


  h1{
    display: inline-block;
  font-size: 42px;
  background: -webkit-linear-gradient(rgba(0,117,255,1), rgba(0,255,235,1));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}



.button_slide {
  color: rgba(63,137,251,1);
  border: 2px solid rgba(0,255,235,1);
  border-radius: 20px;
  padding: 18px 36px;
  display: inline-block;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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

<!-- <nav class="navbar">
  <div class="flex">
    <div class="item hover-underline"><a href="index.html">Home</a></div>
    <div class="item hover-underline"><a href="#">sample1</a></div>
    <div class="item hover-underline"><a href="#">sample2</a></div>
    <div class="item hover-underline"><a href="#">sample3</a></div>
  </div>
</nav> -->




  <div class="container background">
    <h1>Welcome<br> <%=session.getAttribute("user") %></h1>
    <p class="head2">Please select an option:</p>
    <a href="userappoimenthtml.jsp"><button type="button" class="btn btn-outline-success btn-lg" style="border-radius:20px; margin-right:20px;">Take Appoiment</button>
    <a href="medicalrecord1.jsp"><button type="button" class="btn btn-outline-success btn-lg" style="border-radius:20px; margin-left:20px;">Medical Record</button><br>
    <br><a href="userregistrationhtml.jsp"><button type="button" class="btn btn-outline-success btn-lg" style="border-radius:20px;">Registration</button>
   
  </div>
</body>
</html>
