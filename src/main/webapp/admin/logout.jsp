<%
    session.invalidate(); // Destroy the session and remove authToken
    response.sendRedirect("admin_login.jsp"); // Redirect to login page
%>
