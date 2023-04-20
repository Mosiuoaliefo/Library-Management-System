<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
     <a href="adminhome.jsp"><h3>back</h3><a><br>
    <h1>you may choose to delete a book dear administrator...</h1>
    <img src="delete.PNG" width="100%" height="100%">

<h1>delete table...</h1>
<table border="1">
<tr>
<td>book_number</td>
<td>auther_name</td>
<td>rack_details</td>
<td>book_title</td>
<td>date</td>
<td>department</td>
<td>DELETE BOOK</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from books";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("book_number") %></td>
<td><%=resultSet.getString("auther_name") %></td>
<td><%=resultSet.getString("rack_details") %></td>
<td><%=resultSet.getString("book_title") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("department") %></td>
<td><a href="delete.jsp?book_number=<%=resultSet.getString("book_number") %>"><button type="button"  class="delete"><CENTER>DELETE</CENTER></button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 

</body>
</html>
