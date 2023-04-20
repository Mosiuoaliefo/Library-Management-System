<%-- 
    Document   : adminhome
    Created on : Apr 18, 2022, 6:57:56 PM
    Author     : 1923875 LIEFO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="UTF-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="style.css" />

     <title>Home Page</title>

  </head><BR><BR><BR>

  <body>
      <%
          response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
          if(session.getAttribute("username") ==null) 
          {
          response.sendRedirect("index.jsp");
          }
          %>

    <nav>

      <div class="heading"> </div>

      <ul class="nav-links">

        <div class="dropdown">
  <button class="dropbtn">ADMIN MENU</button>
  <div class="dropdown-content">
      <a href="logout">LOGOUT</a>
    <a href="Up.jsp">EDIT PROFILE</a>
    <a href="approvals.jsp">APPROVE MEMBERS</a>
     <a href="catalogue.jsp">BROWSE CARTALOGUE</a>
    <a href="book.jsp">ADD BOOK</a>
     <a href="modifyBook1.jsp">MODIFY BOOK</a>
     <a href="retrievedelete.jsp">DELETE BOOK</a><br><br>
        <div class="dropdown">
  <button class="dropbtn">REPORT GENERATOR</button>
  <div class="dropdown-content">
    <a href="catalogue.jsp">VIEW ALL ISSUED BOOKS</a>
    <a href="authorsname.jsp">VIEW ISSUED BOOKS BY AUTHOR</a>
     <a href="seebydate.jsp">VIEW BOOKS WITH OVERDUE DATE</a>
    <a href="viewbydepartment.jsp">VIEW BOOKS BY DEPARTMENT</a>
  </div>
	
	
      </ul>

    </nav>
  
 <h1><center>dear administrator, thank you for visiting us...enjoy!!!</center></h1>
   <h1><center>if you do not like to read you have not find the right book</center></h1>
  </div>
 <img src="library.jpg" width="100%" height="100%">
 
  </body>

</html>
