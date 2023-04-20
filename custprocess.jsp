<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/botho_university_lesotho";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String fullname= request.getParameter("fullname");
String email=request.getParameter("email");
String username=request.getParameter("username");
String password=request.getParameter("password");
if(fullname != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update member set fullname=?,email=?,username=?,password=? where fullname="+fullname;
ps = con.prepareStatement(sql);
ps.setString(1,fullname);
ps.setString(2, email);
ps.setString(3, username);
ps.setString(4, password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
