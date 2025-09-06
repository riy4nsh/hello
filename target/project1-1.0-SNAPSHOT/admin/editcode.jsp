<%@page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String a = request.getParameter("name");
    String b = request.getParameter("email");
    String c = request.getParameter("mobile");
    String d = request.getParameter("password");

    out.print(a + "<br/>");
    out.print(b + "<br/>");
    out.print(c + "<br/>");
    out.print(d + "<br/>");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename", "root", "");
        Statement stmt = con.createStatement();
        String cmd = "update tablename set name='" + a + "',email='" + b + "',mobile='" + c + "',password='" + d + "' where id='" + id + "'  ";
        int x = stmt.executeUpdate(cmd);
        if (x > 0) {
            response.sendRedirect("registration.jsp");
        } else {
            out.print("Failed");
        }

    } catch (Exception ex) {
        out.print("Error -" + ex.getMessage());
    }
%>