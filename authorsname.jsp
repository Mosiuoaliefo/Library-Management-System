<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  </head>
  <body>
       <a href="adminhome.jsp"><h3>back</h3><a><br>
    <br/><br/>
    <form method="post" name="frm" action="authorname">
      <table border="1" width="500" height="150" align="center" bgcolor="grey">
        <tr><td colspan=5 style="font-size:16pt;" align="center">
        <h3>VIEW BOOKS BY AUTHOR NAMES</h3></td></tr>
        <tr><td ><b>LIBRARY BOOKS</b></td>
          <td>
              
              <input  type="text" name="author_name" id="auther_name">
        </td></tr>        
        <tr><td colspan=5 align="center">
        <input  type="submit" name="submit" value="view"></td></tr>
      </table>
    </form>
  </body>
</html>