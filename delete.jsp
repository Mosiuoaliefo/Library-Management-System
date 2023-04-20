<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String book_number=request.getParameter("book_number");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/botho_university_lesotho", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM books WHERE book_number="+book_number);
out.println("you successfully deleted a book...");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


