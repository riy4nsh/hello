<%
    String token = (String) session.getAttribute("authToken");
    if (token == null) {
    response.sendRedirect("admin_login.jsp");
    return;
    }
%>