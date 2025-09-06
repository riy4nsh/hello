<%@ page import="java.util.UUID" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email != null && password != null) {
        if ("anish@gmail.com".equals(email) && "anish".equals(password)) {
            // Generate a token
            String token = UUID.randomUUID().toString();
            session.setAttribute("authToken", token);

            // Redirect to dashboard
            response.sendRedirect("dashboard.jsp");
            return;
        } else {
            out.println("<p style='color:red;'>Invalid username or password</p>");
        }
    }
%>