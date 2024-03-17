<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Font awsem -->
    <script
      src="https://kit.fontawesome.com/45a812b4f2.js"
      crossorigin="anonymous"
    ></script>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- Mobile Metas -->
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="" type="image/x-icon" />

    <title>contact</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css1/bootstrap.css" />

    <!-- Custom styles -->
    <link href="css1/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css1/responsive.css" rel="stylesheet" />
  </head>

  <body>
    <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.html">
           
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class=""></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="">
                <a class="nav-link" href="index.jsp"
                  >Home <span class="sr-only">(current)</span></a
                >
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
              <li class="nav-item ">
                <a class="nav-link" href="check_out.jsp"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
              </li>
            </ul>
            <div class="user_option">
              <a href="login.jsp">
                <i class="fa-sharp fa-solid fa-right-from-bracket"></i>
              </a>
            </div>
          </div>
        </nav>
      </header>
      <!-- end header section -->
    </div>
    <!-- end hero area -->

    <!-- contact section -->

    <section class="contact_section">
      <div class="container px-0">
        <div class="heading_container"></div>
      </div>
      <div class="container container-bg">
        <div class="row">
          <div class="col-lg-7 col-md-6 px-0">
            <div class="map_container">
              <div class="map-responsive">
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.575840369662!2d80.03899797480867!3d6.821329093176449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2523b05555555%3A0x546c34cd99f6f488!2sNSBM%20Green%20University!5e0!3m2!1sen!2slk!4v1703943539057!5m2!1sen!2slk"
                  width="600"
                  height="300"
                  frameborder="0"
                  style="border: 0; width: 100%; height: 100%"
                  allowfullscreen
                ></iframe>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-5 px-0">
            <form method="POST" action="comment">
              <div>
                <input type="text" placeholder="uname" name="uname" />
              </div>
              <div>
                <input type="email" placeholder="uemail" name="uemail"/>
              </div>
              <div>
                <input type="text" placeholder="uphone" name="upho"/>
              </div>
              <div>
                <input type="text" class="message-box"name="comment" placeholder="Message" />
              </div>
              <div class="d-flex">
                <button>SEND</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!-- end contact section -->

<table class="table" style="width: 70%; text-align: center; margin-left: auto;  
margin-right: auto;">
  <thead>
    <tr>
      <th scope="col" colspan="4">Developers</th>
    </tr>
    <tr>
       <th scope="col" ><img src="images/myprofile1.jpg" style="width:60px; border-radius: 50%;" ></th>
      <th scope="col" >Rusiru Jayanga</th>
      <th scope="col" >rusirujayanga@gmail.com</th>
    
    </tr>
  </thead>
</table>

    <!-- info section -->

    <section class="info_section layout_padding2-top">
      <div class="social_container">
        <div class="social_box">
          <a href="">
            <i class="fa fa-facebook" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-twitter" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </a>
          <a href="">
            <i class="fa fa-youtube" aria-hidden="true"></i>
          </a>
        </div>
      </div>
      <div class="info_container">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-lg-3">
              <h6>ABOUT US</h6>
              <p>
                Built for the coursework of PUSL2024 software engineering 02 module related to the PLY - BSc (Honours) Software Engineering degree offered by UK plymoth university.
              </p>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="info_form">
                <h5>Newsletter</h5>
                
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <h6>NEED HELP</h6>
              <p>
                If anyone needs help here, it's us.
              </p>
            </div>
            <div class="col-md-6 col-lg-3">
              <h6>CONTACT US</h6>
              <div class="info_link-box">
                <a href="">
                  <i class="fa fa-map-marker" aria-hidden="true"></i>
                  <span> NSBM Green University </span>
                </a>
                <a href="">
                  <i class="fa fa-phone" aria-hidden="true"></i>
                  <span>+01 12345678901</span>
                </a>
                <a href="">
                  <i class="fa fa-envelope" aria-hidden="true"></i>
                  <span> rusirujayanga@gmail.com</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- footer section -->
      <footer class="footer_section">
        <div class="container"></div>
      </footer>
      <!-- footer section -->
    </section>

    <!-- end info section -->

  </body>
</html>
    