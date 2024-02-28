<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Registration Form</title>
<style>
        .x{
            margin-bottom: 20px;
        }
        .y{
            margin: 20px;
        }
    </style>
</head>
<body>
	<h1 style="Display:block ;text-align: center;">Patient Registration Form</h1> 
    <div align="center">
        <!-- <div> -->
        <form action = "SubmitRegistration.jsp">
            <div class="x">
                <label>Patient ID:</label><input type="number" name="pid"><br>
            </div>
            <div class="x">
                <label>Patient Name:</label><input type="text" name="pname"><br>
            </div>
            <div class="x">
                <label>Age:</label><input type="number" name="Age"><br>
            </div>
            <div class="x">
                <label>Weight:</label><input type="number" name="weight"><br>
            </div>
            <div class="x">
                <label>Gender:</label><input type="radio" name="gender" value="Male"><label>Male</label>
                <input type="radio" name="gender" value="Female"><label>FeMale</label>
                <input type="radio" name="gender" value="Other"><label>Other</label>
            </div>
            <div>
                <label>Address:</label><br>
                <textarea name="Address" cols="30" rows="10"></textarea>
            </div>
            <div class="x">
            
                <label>Disease:</label><input type="text" name="disease"><br>
            </div>
            <div>
                <label>Clink Id: </label><input type="number" name="Cid"><br>
            </div>
            <div>
                <button class="y" type="submit" name="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>