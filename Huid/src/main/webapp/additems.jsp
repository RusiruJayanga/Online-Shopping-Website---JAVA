<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>add item</title>
    <!-- Main css -->
    <link rel="stylesheet" href="css1/additem.css" />
  </head>
  <body>
    <div class="wrapper">
      <h2>Add Item</h2>
      <form action="additem" method ="post" enctype="multipart/form-data">
        <div class="input-box">
          <input type="text" name="item_name" placeholder="Enter item name" required />
        </div>
        <div class="input-box">
          <input type="text" name="item_price" placeholder="Enter item price" required />
        </div>
        <div class="form-group">
          <label for="exampleFormControlFile1">Add image</label
          ><input
            type="file"
            name="bimg"
            class="form.control.file"
            id="exampleFormControlFile1"
          />
        </div>
        <div class="input-box">
          <input type="text" name="item_category" placeholder="Enter category" required />
        </div>
        <div class="input-box">
          <input type="text" name="item_id" placeholder="Enter item id" required />
        </div>
        <div class="input-box button">
          <input type="Submit" value="Add" />
        </div>
        <a href = "adminpage.jsp">
      <div class="input-box button">
          <input value="Home" style = "text-align: center;"/>
        </div> 
        </a>
      </form>
        </div
        ></body
        ></html>

        
        