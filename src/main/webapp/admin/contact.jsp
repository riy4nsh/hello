<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="auth.jsp" %>

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
                    <li><a href="logout.jsp">
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
                    <input type="text" placeholder="Search here...">
                </div>

                <img src="profile.jpg" alt="profile">
            </div>

            <div class="dash-content">

                <div class="activity">
                    <div class="title">
                        <i class="uil uil-clock-three"></i>
                        <span class="text">Contact Details</span>
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
                            <span class="data-title">number</span>
                            
                        </div>
                        <div class="data message">
                            <span class="data-title">Message</span>
                            
                        </div>
                    </div>
                    <%
                        try {

                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename", "root", "");
                            Statement stmt = con.createStatement();

                            String cmd = "select * from contacttable";
                            ResultSet rs = stmt.executeQuery(cmd);

                            while (rs.next()) {

                    %>

                    <div class="activity-data">
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
                            
                            <span class="data-list"><%= rs.getString("mobile")%></span> 
                        </div>
                        <div class="data message">
                            
                            <span class= "data-list"><%= rs.getString("message")%></span>
                        </div>
                    </div>

                    <%                                        }

                        } catch (Exception ex) {
                            out.print("Error -" + ex.getMessage());
                        }

                    %>
                </div>
            </div>
        </section>

        <script src="dashboard.js"></script>
    </body>
</html>