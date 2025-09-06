<%@page import="java.sql.*" %>
<%
    String a = request.getParameter("id");
    out.print(a + "</br>");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename", "root", "");
        Statement stmt = con.createStatement();

        String cmd = "delete from tablename where id='" + a + "'";
        int x = stmt.executeUpdate(cmd);
        if (x > 0) {
            response.sendRedirect("registration.jsp");
        } else {
            out.print("failed");
        }
    } catch (Exception ex) {
        out.print("Error -" + ex.getMessage());
    }
%>