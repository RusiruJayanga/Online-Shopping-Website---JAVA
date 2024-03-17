<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager"   %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
 <script
      src="https://kit.fontawesome.com/45a812b4f2.js"
      crossorigin="anonymous"
    ></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
crossorigin="anonymous"/>
    <meta charset="UTF-8"/>
<title>all items</title>

</head>
<body>
 <a href ="adminpage.jsp"><button type="button" class="btn btn-primary"><i class="fa-sharp fa-solid fa-arrow-left"></i></button></a>

       <table class="table">
        <thead>
        <tr>
            <th scope="col">Item id</th>
                <th scope="col">Item name</th>
                    <th scope="col">Item price</th>
                            <th scope="col">Item category</th>
                            <th scope="col">Item image</th>
                            <th scope="col">Item delete</th>
        </tr></thead>
    

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/mydb", "root", "");
    Statement at = conn.createStatement();
    String str = "select * from add_item";
    ResultSet rs = at.executeQuery(str);
    while(rs.next()){

    %>
    <tbody>
    <tr>
        <th scope="row"><%=rs.getString("item_id")%></th>
        <td><%=rs.getString("iname")%></td>
        <td><%=rs.getString("iprice")%></td>
        <td><%=rs.getString("cname")%></td>
        <td><img src="images/<%=rs.getString("ifile")%>" style="width:50px; hight:50px;"></td>
        <td><form action="deleteItem" method="post">
                <input type="hidden" name="item_id" value="<%=rs.getString("item_id")%>">
                <button type="submit" class="btn btn-primary">Delete</button>
            </form> 
        
        </td>
    </tr></tbody>
<%}
        }catch(Exception e){

        }
%>
</table>
</body>
</html>
