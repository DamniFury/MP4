<%-- 
    Document   : dashboard
    Created on : Dec 3, 2024, 10:35:34 PM
    Author     : puaas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Classes.FileIO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <title>Dashboard</title>
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

            .reminders > h2, .history > h2{
                font-weight: 400;
                color: hsl(260, 50%, 28%);
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
                text-decoration: underline;
                word-wrap: break-word;
                border-top-right-radius: 100px;
                border-bottom-right-radius: 50px;
                border-bottom-left-radius: 50px;
            }

            .bi-bell-fill{
                font-size: 1.15rem;
                color: hsl(260, 50%, 28%);
                margin-right: 0.5rem;
            }

            .reminder_row:hover{
                cursor: pointer;
                color: hsl(260, 50%, 28%);
                background-color: hsl(266, 55%, 75%);
            }

            table{
                width: 100%;
                table-layout: fixed;
                border-collapse: collapse;
                border-radius: 3px;
                min-width: 500px;
            }

            table, td, tr, th{
                padding: 0.4rem;
                overflow: hidden;
                text-overflow: ellipsis;
                word-wrap: break-word;
            }

            th{
                font-size: 1.1rem;
                border-bottom: 1px solid hsl(0, 0%, 100%);
                color: hsl(0, 0%, 100%);
                background-color:hsl(260, 50%, 28%);
                font-weight: 600;
                text-align: left;
            }

            td{
                font-size: 0.8rem;
                color: hsl(0, 0%, 0%);
                background-color: hsl(0, 6%, 90%);
                border-top: 1px solid hsl(0, 0%, 100%);
            }

            .history_cell:not(.col1){
                border-left: 1px solid hsl(0, 0%, 100%);
            }

            .history_cell:not(.col6){
                border-right: 1px solid hsl(0, 0%, 100%);
            }

            .col1{
                font-weight: 600;
            }

            .lighter{
                background-color: hsl(0, 2%, 78%);
            }
            
            .records{
                max-height: 20rem;
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
                    <li><a href="#"><i class="bi bi-speedometer2"></i><p>Dashboard</p></a></li>
                    <li><a href="${pageContext.request.contextPath}/Librarian/users.jsp"><i class="bi bi-people-fill"></i><p>Users</p></a></li>
                    <li><a href="#"><i class="bi bi-box-seam-fill"></i><p>Storage</p></a></li>
                    <li><a href="#"><i class="bi bi-gear-fill"></i><p>Settings</p></a></li>
                </ul>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/InvalidateSession"><i class="bi bi-box-arrow-left"></i><p>Log out</p></a></li>
                </ul>
            </nav>
            <div class="dashboard" id="dashboard">
                <div class="header">
                    <h1>Dashboard</h1>
                </div>
                <div class="divider"></div>
                <div class="reminders">
                    <h2>Reminders</h2>
                    <ul class="notif">
                        <li class="reminder_row"><i class="bi bi-bell-fill"></i>Library Christmas Party at December 20, 2024 from 1:00PM - 5:00PM.</li>
                        <li class="reminder_row"><i class="bi bi-bell-fill"></i>Library will be CLOSED from 12/24/2024 - 1/3/2024. I hope enjoy your christmas 😀.</li>
                        <li class="reminder_row"><i class="bi bi-bell-fill"></i>Verify returned books received last month before the Christmas break.</li>
                    </ul>
                </div>
                <div class="divider"></div>
                <div class="history">
                    <h2>Records</h2>
                    <div class="records">
                    <table>
                        <tr>
                            <th class="history_cell col1">Book Title</th>
                            <th class="history_cell col2">Author</th>
                            <th class="history_cell col3">Name</th>
                            <th class="history_cell col4">Borrow Period</th>
                            <th class="history_cell col5">Return Date</th>
                            <th class="history_cell col6">Status</th>
                        </tr>
                        
                        <%
                        FileIO io = new FileIO();
                        String relativePath = "../../data/records.txt";
                        String absolutePath = application.getRealPath(relativePath);
                        ArrayList<String> users = io.recordsReader(absolutePath);

                        for(int i = 0; i < users.size(); i++){ 
                            String[] record = users.get(i).split(",");
                            if(i % 2 == 0){
                        %><tr>
                            <td class="history_cell col1 lighter"><%=record[1]%></td>
                            <td class="history_cell col2 lighter"><%=record[2]%></td>
                            <td class="history_cell col3 lighter"><%=record[3]%></td>
                            <td class="history_cell col4 lighter"><%=record[4]%></td>
                            <td class="history_cell col5 lighter"><%=record[5]%></td>
                            <td class="history_cell col6 lighter"><%=record[6]%></td>
                        </tr><%  }
                            else{ %>
                            <tr>
                            <td class="history_cell col1"><%=record[1]%></td>
                            <td class="history_cell col2"><%=record[2]%></td>
                            <td class="history_cell col3"><%=record[3]%></td>
                            <td class="history_cell col4"><%=record[4]%></td>
                            <td class="history_cell col5"><%=record[5]%></td>
                            <td class="history_cell col6"><%=record[6]%></td>
                            </tr>
                        <%
                            }
                        }
                        %>
                    </table>
                    </div>
                </div>
            </div>
        </div>
                              
        <footer>
             <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
        </footer>
</body>
</html>
