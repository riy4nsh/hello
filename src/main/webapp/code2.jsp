
<%@page import="java.sql.*" %>
<%

String a = request.getParameter("email");
String b = request.getParameter("password");

out.print(a+"<br/>");
out.print(b+"<br/>");
try 
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename","root","");
    Statement stmt = con.createStatement();
   
    String cmd = "select * from tablename where email='"+a+"' and password='"+b+"' ";
    ResultSet rs = stmt.executeQuery(cmd);
    if(rs.next()){
        out.print("Login Succesfully");
        response.sendRedirect("index.jsp");
    }
    else
    {
        out.print("Email or password doest not matched");
    }
}
catch(Exception ex)
{
    out.print("Error " + ex.getMessage() );
}

%>