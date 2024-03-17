<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>admin page</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css1/bootstrap.css" />

    <!-- Custom styles -->
    <link href="css1/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css1/responsive.css" rel="stylesheet" />
  </head>
  <body>
    <!--card-->
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
    <section class="shop_section layout_padding">
      <div class="container">
        <div class="heading_container heading_center">
          <h2>Admin Page</h2>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-4 col-lg-3">
            <a href="additems.jsp">
              <div class="box" style="border-radius: 10px">
                <div class="img-box">
                  <img src="images/additem.png" alt="" />
                </div>
                <div class="detail-box">
                  <h6>Add Items</h6>
                </div>
              </div></a
            >
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <a href="allitems.jsp">
              <div class="box" style="border-radius: 10px">
                <div class="img-box">
                  <img src="images/allitems.png" alt="" />
                </div>
                <div class="detail-box">
                  <h6>All Items</h6>
                </div>
              </div></a
            >
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <a href="orders.jsp">
              <div class="box" style="border-radius: 10px">
                <div class="img-box">
                  <img src="images/orders.png" alt="" />
                </div>
                <div class="detail-box">
                  <h6>Comments</h6>
                </div>
              </div></a
            >
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3">
            <a href ="alogin.jsp" >
              <div class="box" style="border-radius: 10px">
                <div class="img-box">
                  <img src="images/logout.png" alt="" />
                </div>
                <div class="detail-box">
                  <h6>Logout</h6>
                </div>
              </div></a>
          </div>
        </div>
      </div>
    </section>
    
    
  </body>
</html>
