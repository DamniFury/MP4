<%-- 
    Document   : error_login
    Created on : Dec 5, 2024, 10:33:37 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" />
        <title>Login Error</title>
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
            
            *, :before, ::after{
                box-sizing: border-box;
            }
            
            body{
                background-color: var(--isabelline);
                margin: 0;
                display: grid;
                grid-template-rows: 10% 80% 10%;
                height: 100vh;
                width: 100vw;
                overflow: hidden;
                font-family: "Geist", Arial, sans-serif;
            }
            
            /*header style*/
            header{
                display: flex;
                align-items: center;
                background-color: var(--bright-lavender);
                border-bottom: 2px solid var(--dark-dreams);
            }

            header > h1{
                font-family: var(--main-font);
                font-size: 25px;
                margin: 0;
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
            
            .error_message{
                text-align: center;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 45rem;
                margin: 0;
            }
            h1{
                white-space: nowrap;
                font-size: 6.9rem;
                margin-top: 0;
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
        <div class="page-content">
            <header>
                     <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
                     <h1>ICS2608/2CSA/Balagtas, Pua</h1>
            </header>
                     
            <div class="error_message">
                <h1>Hacker?</h1>
                <h2>Reason: ${err}</h2>
                <p>The login credentials you have provided is either invalid or incorrect. Please try again.</p>
                <form action="/MP4/Entry/login.jsp" method="POST">
                    <input class="button" type="submit" value="Go Back"/>
                </form>
            </div>
            
            <footer>
                     <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
            </footer>
        </div>
    </body>
</html>

