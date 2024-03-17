package item;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteItem")
public class deleteitem extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemId = request.getParameter("item_id");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");
            Statement statement = connection.createStatement();

            
            String deleteQuery = "DELETE FROM add_item WHERE item_id = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
                preparedStatement.setString(1, itemId);
                preparedStatement.executeUpdate();
            }

            connection.close();

           
            response.sendRedirect("allitems.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); 
            response.sendRedirect("delete_error.jsp");
        }
    }
}