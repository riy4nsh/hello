
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register Form</h1>
        
        <form method="post" action="code1.jsp" >
            Enter Your Name 
            <input type="text" required name="name" />
            <br/><br/>
            Enter Your Mobile 
            <input type="number" required name="mobile" />
            <br/><br/>
            Enter Email ID
            <input type="email" required name="email" />
            <br/><br/>
            Enter Your Password
            <input type="password" required name="password" />
            <br/><br/>
            <button>Save</button>
        </form>
        
    </body>
</html>
