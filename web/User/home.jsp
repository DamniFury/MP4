<%-- 
    Document   : home
    Created on : Dec 5, 2024, 10:34:36 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tienne:wght@400;700;900&display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
        <title>Home</title>
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
            .page-content{
                padding: 1rem;
                display: grid;
                grid-template-columns: 20% 80%;
                padding: 0;
            }

            /*sidebar*/

            .test-avatar{
                width: 50px;
                height: 50px;
                border-radius: 50%;
                background-color: black;
                margin: auto;
            }

            .panel-1{
                display: flex;
                flex-direction: column;
                align-items: center;
                padding-top: 1rem;
            }

            .profile{
                height: 7rem;
                margin-top: 1rem;
                margin-bottom: 1rem;
            }

            h3{
                width: 10rem;
                text-align: center;
                font-size: 1.4rem;
                font-family: var(--main-font);
                color: var(--eerie-black);
                margin: 10px;
            }

            ul{
                display: flex;
                flex-direction: column;
                align-items:flex-start;
                padding: 0;
                margin-top: 1rem;
                margin-bottom: 1rem;
            }

            .panel-1 > ul{
                list-style: none;
            }

            .lib-tab, .logout-tab{
                display: flex;
                align-items: center;
                height: 2rem;
            }

            .line{
                height: 2px;
                width: 15rem;
                background-color: var(--silver);
                margin: 1rem;
            }

            .option{
                margin-left: 1rem;
            }
            
            a.link, .logout{
                text-decoration: none;
                color: var(--eerie-black);
                padding: 10px;
                width: 12rem;
                border-radius: 25px;
                margin: auto;
                font-size: 1rem;
                font-family: var(--main-font);
            }
            
            a.link:hover{
                background-color: var(--bright-lavender);
                font-weight: 700;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3),
                0 6px 6px rgba(0, 0, 0, 0.2); 
            }

            .active{
                background-color: var(--bright-lavender);
                font-weight: 700;
                box-shadow: 0 5px 5px rgba(0, 0, 0, 0.3),
                0 6px 6px rgba(0, 0, 0, 0.2); 
            }

            blockquote, .author{
                padding-top: 1rem;
                width: 12rem;
                margin: auto;
                text-align: justify;
                font-family: var(--main-font);
                font-size: 1rem;
            }

            .author{
                text-align: right;
                font-weight: 700;
            }

            /*library*/
            .panel-2{
                padding: 1rem;
            }

            .banner{
                width: 90%;
                height: 30%;
                background-image: url(${pageContext.request.contextPath}/images/pattern.png);
                background-size: cover;
                margin: auto;
                border-radius: 25px;
                margin-top: 2rem;
                display: flex;
                justify-content: space-around;
                align-items: center;
                box-shadow: 0 5px 5px rgba(0, 0, 0, 0.3),
                0 6px 6px rgba(0, 0, 0, 0.2); 
            }

            .BOTM-info{
                width: 40rem;
                margin-left: auto;
                font-family: var(--main-font);
                font-size: 1rem;
                text-align: left;
                font-weight: 700;
                padding-left: 3rem;
            }

            .BOTM-text{
                margin-top:0;
                margin-bottom: 1rem;
            }

            .BOTM-info i,
            .BOTM-info p {
                display: inline-block;
                margin: 0; 
            }

            .BOTM-info i + p {
                margin-left: 8px;
            }

            .BOTM-img{
                margin-right: auto;
                padding-right: 1rem;
            }

            .BOTM{
                height: 18rem;
                width: 18rem;
            }


            /*library*/
            .library{
                width: 90%;
                height: 50%;
                margin-left: 4rem;
            }


            .library > h1{
                font-family: var(--main-font);
                font-size: 2rem;
                text-align: left;
                font-weight: 700;
            }

            .books{
                max-height: 18rem;
                display: flex;
                flex-wrap: wrap;
                justify-content: flex-start;
                align-items: center;
                overflow-y: auto;
            }

            .book{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: flex-start;
                height: 16rem;
                width: 10rem;
                padding: 5px;
                margin-bottom: 1rem;
            }

            .book-cover{
                position: relative;
                height: 12rem;
                width: 8rem;
                border-radius: 10px;
            }

            .book-info{
                margin-top: 4px;
                width: 8rem;
                height: 8rem;
            }

            .book-title, .book-author{
                position: relative;
                font-family: var(--sub-font);
                margin: 3px;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }

            .book-title{
                font-weight: 700;
            }

            .book-author{
                font-size: 0.85rem;
                color: var(--silver);
            }

            .books::-webkit-scrollbar {
                width: 10px; 
                background-color: #f4f4f4;
            }

            .books::-webkit-scrollbar-thumb {
                background-color: #888;
                border-radius: 5px; 
                border: 2px solid #f4f4f4;
            }

            .books::-webkit-scrollbar-thumb:hover {
                background-color: #555;
            }
            
            input[type=submit]{
                font-family: var(--main-font);
                border:none;
                text-decoration: none;
                padding: 1rem;
                background-color: transparent;
                cursor: pointer;
                padding-left: 3rem;
                padding-right: 5rem;
                border-radius: 10px;
                font-weight: 600;
                color: var(--poppy-pompadour);
                text-align: left;
            }
        </style>
    </head>
    <body>
    <header>
        <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
        <h1>ICS2608/2CSA/Balagtas, Pua</h1>
    </header>
        <% String userName = (String)session.getAttribute("username"); %>
    <div class="page-content">
        <div class="panel-1">
            <div class="profile">
                <div class="test-avatar"></div>
                    <h3><%=userName%></h3>
            </div>

            <div class="line"></div>
            
            <form action="${pageContext.request.contextPath}/InvalidateSession">
            <ul class="list">
                <a class="main active link" href="#">
                    <li class="lib-tab">
                        <i class="bi bi-book"></i>
                        <p class="option">Library</p>
                    </li>
                </a>
                <a class="sub link" href="">
                    <li class="logout-tab">
                        <i class="bi bi-box-arrow-left"></i>
                        <input class="logout" type="submit" value="Logout" style="
                               margin: 1rem 0 1rem 1rem;
                               padding: 0;
                               color: var(--eerie-black);"
                               />
                    </li>
                </a>
            </ul>
            </form>
            <div class="line"></div>

            <div class="quote">
                <blockquote>" To acquire the habit of reading is to construct for yourself a refuge from almost all the miseries of life. "
                </blockquote>
                <p class="author">- W. Somerset Maugham, Books and You</p>
            </div>
        </div>

        <div class="panel-2">
            <div class="banner">
                <div class="BOTM-info">
                    <h1 class="BOTM-text">Book of the Month</h1>
                    <h2>The Song of Achilles</h2>
                    <i class="bi bi-person"></i>
                    <p>Madeline Miller</p>
                </div>
                <div class="BOTM-img">
                    <img class="BOTM" src="${pageContext.request.contextPath}/images/BTOM.png" alt="The Song of Achilles Book Cover">
                </div>
            </div>

            <div class="library">
                <h1>
                    Library
                </h1>
                
                <div class="books">
                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=1"><img class="book-cover" src="${pageContext.request.contextPath}/images/The Song of Achilles.jpg" alt="The Song of Achilles"></a>
                        <div class="book-info">
                            <p class="book-title">The Song of Achilles</p>
                            <p class="book-author">Madeline Miller</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=2"><img class="book-cover" src="${pageContext.request.contextPath}/images/A Little Life.jpg" alt="A Little Life"></a>
                        <div class="book-info">
                            <p class="book-title">A Little Life</p>
                            <p class="book-author">Hanya Yanagihara</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=3"><img class="book-cover" src="${pageContext.request.contextPath}/images/Tomorrow and Tomorrow and Tomorrow.jpg" alt="Tomorrow and Tomorrow and Tomorrow"><a href="book.html"></a>
                        <div class="book-info">
                            <p class="book-title">Tomorrow and Tomorrow and Tomorrow</p>
                            <p class="book-author">Gabrielle Zevin</p>
                        </div>
                    </div>
                    
                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=4"><img class="book-cover" src="${pageContext.request.contextPath}/images/They Both Die At The End.jpg" alt="They Both Die At The End"></a>
                        <div class="book-info">
                            <p class="book-title">They Both Die At The End</p>
                            <p class="book-author">Adam Silvera</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=5"><img class="book-cover" src="${pageContext.request.contextPath}/images/Frankenstein.jpg" alt="Frankenstein"></a>
                        <div class="book-info">
                            <p class="book-title">Frankenstein</p>
                            <p class="book-author">Mary Shelley</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=6"><img class="book-cover" src="${pageContext.request.contextPath}/images/Little Women.jpg" alt="Little Women"></a>
                        <div class="book-info">
                            <p class="book-title">Little Women</p>
                            <p class="book-author">Madeline Miller</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=7"><img class="book-cover" src="${pageContext.request.contextPath}/images/People We Meet on Vacation.jpg" alt="People We Meet On Vacation"></a>
                        <div class="book-info">
                            <p class="book-title">People We Meet On Vacation</p>
                            <p class="book-author">Emily Henry</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=8"><img class="book-cover" src="${pageContext.request.contextPath}/images/Happy Place.jpg" alt="Happy Place"></a>
                        <div class="book-info">
                            <p class="book-title">Happy Place</p>
                            <p class="book-author">Emily Henry</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=9"><img class="book-cover" src="${pageContext.request.contextPath}/images/Circe.jpg" alt="Circe"></a>
                        <div class="book-info">
                            <p class="book-title">Circe</p>
                            <p class="book-author">Madeline Miller</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=10"><img class="book-cover" src="${pageContext.request.contextPath}/images/Aristotle and Dante Discover The Secrets of The Universe.jpg" alt="Aristotle and Dante Discover The Secrets of The Universe"></a>
                        <div class="book-info">
                            <p class="book-title">Aristotle and Dante Discover The Secrets of The Universe</p>
                            <p class="book-author">Benjamin Alire Sáenz</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=11"><img class="book-cover" src="${pageContext.request.contextPath}/images/Aristotle and Dante Dive Into The Waters of The World.jpg" alt="Aristotle and Dante Dive Into The Waters of The World"></a>
                        <div class="book-info">
                            <p class="book-title">Aristotle and Dante Dive Into The Waters of The World</p>
                            <p class="book-author">Benjamin Alire Sáenz</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=12"><img class="book-cover" src="${pageContext.request.contextPath}/images/A Thousand Ships.jpg" alt="A Thousand Ships"></a>
                        <div class="book-info">
                            <p class="book-title">A Thousand Ships</p>
                            <p class="book-author">Natalie Haynes</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=13"><img class="book-cover" src="${pageContext.request.contextPath}/images/Red, White & Royal Blue.jpg" alt="Red, White & Royal Blue"></a>
                        <div class="book-info">
                            <p class="book-title">Red, White & Royal Blue</p>
                            <p class="book-author">Casey McQuiston</p>
                        </div>
                    </div>

                    <div class="book">
                        <a href="${pageContext.request.contextPath}/User/book.jsp?book=14"><img class="book-cover" src="${pageContext.request.contextPath}/images/Instructions For Dancing.jpg" alt="Instructions For Dancing"></a>
                        <div class="book-info">
                            <p class="book-title">Instructions For Dancing</p>
                            <p class="book-author">Nicola Yoon</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <footer>
        <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
    </footer>
    
</body>
</html>
