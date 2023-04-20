<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String email = request.getParameter("email");
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
String sql ="select * from member where email="+email;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="custprocess.jsp">
<input type="hidden" name="email" value="<%=resultSet.getString("email") %>">
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
full name:<br>
<input type="text" name="fullname" value="<%=resultSet.getString("fullname") %>">
<br>
username:<br>
<input type="text" name=username value="<%=resultSet.getString("username") %>">
<br>
password:<br>
<input type="text" name="password" value="<%=resultSet.getString("password") %>">
<br>
<br><br>
<input type="submit" value="sent">
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