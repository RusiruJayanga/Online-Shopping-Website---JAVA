<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager"   %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <meta charset="UTF-8" />
    <title>orders</title>
  </head>
  <body>
    <table class="table table-stripted">
      <thead class="bg-primary">

       <tr>
          <th scope="col">User comments</th>
        </tr>
        <tr>
          <th scope="col">User name</th>
          <th scope="col">User email</th>
          <th scope="col">User phone number</th>
          <th scope="col">Comment</th>
        </tr>
      </thead>
     
     
      <%      
          try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");
    Statement at = conn.createStatement();
    String str = "select * from comment_table";
    ResultSet rs = at.executeQuery(str);
    while(rs.next()){

    	   %>  
     
      <tr>
          <th scope="col"><%=rs.getString("uname")%></th>
          <th scope="col"><%=rs.getString("uemail")%></th>
          <th scope="col"><%=rs.getString("upho")%></th>
          <th scope="col"><%=rs.getString("comment")%></th>
        </tr>
     
      
<%}
        }catch (Exception e){

        }
%>
   
   
   
    </table>
  </body>
</html>
