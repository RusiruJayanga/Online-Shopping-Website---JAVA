<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"   %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Item Details</title>
    <link rel="stylesheet" type="text/css" href="css1/bootstrap.css" />

    <!-- Custom styles -->
    <link href="css1/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css1/responsive.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h2>Item Details</h2>
        <% try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");
            Statement statement = conn.createStatement();
            String itemId = request.getParameter("item_id");
            String query = "SELECT * FROM add_item WHERE item_id = " + itemId;
            ResultSet rs = statement.executeQuery(query);
            if (rs.next()) {
        %>
                <div class="row">
                    <div class="col-md-6">
                        <img src="images/<%= rs.getString("ifile") %>" alt="<%= rs.getString("iname") %>" />
                    </div>
                    <div class="col-md-6">
                        <h3><%= rs.getString("iname") %></h3>
                        <p>Price: <%= rs.getString("iprice") %></p>
                        
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
        <%  } else { %>
                <p>Item not found.</p>
        <%  }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        } %>
    </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>