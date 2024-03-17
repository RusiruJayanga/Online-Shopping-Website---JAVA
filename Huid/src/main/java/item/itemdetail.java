package item;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/additem")
@MultipartConfig
public class itemdetail extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String iname = request.getParameter("item_name");
        String iprice = request.getParameter("item_price");

        Part part = request.getPart("bimg");
        String ifile = part.getSubmittedFileName();
        String cname = request.getParameter("item_category");
        String item_id = request.getParameter("item_id");

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");

        
            String insertQuery = "INSERT INTO add_item (item_id, iname, iprice, ifile, cname) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
            	
            	preparedStatement.setString(1, item_id);
                preparedStatement.setString(2, iname);
                preparedStatement.setString(3, iprice);
                preparedStatement.setString(4, ifile);
                preparedStatement.setString(5, cname);
               

                preparedStatement.executeUpdate();
            }

            connection.close();

            HttpSession session = request.getSession();
            session.setAttribute("successMessage", "rusiru");
            response.sendRedirect("additems.jsp"); // success page

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); 

            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", "Error adding item");
            response.sendRedirect("addit.jsp"); // error page
        }
    }
    
    
    
}