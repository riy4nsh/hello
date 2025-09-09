<%@ page import="java.util.UUID" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    if(email != null && password !=null){
        if("anish@gmail.com".equals(email) && "anish".equals(password)){
        
        String token = UUID.randomUUID().toString();
        session.setAttribute("authToken", token);
        response.sendRedirect("dashboard.jsp");
        return;
    }
    else{
     response.sendRedirect("admin_login.jsp");
    }
    
    }
    else{
        out.print("null value");
    }
    
%>