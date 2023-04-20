<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html ">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fullname = request.getParameter("fullname");
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
ResultSet resultSet = null;
%>
<html>
<body>

<h1>you may edit your profile below!!!</h1>

<table border="1">
<tr>
<td>full name</td>
<td>email</td>
<td>username</td>
<td>password</td>
<td>EDIT YOUR PROFILE</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
PreparedStatement st = connection.prepareStatement("select * from member where fullname=?");
st.setString(1,fullname);
resultSet = st.executeQuery();
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><a href="custo.jsp?fullname=<%=resultSet.getString("fullname")%>"><center>EDIT</center></a></td>
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