<%-- 
    Document   : dashboard
    Created on : 16 Jan, 2023, 12:25:58 PM
    Author     : 91635
--%>
<%@include  file= "change_pass_model.jsp" %>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    Cookie c[] = request.getCookies();
    String email = null;
    for (int i = 0; i < c.length; i++) {

        if (c[i].getName().equals("mtr_login")) {

            email = c[i].getValue();
            break;
        }

    }
    String img_code = "";
    if (email != null && session.getAttribute(email) != null) {


        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("select * from details where email='" + email + "'");

            if (rs.next()) {
                img_code = rs.getString("code");
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></link>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <style>
            .dropdown {
                position: relative;
                display: inline-block;

            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                border-radius: 10px
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {
                background-color: #F2E4D1;
                border-radius: 10px

            }

            .dropdown:hover .dropdown-content {
                display: block;
            }


        </style>

    </head>
    <body>
        <!----------------------------------Nav ---------------------------------------------------------------->
        <nav class=" sticky-top navbar navbar-expand-lg " style="background-color:#8F7A8D; border-radius: 0px;box-shadow: 1px 1px 5px rgba(0,0,0,0.4);">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand " style="color:white;font-size: 30px;margin-left: 0px">𝑽𝒊𝒗𝒂𝒉.𝒄𝒐𝒎</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <div class="dropdown">
                            <a class="nav-link mt-3" href="#"  style="text-decoration: none;color:white; font-size: 16px; margin-left: 120px">𝗠𝘆 𝗩𝗶𝘃𝗮𝗵<i class="fa fa-angle-down text-light ml-3" ></i><span class="sr-only">(current)</span></a>
                            <div class="dropdown-content" style="margin-left:80px">
                                <a href="dashboard.jsp">Dashboard</a>
                                <a href="profile.jsp">home</a>
                                <a href="">My Photo</a>
                                 <a data-toggle="modal" data-target="#changepassword">Change password</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link mt-3" href="#"  style="text-decoration: none;color:white; font-size: 16px; margin-left: 40px">𝗠𝗮𝘁𝗰𝗵𝗲𝘀 <i class="fa fa-angle-down text-light ml-3" ></i></a>
                            <div class="dropdown-content">
                                <a href="">My Matches</a>
                                <a href="">New Matches</a>
                                <a href="">Near Me</a>
                                <a href="">More</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="search.jsp"  style="text-decoration: none;color:white; font-size: 16px; margin-left: 40px;margin-top: 1px">𝗦𝗲𝗮𝗿𝗰𝗵</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link " href="#"   style="text-decoration: none;color:white; font-size: 16px; margin-left: 40px;margin-top: 10px">𝗜𝗻𝗯𝗼𝘅<i class="fa fa-angle-down text-light ml-3" ></i></a>
                            <div class="dropdown-content">
                                <a href="inbox3.jsp">Received</a>
                                <a href="request.jsp">Request</a>
                                <a href="">Sent</a>
                                <a href="">More</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.jsp"  style="text-decoration: none;color:white; font-size: 16px; margin-left: 40px">𝗟𝗼𝗴𝗼𝘂𝘁</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!----------------------------------Nav ----------end------------------------------------------------------>  
        <!----------------------profile show----------------------------------------------------------------->
        <style>
            /*
             
                        img {
                            width:250px;
                        }
                        img {
                            vertical-align: middle;
                            border-style: none;
                        }
                         About Me 
                    
                        .about-text h3 {
                            font-size: 25px;
                            font-weight: 700;
                            margin: 0 0 6px;
                        }
            
                        .about-text h6 {
                            font-weight: 600;
                            margin-bottom: 15px;
                        }
            
                        .about-text p {
                            font-size: 15px;
            
                        }
                        .about-text p mark {
                            font-weight: 600;
                            color: #20247b;
            
                        }
            
                        .about-list {
                            padding-top: 10px;
                        }
                        .about-list .media {
                            padding: 5px 0;
                        }
                        .about-list label {
                            color: #20247b;
                            font-weight: 600;
                            width: 88px;
                            margin: 0;
                            position: relative;
                        }
            
                        .about-list p {
                            margin: 0;
                            font-size: 15px;
                        }
            
                        .about-section .counter {
                            padding: 22px 20px;
                            background: #ffffff;
                            border-radius: 10px;
                            box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
                        }
                        .about-section .counter .count-data {
                            margin-top: 10px;
                            margin-bottom: 10px;
                        }
                        .about-section .counter .count {
                            font-weight: 700;
                            color: #20247b;
                            margin: 0 0 5px;
                        }
                        .about-section .counter p {
                            font-weight: 200;
                            margin: 0;
                        }
                        mark {
                            background-image: linear-gradient(rgba(252, 83, 86, 0.6), rgba(252, 83, 86, 0.6));
                            background-size: 100% 3px;
                            background-repeat: no-repeat;
                            background-position: 0 bottom;
                            background-color: transparent;
                            padding: 0;
                            color: currentColor;
                        }
                        .theme-color {
                            color: #fc5356;
            
                        }
                        .dark-color {
                            color: #20247b;
                        } */
            input::file-selector-button {
                font-weight: bold;
                color: white;
                background-color:#3EA1B6;
                padding: 0.5em;
                border: thin solid grey;
                border-radius: 3px;
            }


        </style>
     
        <div class="container">
            <div class="row">
                <div class="col-sm-12 card">
                    <div class="row">
                        <div class="col-sm-4 "style="background-color:#EBEDF0 " >
                            <center> <img src="user_profile/<%=img_code%>.jpg" class=" card  img-fluid mt-5" style="width:200px;height:300px" > </center>
                           
                            <form method="post" ACTION="profile_image.jsp" name="uploadForm" ENCTYPE='multipart/form-data'><br>
                                <center>
                                    <input type="file" name="uploadFile"  class="form-control " style="width:270px;height:50px;border-radius: 10px;"><br>
                                 </center>
                                <div class="row">
                                    <div class="col-sm-12"> 
                                        <center>
                                            <button class="btn btn-block  text-light" style="width:270px;background-color: #7193B1">Update</button>
                                        </center> 
                                    </div>
                                </div>
                            </form> 
                            <br><br>
                        </div>
                        <style>
                          
                        </style>
                        <div class="col-sm-8">
                            <h2>Information</h2>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <h4>First Name:</h4>
                                    <h4>Last Name:</h4>
                                    <h4>Gender:</h4>
                                    <h4>Caste:</h4>
                                    <h4>Religion:</h4>
                                    <h4>Occupation:</h4>
                                    <h4>Birth:</h4>
                                    <h4>Country:</h4>
                                    <h4>State:</h4>
                                    <h4>City:</h4>
                                </div>
                                <div class="col-sm-3 ">
                                    <h4><%=rs.getString("fname")%></h4>
                                    <h4><%=rs.getString("lname")%></h4>
                                    <h4><%=rs.getString("gender")%></h4>
                                    <h4><%=rs.getString("caste")%></h4>
                                    <h4><%=rs.getString("religion")%></h4>
                                    <h4><%=rs.getString("Occupation")%></h4>
                                     <h4><%=rs.getString("birth")%></h4>
                                    <h4><%=rs.getString("country")%></h4>
                                    <h4><%=rs.getString("state")%></h4>
                                    <h4><%=rs.getString("city")%></h4>
                                </div>
                                <div class="col-sm-4">
                                    
                                </div>
                                <div class="col-sm-1"><button class="btn btn-success"  data-toggle="modal" data-target="#myModal">Edit Info</button></div>
                                <div class="col-sm-1"></div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <br>

        <!----------------------------------footer--------------------------------------->
        <style>


            #button-addon1 {
                color: #ffc371;
            }

            i {
                color: #0000cc;
                font-size: 20px;}

            .form-control::placeholder {
                font-size: 0.95rem;
                color: #aaa;
                font-style: italic;
            }

            .form-control.shadow-0:focus {
                box-shadow: none;
            }


            .display-3{
                font-family: 'Sanchez', serif;
            }

            p{
                font-family: 'Tajawal', sans-serif;
            }

            .lead{
                font-family: 'Sanchez 200', serif;
            }


        </style>
        <footer class=""style="background-color:#8F7A8D;">
            <div class="container py-5">
                <div class="row py-3">

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4 text-light">About</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-dark">Contact Us</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">About Us</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Stories</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Press</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4 text-light">Help</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-dark">Payments</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Shipping</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Cancellation</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Returns</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4 text-light">Policy</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-dark">Return Policy</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Terms Of Use</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Security</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Privacy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4 text-light">Company</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-dark">Login</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Register</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Sitemap</a></li>
                            <li class="mb-2"><a href="#" class="text-dark">Our Products</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-lg-0">
                        <div class="row">
                            <div class="col-sm-12">
                                <h6 class="text-uppercase font-weight-bold mb-4 text-light">Registered Office Address</h6>

                            </div>
                            <div class="col-sm-12">
                                <ul class="list-inline mt-4">
                                    <li class="list-inline-item"><a href="#" target="_blank" title="twitter"><i class="fa fa-twitter text-light"></i></a></li>
                                    <li class="list-inline-item"><a href="#" target="_blank" title="facebook"><i class="fa fa-facebook-f  text-light"></i></a></li>
                                    <li class="list-inline-item"><a href="#" target="_blank" title="instagram"><i class="fa fa-instagram text-light"></i></a></li>
                                    <li class="list-inline-item"><a href="#" target="_blank" title="pinterest"><i class="fa fa-youtube  text-light"></i></a></li>
                                    <li class="list-inline-item"><a href="#" target="_blank" title="vimeo"><i class="fa fa-google  text-light"></i></a></li>
                                </ul>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


        </footer>
        <!--------------------------------footer end--------------------------------------------------------------------->
        <!-----------------model------------------------------------------------>
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body " style="background-color:#F2F2F2">
                        <div class="container-fluid">
                            <div class="row">

                                <div class="col-sm-12"> 
                                    <center><h6>UPDATE PROFILE</h6></center>
                                    <div class="row card-body">

                                        <div class="col-sm-12 "> 

                                            <div class="row card">
                                                <div class='col-sm-12 card-body'>
                                                    <%
                                                        if (request.getParameter("success") != null) {
                                                    %>
                                                    <div class="alert alert-success">Record Updated</div>
                                                    <%                                                                      } else if (request.getParameter("tryagain") != null) {

                                                    %>   
                                                    <div class="alert alert-danger">Try Again</div>
                                                    <%}%>
                                                    <form method='POST'action='update.jsp'>


                                                        <label>First Name</label><input type="text" name="fname" value="<%=rs.getString("fname")%>" class="form-control" required><br>
                                                        <label>Last Name</label><input type='text' name='lname' value="<%=rs.getString("lname")%>" class="form-control" required><br>
                                                        Gender <select name="gender" class="form-control" required>
                                                            <option value='<%=rs.getString("gender")%>'> <%=rs.getString("gender")%></option>

                                                            <option value='Male'>Male</option>
                                                            <option value='Female'>Female</option></select><br>

                                                        Caste <select name="caste" class="form-control" required>
                                                            <<option value=' <%=rs.getString("caste").trim()%>'> <%=rs.getString("caste").trim()%></option>
                                                            <option value='Jaat'>Jaat</option>
                                                            <option value='Rajput'>Rajput</option>
                                                            <option value='Yadav'>Yadav</option>
                                                            <option value='Sharma'>Shrama</option></select><br>


                                                        Religion <select name="religion" class="form-control" required>
                                                            <option value='<%=rs.getString("religion").trim()%>'> <%=rs.getString("religion").trim()%></option>
                                                            <option value='Hindu'>Hindu</option>
                                                            <option value='Buddhism'>Buddhism</option>
                                                            <option value='Jain'>Jain</option>
                                                            <option value='Sikh'>Sikh</option></select><br>

                                                        Occupation <input type="text" name="occu" value="<%=rs.getString("Occupation")%>" class="form-control" required><br>
                                                        Birth <input type="date" name="birth" value="<%=rs.getString("birth")%>" class="form-control" required><br>

                                                        City<select name="city" class="form-control" required>
                                                            <option value=' <%=rs.getString("city").trim()%>'> <%=rs.getString("city").trim()%></option>
                                                            <option value="Jaipur">Jaipur</option>
                                                            <option value="Udaipur">Udaipur</option>
                                                            <option value="Bikaner">Bikaner</option>
                                                            <option value="Sikar">Sikar</option>
                                                            <option value="Kota">Kota</option></select><br>

                                                        State<select name="state" class="form-control" required>
                                                            <option value=' <%=rs.getString("state").trim()%>'> <%=rs.getString("state").trim()%></option>
                                                            <option value="Rajasthan">Rajasthan</option>
                                                            <option value="Kerala">Kerala</option>
                                                            <option value="Gujarat">Gujarat</option>
                                                            <option value="Goa">Goa</option>
                                                            <option value="Sikkim">Sikkim</option></select><br>

                                                        Country <select name="country" class="form-control" required>
                                                            <option value=' <%=rs.getString("country").trim()%>'> <%=rs.getString("country").trim()%></option>
                                                            <option value="India">India</option>
                                                            <option value="Nepal">Nepal</option>
                                                            <option value="Russia">Russia</option></select><br> 


                                                        <input type='submit' value='Update'class="btn btn-success btn-block">

                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>       
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%      }

        } catch (Exception e) {

            out.print(e.getMessage());

        }


    } else {

        response.sendRedirect("index.jsp");

    }

%>