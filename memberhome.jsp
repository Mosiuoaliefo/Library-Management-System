

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

  <head>

    <meta charset="UTF-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="style.css" />

    <title>HomePage</title>

  </head><BR><BR><BR>

  <body>
        <link rel="stylesheet" href="./styling.css">
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
  <button class="dropbtn">MEMBER MENU</button>
  <div class="dropdown-content">
     <a href="logout">LOGOUT</a>
    <a href="borrowbook.jsp">BORROW BOOK</a>
    <a href="suggestions.jsp">SUGGESTED BOOKS</a>
    <a href="catalogue.jsp">BROWSE CATARLOGUE</a>
    <a href="Up.jsp">CUSTOMIZE PROFILE</a>
   
  </div>
	
      </ul>

    </nav>
  
 <h1><center>dear member, thank you for visiting us...enjoy!!!</center></h1>
  
  </div>
          </br></br></br>
 <img src="mem.PNG" width="100%" height="100%">
 <h1><center>our library is the best in the world...  </center></h1>
 <h1><center>think before you speak. read before you think...with BU.  </center></h1>
  </body>

</html>
