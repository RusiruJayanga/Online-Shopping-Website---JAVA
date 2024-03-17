package item;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addToCartServlet")
public class itemcart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemId = request.getParameter("itemId");
        String itemName = request.getParameter("itemName");
        String itemPrice = request.getParameter("itemPrice");
        String itemFile = request.getParameter("itemImage");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");

            // Insert the item into the cart table
            String insertQuery = "INSERT INTO cart1_table (cart_id, iname, iprice, ifile) VALUES (?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                preparedStatement.setString(1, itemId);
                preparedStatement.setString(2, itemName);
                preparedStatement.setString(3, itemPrice);
                preparedStatement.setString(4, itemFile);
                preparedStatement.executeUpdate();
            }

            connection.close();

            // Send a success response
            PrintWriter out = response.getWriter();
            out.println("rusiru");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Send an error response
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("Error adding item to cart.");
        }
    }
}