<%@ include file="auth.jsp" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <h1>Edit Your Data</h1>
        <%            String id = request.getParameter("id");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename", "root", "");
                Statement stmt = con.createStatement();

                String cmd = "select * from tablename where id='" + id + "'";
                ResultSet rs = stmt.executeQuery(cmd);
                rs.next();
        %>
        <form action="editcode.jsp" method="post">
            <input type="hidden" value="<%= id%>" name="id" />
            Update Your Name:
            <input type="text" name="name" required value="<%= rs.getString("name")%>" /> 
            <br/><br/>
            Update Your Email
            <input type="text" name="email" required value="<%= rs.getString("email")%>" /> 
            <br/><br/>
            Update Your Mobile:
            <input type="text" name="mobile" required value="<%= rs.getString("mobile")%>" /> 
            <br/><br/>
            Update Your Password:
            <input type="text" name="password" required value="<%= rs.getString("password")%>" /> 
            <br/><br/>
            <button>Update</button>
        </form>
        <%

            } catch (Exception ex) {
                out.print("Error -" + ex.getMessage());
            }
        %>

    </body>
</html>
