<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>admin login</title>

    <!-- Font Icon -->

    <script
      src="https://kit.fontawesome.com/45a812b4f2.js"
      crossorigin="anonymous"
    ></script>
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
    <div class="main">
      <!-- Sing in  Form -->
      <section class="sign-in">
        <div class="container">
          <div class="signin-content">
            <div class="signin-image">
              <figure>
                <img src="images/Ho1.png" alt="sing up image" />
              </figure>
            </div>

            <div class="signin-form">
              <h2 class="form-title">Admin Login</h2>
              <form method="POST" action="alogin" class="register-form" id="login-form">
                <div class="form-group">
                  <label class="label" for="your_name"
                    ><i class="fa-sharp fa-solid fa-signature fa-lg"></i
                  ></label>
                  <input
                    type="text"
                    name="ayour_name"
                    id="your_name"
                    placeholder="Your User Name"
                    style="font-family: poppins, sans-serif"
                  />
                </div>
                <div class="form-group">
                  <label for="your_pass"
                    ><i class="fa-sharp fa-solid fa-lock fa-lg"></i
                  ></label>
                  <input
                    type="password"
                    name="ayour_pass"
                    id="your_pass"
                    placeholder="Password"
                    style="font-family: poppins, sans-serif"
                  />
                </div>
                <div class="form-group">
                  <input
                    type="checkbox"
                    name="remember-me"
                    id="remember-me"
                    class="agree-term"
                  />
                  <label for="remember-me" class="label-agree-term"
                    ><span><span></span></span>Remember me</label
                  >
                </div>
                <div class="form-group form-button">
                  <input
                    type="submit"
                    name="signin"
                    id="signin"
                    class="form-submit"
                    value="Log in"
                    style="font-family: poppins, sans-serif"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>

    <!-- JS -->
  </body>
</html>
    