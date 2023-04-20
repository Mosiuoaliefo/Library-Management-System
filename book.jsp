

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> books</title>
    </head>
    <body>
           <a href="adminhome.jsp"><h3>back</h3><a><br>
       <link rel="stylesheet" href="./style.css">
<div class="container">
   <center><h1>ADD A BOOK BELOW... </h1></center>
  <form action="bookinsert.jsp">
    <table>
        
        <tr>
        <td><label for="book_number">Book Number:</label></td>
        <td><input type="number" name="book_number" id="book_number" placeholder="book_number"></td>
      </tr>
      <tr>
        <td><label for="auther_name">Auther Name:</label></td>
        <td><input type="text" name="auther_name" id="auther_name" placeholder="auther_name"></td>
      </tr>
  
      <tr>
        <td><label for="rack_details">Rack Details:</label></td>
        <td><input type="text" name="rack_details" id="rack_details" placeholder="rack_details"></td>
      </tr>
      <tr>
        <td><label for="book_title">Book Title:</label></td>
        <td><input type="text" name="book_title" id="book_title"></td>
         <tr>
        <td><label for="date">Date:</label></td>
        <td><input type="text" name="date" id="date"></td>
      </tr>
       <tr>
        <td><label for="department">Department:</label></td>
        <td><input type="text" name="department" id="department"></td>
      </tr>
     
      
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="SAVE" /></td>
      </tr>
    </table> </form>
</div>
<div class="shadow"></div>
     
    </body>
</html>
