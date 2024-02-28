<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <!-- Coding By CodingNepal - youtube.com/codingnepal -->
  <html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
    <title>Doctor Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        margin: 0;
        padding: 0;
        background: linear-gradient(-135deg, #5837D0, #5DA7DB);
        height: 100vh;
        overflow: hidden;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      }

      .center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 500px;
        background: white;
        border-radius: 10px;
        box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.05);
      }

      .center h1 {
        text-align: center;
        padding: 20px 0;
      }

      .center form {
        padding: 0 40px;
        box-sizing: border-box;
      }

      form .txt_field {
        position: relative;
        border-bottom: 2px solid #adadad;
        margin: 10px 0;
      }

      .txt_field input {
        width: 100%;
        padding: 0 5px;
        height: 40px;
        font-size: 16px;
        border: none;
        background: none;
        outline: none;
      }

      .txt_field label {
        position: absolute;
        top: 50%;
        left: 5px;
        color: #adadad;
        transform: translateY(-50%);
        font-size: 16px;
        pointer-events: none;
        transition: .5s;
      }

      .txt_field span::before {
        content: '';
        position: absolute;
        top: 40px;
        left: 0;
        width: 0%;
        height: 2px;
        background: #2691d9;
        transition: .5s;
      }

      .txt_field input:focus~label,
      .txt_field input:valid~label {
        top: -5px;
        color: #2691d9;
      }

      .txt_field input:focus~span::before,
      .txt_field input:valid~span::before {
        width: 100%;
      }

      .pass {
        margin: -5px 0 20px 5px;
        color: #a6a6a6;
        cursor: pointer;
      }

      .pass:hover {
        text-decoration: underline;
      }

      input[type="submit"] {
        width: 50%;
        height: 50px;
        border: 1px solid;
        background: #2691d9;
        border-radius: 25px;
        font-size: 18px;
        color: #e9f4fb;
        font-weight: 700;
        cursor: pointer;
        outline: none;
        margin-top: 30px;
      }

      input[type="submit"]:hover {
        border-color: #2691d9;
        transition: .5s;
      }

      .signup_link {
        margin: 30px 0;
        text-align: center;
        font-size: 16px;
        color: #666666;
      }

      .signup_link a {
        color: #2691d9;
        text-decoration: none;
      }

      .signup_link a:hover {
        text-decoration: underline;
      }

      label {
        font-size: 18px;
      }
    </style>
  </head>

  <body>
    <div class="center">
      <h1>Doctor's Appointment</h1>
      <form method="post" action = "AppointmentAck.jsp">
      <label>Doctor ID</label>
        <div class="txt_field">
          <input name="Empid" type="number" required>
          <span></span>
        </div>
        <label>Patient ID</label>
        <div class="txt_field">
          <input name="pid" type="number" required>
          <span></span>
        </div>
        <label>Date/Day</label>
        <div class="txt_field">
          <input name="date" type="date" required>
          <span></span>
        </div>
        <label>Time(Start)</label>
        <div class="txt_field">
          <input name="timest" type="time" required>
          <span></span>

        </div>
        <label>Time(End)</label>
        <div class="txt_field">
          <input name="timend" type="time" required>
          <span></span>
        </div>
		<div class="signup_link">
          <input align="center" class="btn submit-btn" type="submit" value="Login">
        </div>

      </form>
    </div>

  </body>

  </html>