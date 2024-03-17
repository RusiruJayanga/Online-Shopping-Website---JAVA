package test1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userEmail = request.getParameter("your_name");
        String password = request.getParameter("your_pass");

        try {
            // JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // connection
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");

            
            String selectQuery = "SELECT * FROM user_table WHERE uemail = ? AND pwd = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
                preparedStatement.setString(1, userEmail);
                preparedStatement.setString(2, password);

                // Execute statement
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    
                    response.sendRedirect("index.jsp"); // success page
                } else {
                    // Invalid credentials
                    response.sendRedirect("login_error.jsp"); // error page
                }
            }

            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login_error.jsp"); // error page
        }
    }
}