

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"   %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
  <head>
    <!-- Font awsem -->
    <script
      src="https://kit.fontawesome.com/45a812b4f2.js"
      crossorigin="anonymous"
    ></script>
    
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="" type="image/x-icon" />

    <title>check out</title>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="css1/bootstrap.css" />

    <!-- styles -->
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
              <li class="nav-item">
                <a class="nav-link" href="index.jsp"
                  >Home <span class="sr-only">(current)</span></a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact Us</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="check_out.jsp"><i class="fa-sharp fa-solid fa-bag-shopping"></i></a>
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

<table class="table" style="width: 70%; text-align: center; margin-left: auto;  margin-top:50px;
margin-right: auto;">
  <thead>
    <tr>
      
    </tr>
     <tr>
      <th scope="col"></th>
      <th scope="col">Description</th>
      <th scope="col">Quantity</th>
      <th scope="col">Price</th>
      <th scope="col">Edit</th>
    </tr>
    
    
   <%      
          try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");
    Statement at = conn.createStatement();
    String str = "select * from cart1_table";
    ResultSet rs = at.executeQuery(str);
    while(rs.next()){

    	   %>  
    
  <tr>
       <th scope="col" ><img src="images/<%=rs.getString("ifile")%>" style="width:120px; hight:120px" ></th>
      <th  ><p style="margin-bottom: 50px;"><%=rs.getString("iname")%></p></th>
      <th  >
      <form >
 <input class="numberstyle" name="qun" type="number" min="1" step="1" value="1" style="width: 70px; margin-bottom: 47px;">
      </form>
      </th>
      <th><p style="margin-bottom: 50px;">Rs.<%=rs.getString("iprice")%></p></th>
      <th> <form action="deletecart" method="post">
      <input type="hidden" name="cart_id" value="<%=rs.getString("cart_id")%>">
           <button type="submit" class="btn btn-primary" style="margin-bottom: 47px;">Delete</button>
            </form>  </th>

    </tr>
                       
    
<%}
        }catch (Exception e){

        }
%>

     <tr>
    
    <td><form action="#" style="margin-bottom: 0px;"><a href="index.jsp">
                  <button type="button" class="btn btn-primary"  style= "width:150px;">Back to shop</button></a>
                </form></td>
    <td colspan="5" ><form action="#" style="margin-bottom: 0px; "><a href="pay.html">
                  <button type="button" class="btn btn-success"  style= "width:150px; margin-left: 0px;">Check out</button></a>
                </form></td>
    
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