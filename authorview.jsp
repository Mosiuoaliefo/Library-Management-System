<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
    <head>
        <!-- Styles -->	
<style> 
body {
  background-color: grey;
}
</style>
    </head>
    <body>
        <table width="900px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=6 align="center"
                    style="background-color:teal">
                    <b>books details</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Book Number</b></td>
                 <td><b>Auther Name</b></td>
                <td><b>Rack Details</b></td>
                <td><b>Book Title</b></td>
                <td><b>Date</b></td>
                <td><b>Department</b></td>
            </tr>
            <%
                int count = 0;
                String color = "yellow";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "grey";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
                
           <h1><center>wow! you successfully borrowed a book</center></h1>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=6 align="center"
                    style="background-color:white"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
        
    </body>
</html>