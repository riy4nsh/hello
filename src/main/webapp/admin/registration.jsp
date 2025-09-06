<%-- 
    Document   : registration
    Created on : Sep 1, 2025, 5:43:50 PM
    Author     : OJD-Admin
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="dashboard.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <title>Admin Dashboard Panel</title>
    </head>
    <body>
        <nav>
            <div class="logo-name">
                <div class="logo-image">
                    <img src="logo.jpg" alt="logo">
                </div>

                <span class="logo_name">Zimzam</span>
            </div>

            <div class="menu-items">
                <ul class="nav-links">
                    <li><a href="dashboard.jsp">
                            <i class="uil uil-estate"></i>
                            <span class="link-name">Dahsboard</span>
                        </a></li>
                    <li><a href="contact.jsp">
                            <i class="uil uil-files-landscapes"></i>
                            <span class="link-name">Contact Details</span>
                        </a></li>
                    <li><a href="registration.jsp">
                            <i class="uil uil-chart"></i>
                            <span class="link-name">Register Details</span>
                        </a></li>
                    <li><a href="login.jsp">
                            <i class="uil uil-thumbs-up"></i>
                            <span class="link-name">Login Details</span>
                        </a></li>

                </ul>

                <ul class="logout-mode">
                    <li><a href="#">
                            <i class="uil uil-signout"></i>
                            <span class="link-name">Logout</span>
                        </a></li>

                    <li class="mode">
                        <a href="#">
                            <i class="uil uil-moon"></i>
                            <span class="link-name">Dark Mode</span>
                        </a>

                        <div class="mode-toggle">
                            <span class="switch"></span>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <section class="dashboard">
            <div class="top">
                <i class="uil uil-bars sidebar-toggle"></i>

                <div class="search-box">
                    <i class="uil uil-search"></i>
                    <input type="text" id="searchInput" placeholder="Search here..." onkeyup="searchData()">
                </div>

                <img src="profile.jpg" alt="profile">
            </div>

            <div class="dash-content">

                <div class="activity">
                    <div class="title">
                        <i class="uil uil-clock-three"></i>
                        <span class="text">Registration Details</span>
                    </div>
                    <div class="activity-data">
                        <div class="data id">
                            <span class="data-title">ID</span>
                        </div>
                        <div class="data names">
                            <span class="data-title">Name</span>

                        </div>
                        <div class="data email">
                            <span class="data-title">Email</span>


                        </div>
                        <div class="data number">
                            <span class="data-title hello">number</span>


                        </div>
                        <div class="data password">
                            <span class="data-title">Password</span>

                        </div>
                        <div class="data edit">
                            <span class="data-title">Edit</span>


                        </div>
                        <div class="data delete">
                            <span class="data-title">Delete</span>


                        </div>
                    </div>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename", "root", "");
                            Statement stmt = con.createStatement();

                            String cmd = "select * from tablename";
                            ResultSet rs = stmt.executeQuery(cmd);
                            while (rs.next()) {
                    %>
                    <div class="activity-data data-row">
                        <div class="data id">
                            <span class="data-list"><%= rs.getString("id")%></span>
                        </div>
                        <div class="data names">
                            <span class="data-list"><%= rs.getString("name")%></span>

                        </div>
                        <div class="data email">
                            <span class="data-list"><%= rs.getString("email")%></span>


                        </div>
                        <div class="data number">
                            <span class="data-list hello"><%= rs.getString("mobile")%></span>


                        </div>
                        <div class="data password">
                            <span class="data-list"><%= rs.getString("password")%></span>

                        </div>
                        <div class="data edit">
                            <span class="data-list"> <a href="editpage.jsp?id=<%= rs.getString("id") %>" > <button class="button2" > Edit</button> </a></span>

                        </div>
                        <div class="data delete">
                            <span class="data-list"><a href="deletecode.jsp?id=<%= rs.getString("id")%>"> <button class="button1"> DELETE</button></a> </span>

                        </div>
                    </div>
                    <%
                            }

                        } catch (Exception ex) {
                            out.print("Error " + ex.getMessage());
                        }
                    %>
                </div>
            </div>
        </section>

        <script src="dashboard.js"></script>
        <script>
                        function searchData() {
                            const input = document.getElementById("searchInput").value.toLowerCase();
                            const rows = document.querySelectorAll(".data-row");

                            rows.forEach(row => {
                                const text = row.textContent.toLowerCase();
                                if (text.includes(input)) {
                                    row.style.display = "";
                                } else {
                                    row.style.display = "none";
                                }
                            });
                        }
        </script>

    </body>
</html>
