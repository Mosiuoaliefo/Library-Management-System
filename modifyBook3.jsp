<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/botho_university_lesotho";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String book_number = request.getParameter("book_number");
String auther_name=request.getParameter("auther_name");
String rack_details=request.getParameter("rack_details");
String book_title=request.getParameter("book_title");
String date=request.getParameter("date");
String department=request.getParameter("department");
if(book_number != null)
{
Connection con = null;
PreparedStatement ps = null;
int ID = Integer.parseInt(book_number);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update books set book_number=?,auther_name=?,rack_details=?,book_title=?,date=?,department=?  where book_number="+book_number;
ps = con.prepareStatement(sql);
ps.setString(1,book_number);
ps.setString(2, auther_name);
ps.setString(3, rack_details);
ps.setString(4, book_title);
ps.setString(5, date);
ps.setString(6, department);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("WELDONE DEAR ADMIN, YOU SUCCESFULLY MODIFIED THAT BOOK...! MR LIEFO IS HAPPY...");
}
else
{
out.print("LIEFO DINIED YOUR ACCESS.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    </body>
</html>
