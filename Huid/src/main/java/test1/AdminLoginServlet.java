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

@WebServlet("/alogin")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("ayour_name");
        String password = request.getParameter("ayour_pass");

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");

            
            String selectQuery = "SELECT * FROM admin_table WHERE aname = ? AND apwd = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(selectQuery)) {
                preparedStatement.setString(1, userName);
                preparedStatement.setString(2, password);

                
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                   
                    response.sendRedirect("adminpage.jsp"); // success page
                } else {
                    
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