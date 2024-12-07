<%-- 
    Document   : login
    Created on : Dec 5, 2024, 10:32:43 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form action="${pageContext.request.contextPath}/LogInServlet" method="POST">
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required/>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required/>

            <input type="submit" value="Login"/>
        </form> 
    </body>
</html>
