<%-- 
    Document   : dashboard
    Created on : Dec 3, 2024, 10:35:34 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style/styles_dashboard.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="nav" id="navbar">
        <ul>
            <li><i class="bi bi-person-circle"></i></li>
            <li><a href=""><i class="bi bi-speedometer2"></i><p>Dashboard</p></a></li>
            <li><a href=""><i class="bi bi-people-fill"></i><p>Users</p></a></li>
            <li><a href=""><i class="bi bi-box-seam-fill"></i><p>Storage</p></a></li>
            <li><a href=""><i class="bi bi-gear-fill"></i><p>Settings</p></a></li>
        </ul>
        <ul>
            <li><a href=""><i class="bi bi-box-arrow-left"></i><p>Log out</p></a></li>
        </ul>
    </nav>
    <div class="dashboard" id="dashboard">
        <div class="header">
            <h1>Dashboard</h1>
        </div>
        <div class="notifs_section">
            <div class="notifs">
                <i class="bi bi-bell-fill"></i>
            </div>
            <div class="notifs">
                <i class="bi bi-bell-fill"></i>
            </div>
            <div class="notifs">
                <i class="bi bi-bell-fill"></i>
            </div>
        </div>
        <div class="history">
            <h2>History</h2>
            <table>
                <tr>
                    <th>Book Title</th>
                    <th>Author</th>
                    <th>Name</th>
                    <th>Borrow Period</th>
                    <th>Return Date</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td class="row1 fail">example</td>
                    <td class="row1 fail">late</td>
                    <td class="row1 fail">return</td>
                    <td class="row1 fail">customer</td>
                    <td class="row1 fail">N/A</td>
                    <td class="row1 fail">
                        <label for="book_returned1">
                        <input id="book_returned1" type="checkbox"/>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="row2 success">example</td>
                    <td class="row2 success">on-time</td>
                    <td class="row2 success">return</td>
                    <td class="row2 success">customer</td>
                    <td class="row2 success">on-time</td>
                    <td class="row2 success">
                        <label for="book_returned2">
                        <input id="book_returned2" type="checkbox" checked="true"/>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td class="row3" >example</td>
                    <td class="row3" >ongoing</td>
                    <td class="row3" >period</td>
                    <td class="row3" >customer</td>
                    <td class="row3" >N/A</td>
                    <td class="row3">
                        <label for="book_returned3">
                        <input id="er" type="checkbox" />
                        </label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="footer">
        <p>Date() | MP4</p>
    </div>
    <div class="custom-shape-divider-top-1732729701">
        <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
            <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
        </svg>
    </div>
    </body>
</html>
