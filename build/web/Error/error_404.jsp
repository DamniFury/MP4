<%-- 
    Document   : error_404
    Created on : Dec 5, 2024, 10:34:09 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" />
        <title>Error 404</title>
        <style>
            *, :before, ::after{
                box-sizing: border-box;
            }
            body{
                font-family: "Geist", Arial, sans-serif;
            }
            .error_message{
                position: absolute;
                top: 40%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }
            h1{
                white-space: nowrap;
                font-size: 6.9rem;
                margin-bottom: -1.5rem;
                font-weight: 900;
            }
            p{
                font-size: 0.8rem;
                word-wrap: break-word;
                margin-left: 10rem;
                margin-right: 10rem;
            }
            .button{
                background: hsl(266, 45%, 44%);
                border-radius: 100px;
                color: hsl(0, 0%, 100%);
                cursor: pointer;
                font-size: 16px;
                line-height: 24px;
                outline: 0 solid transparent;
                padding: 6px 16px;
                border: 0;
            }
        </style>
    </head>
    <body>
        <div class="error_message">
            <h1>Nothing Here!</h1>
            <h2>404 - PAGE NOT FOUND</h2>
            <p>The page you are looking for could not be found and might have been removed or is currently under maintenance.</p>
            <form action="${pageContext.request.contextPath}/index.jsp" method="POST">
                <input class="button" type="submit" value="Go Back" />
            </form>
        </div>
    </body>
</html>
