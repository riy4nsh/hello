
<%@page import="java.sql.*" %>
<%

String a = request.getParameter("name");
String b = request.getParameter("email");
String c = request.getParameter("mobile");
String d = request.getParameter("message");


out.print(a+"<br/>");
out.print(b+"<br/>");
out.print(c+"<br/>");
out.print(d+"<br/>");


try 
{

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename","root","");
    Statement stmt = con.createStatement();
    
    String cmd ="insert into contacttable(name,email,mobile,message) values('"+a+"', '"+b+"', '"+c+"','"+d+"') ";                   
    int x = stmt.executeUpdate(cmd);
    if(x>0)
    {
        out.print("Data Inserted Successfully");
        response.sendRedirect("contact.jsp");
    }
    else
    {
        out.print("Failed");
    }
    
    
}
catch(Exception ex)
{
    out.print("Error " + ex.getMessage() );
}

%>