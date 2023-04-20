<%@ page language="java" import="java.sql.*"%>

<%

    String book_number = request.getParameter("book_number");

    String auther_name = request.getParameter("auther_name");

    String rack_details = request.getParameter("rack_details");

    String book_title = request.getParameter("book_title");

    String date = request.getParameter("date");

    String department = request.getParameter("department");
 

    try {

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/botho_university_lesotho", "root", "");

        PreparedStatement ps = con.prepareStatement("insert into books values(?,?,?,?,?,?)");

        ps.setString(1, book_number);

        ps.setString(2, auther_name);

        ps.setString(3, rack_details);

        ps.setString(4, book_title);

        ps.setString(5, date);

        ps.setString(6, department);

        ps.executeUpdate();

        out.println("THE BOOK IS SAVED SUCCESSFULLY...");

    } catch (Exception e) {

        out.println(e);

    } 

%>
