<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>success</title>
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: sans-serif;
      }
      body {
        background-color: #ffc038;
      }

      .card {
        background-color: #ffaf38;
        position: relative;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
      }

      .grid {
        display: grid;
        grid-template-rows: 1fr;
        grid-template-columns: 600px 600px;
        align-items: center;
        height: 35rem;
        justify-items: end;
      }

      .error {
        z-index: 1;
        position: relative;
      }

      .error span {
        font-size: 90px;
        color: #150035;
        font-weight: 900;
        white-space: pre-line;
        line-height: 1;
        letter-spacing: 3px;
        text-shadow: 1px 7px 1px #fff;
      }
      .error p {
        color: #000000;
        white-space: pre-line;
        padding-top: 25px;
        font-size: 15px;
        line-height: 1.3;
      }
      .img {
        width: 800px;
      }
      .img img {
        width: 80%;
        margin-left: 100px;
      }
      button {
        width: 100px;
        padding: 8px;
        font-size: 18px;
        font-weight: 700;
        margin-top: 25px;
        border: none;
        background-color: #150035;
        color: #ffb000;
        position: relative;
      }
      button::after {
        content: "";
        width: 96px;
        height: 35px;
        border: 3px solid #fff;
        position: absolute;
        top: 7px;
        left: 5px;
        z-index: -1;
      }
    </style>
  </head>
  <body>
    <div class="card">
      <div class="grid">
        <div class="error">
          <span style="font-family: poppins, sans-serif">Sign Up Success </span>
          <p style="font-family: poppins, sans-serif">
           
          </p>
          <a href="login.jsp">
            <input
              name="signup"
              id=""
              class="admin"
              value="Login"
              style="font-family: poppins, sans-serif"
          /></a>
        </div>
        <div class="img">
          <img src="images/Ho1.png" />
        </div>
      </div>
    </div>
  </body>
</html>
