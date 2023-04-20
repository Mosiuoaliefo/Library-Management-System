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
<h1>SUGGESTED BOOKS BY LECTURES FOR THE YEAR 2022 ON SEMESTER  STUDENTS...</h1>
<table align="LEFT" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="blue">
<td>ID</td>
<td>ADJ</td>
<td>DSA</td>
<td>ITP</td>
<td>OTHERS</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from lecturemessage";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("ADJ") %></td>
<td><%=resultSet.getString("DSA") %></td>
<td><%=resultSet.getString("ITP") %></td>
<td><%=resultSet.getString("OTHERS") %></td>
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
