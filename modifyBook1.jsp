<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<html>
<body>
     <a href="adminhome.jsp"><h3>back</h3><a><br>

<h1>SIMPLY MODIFY BOOKS BELOW...!</h1>

<table border="1">
<tr>
<td>book_number</td>
<td>auther_name</td>
<td>rack_details</td>
<td>book_title</td>
<td>date</td>
<td>department</td>
<td>MODIFY BOOKS</td>
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
<td><a href="modifyBook2.jsp?book_number=<%=resultSet.getString("book_number")%>"><center>MODIFY</center></a></td>
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