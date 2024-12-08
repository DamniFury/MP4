<%-- 
    Document   : users
    Created on : Dec 5, 2024, 10:35:03 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Classes.FileIO" %>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Managing Users</title>
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
            margin: 0;
            padding: 0;
            scroll-behavior: smooth;
        }

        body{
            font-family: "Geist", Arial, sans-serif;
            background-color: var(--isabelline);
            margin: 0;
            display: grid;
            grid-template-rows: 10% 80% 10%;
            height: 100vh;
            width: 100vw;
            overflow: hidden;
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
            margin-left: 8rem;
            font-size: 1rem;
            color: var(--eerie-black);
            font-family: var(--main-font);
        }

        .nav{
            display: flex;
            flex-direction: column;
            height: 90vh;
            width: 100px;
            justify-content: space-between;
            background-color: hsl(260, 50%, 28%);
            position: fixed;
            transition: 0.3s;
        }

        .nav ul{
            margin-top: 0.5rem;
            display: flex;
            flex-direction: column;
            gap: 1rem;
            padding: 0.6rem;
            overflow: hidden;
        }

        .nav > ul > li{
            color: hsl(252, 56%, 98%);
            text-align: center;
            list-style: none;
            display: flex;
            flex-direction: column;
        }

        .nav > ul > li > a > p{
            font-size: 0.6rem;
        }

        i{
            font-size: 2rem;
        }

        a, a:visited, a:hover, a:active {
            color: inherit;
            text-decoration: none;
        }

        a:hover{
            background-color: hsla(0, 0%, 100%, 0.2);
            border-radius: 10%;
        }

        .dashboard{
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            gap: 1rem;
            padding: 0 2rem 2rem 1.5rem;
            transition: 300ms;
            margin-left: 120px;
        }

        .header{
            display: flex;
            gap: 1rem;
            align-items: center;
            padding-top: 1rem;
            color: hsl(198, 16%, 21%);
        }

        .header > h1{
            font-weight: 600;
            font-size: 2.5rem;
        }

        .divider{
            border-bottom: 1.5px solid hsl(0, 0%, 75%);
        }

        .reminders, .history{
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            justify-content: center;
        }

        .notif{
            display: flex;
            flex-direction: column;
            gap: 0.5rem;    
        }

        .reminder_row{
            border: none;
            list-style: none;
            padding: 0.3rem;
            color: hsl(266, 45%, 44%);
            background-color: hsl(0, 6%, 90%);
            word-wrap: break-word;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem;
        }

        .reminder_row:hover{
            color: hsl(260, 50%, 28%);
            background-color: hsl(266, 55%, 75%);
        }

        .caption{
            display: flex;
            font-weight: 400;
            color: hsl(260, 50%, 28%);
            justify-content: space-between;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .name{
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .bi-person-dash-fill{
            padding: 1rem 1.3rem 1rem 1rem;
            cursor: pointer;
        }
        
        .notif{
            max-height:32rem;
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <header>
        <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
        <h1>ICS2608/2CSA/Balagtas, Pua</h1>
    </header>
    <div class="page-content">
        <nav class="nav" id="navbar">
            <ul>
                <li><i class="bi bi-person-circle"></i></li>
                <li><a href="${pageContext.request.contextPath}/Librarian/dashboard.jsp"><i class="bi bi-speedometer2"></i><p>Dashboard</p></a></li>
                <li><a href="#"><i class="bi bi-people-fill"></i><p>Users</p></a></li>
                <li><a href="#"><i class="bi bi-box-seam-fill"></i><p>Storage</p></a></li>
                <li><a href="#"><i class="bi bi-gear-fill"></i><p>Settings</p></a></li>
            </ul>
            <ul>    
                <li><a href="${pageContext.request.contextPath}/InvalidateSession"><i class="bi bi-box-arrow-left"></i><p>Log out</p></a></li>
            </ul>
        </nav>
        <div class="dashboard" id="dashboard">
            <div class="header">
                <h1>Patrons</h1>
            </div>
            <div class="divider"></div>
            <div class="reminders">
                <div class="caption">
                    <h2>Usernames</h2>
                    <h2>Action</h2>
                </div>
                <ul class="notif">
                    <%
                    FileIO io = new FileIO();
                    String relativePath = "../../data/users.txt";
                    String absolutePath = application.getRealPath(relativePath);
                    HashMap<String, String> users = io.usersReader(absolutePath);
                    for(Map.Entry<String, String> entry : users.entrySet()){ 
                    %>
                    <li class="reminder_row">
                        <div class="name"><i class="bi bi-person-fill"></i><%= entry.getKey() %></div>
                        <a><i class="bi bi-person-dash-fill"></i></a>
                    </li>
                    <% } %>
                </ul>
            </div>
        </div>
    </div>
                
    <footer>
        <h1><%= application.getAttribute("Date").toString()%> | MP#4</h1>
    </footer>
</body>
</html>
