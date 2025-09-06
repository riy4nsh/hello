<%-- 
    Document   : contact
    Created on : Sep 2, 2025, 3:58:07 PM
    Author     : OJD-Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <body>
        <h1>Contact </h1>
        <br/><br/> 
        <form action="code3.jsp" method="post" >
            Name :
        <input type="text" name="name" required />
        <br/><br/> 
        Email :
        <input type="email" name="email" required />
        <br/><br/> 
        Mobile:
        <input type="number" name="mobile" required />
        <br/><br/> 
        Message
        <input type="text" name="message" required />
        
        <br/><br/> 
        <button>Send</button>
        </form>
    </body>
</html>
