<%-- 
    Document   : book
    Created on : Dec 5, 2024, 10:34:48 PM
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
        <h1>Book a Book today!</h1>
        <form action="${pageContext.request.contextPath}/BookPreview">
            <!-- Request Dispatcher the name  -->
            <input type="submit" value="Book now" />
        </form>
    </body>
</html>
