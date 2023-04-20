<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  </head>
  <body style="background: blue">
       <a href="memberhome.jsp"><h3>back</h3><a><br>
    <br/><br/>
    <H1><center>PLEASE ENTER A BOOK NAME TO BORROW A BOOK DEAR MEMBER...!</center></H1>
    <form method="post" name="frm" action="search">
      <table border="1" width="500" height="150" align="center" bgcolor="grey">
        <tr><td colspan=5 style="font-size:16pt;" align="center">
        <h3>Search Below...</h3></td></tr>
        <tr><td ><b>LIBRARY BOOKS</b></td>
          <td>
              
              <input  type="text" name="book_title" id="book_title">
        </td></tr>        
        <tr><td colspan=5 align="center">
        <input  type="submit" name="submit" value="borrow"></td></tr>
      </table>
    </form>
  </body>
</html>