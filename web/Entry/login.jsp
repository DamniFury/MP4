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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Log In</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tienne:wght@400;700;900&display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap">
        <style>
            :root{
                --poppy-pompadour: hsla(266, 62%, 44%, 1);
                --dark-dreams: hsla(260, 50%, 28%, 1);
                --bright-lavender: hsla(266, 55%, 75%, 1);
                --ghost-white: hsla(252, 56%, 98%, 1);
                --isabelline: hsla(38, 22%, 93%, 1);
                --silver: rgb(110, 105, 105);
                --eerie-black: hsla(0, 0%, 15%, 1);
                --main-font: 'Tienne', sans-serif;
                --sub-font: 'Geist', sans-serif;
            }

            body{
                background-color: var(--isabelline);
                margin: 0;
                display: flex;
                overflow: hidden;
            }

            .image-container{
                background: radial-gradient(circle, var(--dark-dreams), var(--poppy-pompadour), var(--bright-lavender));
                width: 50vw;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .library-image{
                width: 25rem;
                height: 25rem;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3),
                            0 6px 6px rgba(0, 0, 0, 0.2); 
                border-radius: 50%;
            }

            .page-content{
                width: 50vw;
                height: 100vh;
                display: grid;
                grid-template-rows: 10% 80% 10%;
            }

            .logo{
                width: 4em;
                height: 4em;
                margin-left: 5px;
            }

            header{
                display: flex;
                align-items: center;
            }

            header > h1{
                font-family: var(--main-font);
                font-size: 25px;
            }

            .form-container{
                width: 25vw;
                height:40vh;
                margin: auto;
            }

            .form-container > h1{
                font-family: var(--main-font);
                min-width: 25vw;
                font-size: 35px;
                margin: 0;
            }

            .form-container > h2{
                font-family: var(--main-font);
                width: 25vw;
                font-size: 25px;
                margin: 0;
                margin-top: 1rem;
                margin-bottom: 1rem;
                color: var(--silver);
                font-weight:200;
            }

            form{
                display: flex;
                flex-direction: column;
            }

            footer{
                display: flex;
                align-items: center;
            }

            footer > h1{
                margin: 0;
                margin-left: 20px;
                font-size: 1rem;
                color: var(--eerie-black);
                font-family: var(--main-font);
            }

            label{
                font-family: var(--sub-font);
                font-size: 15px;
                font-weight: 400;
                margin-bottom: 0.5em;
            }

            input[type="text"], input[type="password"]{
                height: 2rem;
                width: 23vw;
                margin-bottom: 1em;
                border-radius: 5px;
                font-family: var(--sub-font);
                font-size: 1rem;
            }

            input[type="submit"]{
                width: 8rem;
                height: 2rem;
                border-radius: 5px;
                border-color: var(--bright-lavender);
                background-color: var(--bright-lavender);
                font-family: var(--sub-font);
                font-size: 15px;
                font-weight: 700;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div class="page-content">
            <header>
                <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
                <h1>ICS2608/2CSA/Balagtas, Pua</h1>
            </header>
            <div class="form-container">
                <h1>Worlds beyond our own.</h1>
                <h2>Log in to borrow books.</h2>
                <form action="../LogInServlet" method="POST">
                    <label for="username"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required/>
                    <label for="password"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required/>
                    <input type="submit" value="Log in">
                </form>
            </div>
            <footer>
                <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
            </footer>
        </div>
        <div class="image-container">
            <img src="${pageContext.request.contextPath}/images/library-covergirl.png" class="library-image" alt="library image">
        </div>
    </body>
</html>
