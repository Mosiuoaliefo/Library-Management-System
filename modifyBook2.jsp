<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String book_number = request.getParameter("book_number");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "botho_university_lesotho";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from books where book_number="+book_number;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>enjoy, as you modify BU books!!!</h1>
<form method="post" action="modifyBook3.jsp">
<input type="hidden" name="book_number" value="<%=resultSet.getString("book_number") %>">
<input type="text" name="book_number" value="<%=resultSet.getString("book_number") %>">
<br>
Author name:<br>
<input type="text" name="auther_name" value="<%=resultSet.getString("auther_name") %>">
<br>
Rack Details:<br>
<input type="text" name="rack_details" value="<%=resultSet.getString("rack_details") %>">
<br>
Book Title:<br>
<input type="text" name="book_title" value="<%=resultSet.getString("book_title") %>">
<br>
Date:<br>
<input type="text" name="date" value="<%=resultSet.getString("date") %>">
<br>
Department:<br>
<input type="text" name="department" value="<%=resultSet.getString("department") %>">
<br>
<br>
<input type="submit" value="modify">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>