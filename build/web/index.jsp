<%-- 
    Document   : index
    Created on : Dec 3, 2024, 10:05:40 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tienne:wght@400;700;900&display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap">
        <title>Landing Page</title>
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
                background: radial-gradient(circle, var(--dark-dreams), var(--poppy-pompadour), var(--bright-lavender));
                margin: 0;
                display: grid;
                grid-template-rows: 10% 80% 10%;
                height: 100vh;
                width: 100vw;
                overflow: hidden;
            }

            /*header stye*/
            header{
                display: flex;
                align-items: center;
                background-color: var(--bright-lavender);
                border-bottom: 2px solid var(--dark-dreams);
            }

            header > h1{
                font-family: var(--main-font);
                font-size: 25px;
            }


            .logo{
                width: 4em;
                height: 4em;
                margin-left: 5px;
            }

            /*footer style*/
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

            /*actual content*/
            .main-content{
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                padding: 2rem;
                height: 80vh;
                gap: 1rem;
                padding-top: 0;
            }
            a{
                text-decoration: underline;
                color: var(--ghost-white);
                font-size: 1rem;
                font-family: var(--sub-font);
            }

            a:hover{
                color: var(--bright-lavender);
            }

            .main-content > h1{
                font-family: var(--main-font);
                font-size: 3rem;
                color: var(--ghost-white);
                margin: 0;
            }

            h2{
                font-family: var(--sub-font);
                font-size: 2rem;
                margin: 5px;
                color: var(--ghost-white);
            }

            h3{
                font-family: var(--sub-font);
                font-size: 1rem;
                color: var(--ghost-white);
            }

            img{
                width:20rem;
                height: 20rem;  
            }
        </style>
    </head>
    <body>
    <div class="page-content">
        <header>
            <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
            <h1>ICS2608/2CSA/Balagtas, Pua</h1>
        </header>
        <div class="main-content">
            <h1>Worlds beyond our own.</h1>
            <h2>Escapism at its finest.</h2>
            <h3><a href="Entry/login.jsp">Log In</a> or <a href="Entry/signup.jsp">Sign Up</a> now to create the best memories.</h3>
            <img src="${pageContext.request.contextPath}/images/library-covergirl.png" alt="library covergirl">
        </div>
        <footer>
            <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
        </footer>
    </div>
</body>
</html>
