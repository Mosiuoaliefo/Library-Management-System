<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<body>
       <a href="memberhome.jsp"><h3>back</h3><a><br>

    <h1> CATALOGUE...</h1>
<table align="LEFT" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="blue">
<td>book number</td>
<td>author name</td>
<td>rack details</td>
<td>book title</td>
<td>date</td>
<td>department</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from books";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("book_number") %></td>
<td><%=resultSet.getString("auther_name") %></td>
<td><%=resultSet.getString("rack_details") %></td>
<td><%=resultSet.getString("book_title") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("department") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>
