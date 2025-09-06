

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="dashboard.css">

    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>Admin Dashboard</title>
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
                <input type="text" placeholder="Search here...">
            </div>
            
            <img src="profile.jpg" alt="">
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="text">Weekly Visitor</span>
                        <span class="number">50,120</span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-comments"></i>
                        <span class="text">Monthly Register</span>
                        <span class="number">20,120</span>
                    </div>
                    <div class="box box3">
                        <i class="uil uil-share"></i>
                        <span class="text">Weekly Login</span>
                        <span class="number">10,120</span>
                    </div>
                </div>
            </div>

            <div class="activity">
                <div class="title">
                    <i class="uil uil-clock-three"></i>
                    <span class="text">Zimzam Details</span>
                </div>

                <div class="activity-data">
                    <div class="data names">
                        <a href="contact.jsp" ><span class="data-title" id="zim">Contact Details</span></a>
                        
                        
                    </div>
                    <div class="data email">
                        <a href="registration.jsp"><span class="data-title" id="zim">Register Details</span></a>
                        
                       
                    </div>
                    <div class="data joined">
                        <a href="login.jsp"><span class="data-title" id="zim">Login Details</span></a>
                    </div>
                   
                    
                </div>
            </div>
        </div>
    </section>

    <script src="dashboard.js"></script>
</body>
</html>
