package test1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/comment")
public class comment extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	

        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String upho = request.getParameter("upho");
        String comment = request.getParameter("comment");

      
        if (!isValidEmail(uemail)) {
            response.sendRedirect("sign_uperror.jsp?error=InvalidEmailFormat");
            return;
        }

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

           
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");

            String insertQuery = "INSERT INTO comment_table (uname, uemail, upho, comment) VALUES (?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                preparedStatement.setString(1, uname);
                preparedStatement.setString(2, uemail);
                preparedStatement.setString(3, upho);
                preparedStatement.setString(4, comment);

             
                preparedStatement.executeUpdate();
            }

            connection.close();

            response.sendRedirect("contact.jsp"); // success page
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); 
            
        }
    }

    private boolean isValidEmail(String email) {
        // email validation 
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return email.matches(emailRegex);
    }
}