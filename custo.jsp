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
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from member where fullname="+fullname;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="updateprocess.jsp">
<input type="hidden" name="fullname" value="<%=resultSet.getString("fullname") %>">
<input type="text" name="fullname" value="<%=resultSet.getString("fullname") %>">
<br>
email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
username:<br>
<input type="text" name="username" value="<%=resultSet.getString("username") %>">
<br>
password:<br>
<input type="text" name="password" value="<%=resultSet.getString("password") %>">
<br>
<br><br>
<input type="submit" value="sent edit">
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