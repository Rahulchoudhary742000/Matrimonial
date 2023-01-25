<%-- 
    Document   : profile
    Created on : 15 Jan, 2023, 3:28:14 PM
    Author     : rahul
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


       
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
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
            .text-center.card-box.text-light:hover{
                cursor: pointer;
            }
           
        </style>
        
    </head>
    <body>
        <!----------------------------------Nav ---------------------------------------------------------------->
        <nav class=" sticky-top navbar navbar-expand-lg " style="position: fixed;width:100%;background-color:#8F7A8D; border-radius: 0px;box-shadow: 1px 1px 5px rgba(0,0,0,0.4);">
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
                               <a href="profile.jsp">Home</a>
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
        <!----------------------------------Nav end ---------------------------------------------------------------->
        <script>
                                 $(document).ready(function() {

                                     var height;
                                     $(window).scroll(function() {
                                         height = $(this).scrollTop();
                                         if (height > 60) {
                                             $(".row.sticky-top").css("background-color", "#8F7A8D");
                                             $(".row.sticky-top").css("color", "#fff");
                                             $("#navbrand").show();
                                         }
                                         else {
                                             $(".row.sticky-top").css("background", "#fff");
                                             $(".row.sticky-top").css("color", "gray");
                                             $("#navbrand").hide();
                                         }
                                     });
                                 });
        </script>
      
        <div class="container-fluid">

            <style>


                img {
                    width:250px;
                }
                img {
                    vertical-align: middle;
                    border-style: none;
                }
                /* About Me 
                ---------------------*/
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
                }

            </style>

            <div class="row my-5 ">
                <div class="col-sm-8 card bg-light mx-2" style="display:none">
                    <section class="section about-section gray-bg my-5" id="about">
                        <div class="container">
                            <div class="row ">
                                <div class="col-sm-3">
                                    <div class="about-avatar">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" title="" class="img-fluid"alt="">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="about-text go-to">
                                        <h3 class="dark-color">About Me</h3>
                                        <h6 class="theme-color lead">A Lead UX &amp; UI designer based in Canada</h6>
                                        <p   style="max-width:465px;">I <mark>design and develop</mark> services for customers of all sizes, specializing in creating stylish, modern websites, web services and online stores. My passion is to design digital user experiences through the bold interface and meaningful interactions.</p>
                                        <div class="row about-list">
                                            <div class="col-sm-6">
                                                <div class="media">
                                                    <label>Birthday</label>
                                                    <p>4th april 1998</p>
                                                </div>
                                                <div class="media">
                                                    <label>Age</label>
                                                    <p>22 Yr</p>
                                                </div>
                                                <div class="media">
                                                    <label>Residence</label>
                                                    <p>Canada</p>
                                                </div>
                                                <div class="media">
                                                    <label>Address</label>
                                                    <p>California, USA</p>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="media">
                                                    <label>E-mail</label>
                                                    <p>info@domain.com</p>
                                                </div>
                                                <div class="media">
                                                    <label>Phone</label>
                                                    <p>820-885-3321</p>
                                                </div>
                                                <div class="media">
                                                    <label>Skype</label>
                                                    <p>skype.0404</p>
                                                </div>
                                                <div class="media">
                                                    <label>Freelance</label>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3"></div>

                            </div>

                        </div>
                    </section>
                </div>
                <div class="col-sm-4"></div>
                <!-- blue part start_------------------------------------------------------------------------------------------------------------->
                <style>
                    /* Importing fonts from Google */


                    /* Reseting */
                    * {
                        margin: 0;
                        padding: 0;
                        box-sizing: border-box;
                        font-family: 'Poppins', sans-serif;
                    }



                    .container {
                        margin-top: 100px;
                    }

                    .container .row .col-lg-4 {
                        display: flex;
                        justify-content: center;
                    }

                    .card {
                        position: relative;
                        padding: 0;
                        margin: 0 !important;
                        border-radius: 20px;
                        overflow: hidden;
                        max-width: 280px;
                        max-height: 340px;
                        cursor: pointer;
                        border: none;
                        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);

                    }

                    .card .card-image {
                        width: 100%;
                        max-height: 340px;
                    }

                    .card .card-image img {
                        width: 100%;
                        max-height: 340px;
                        object-fit: cover;
                    }

                    .card .card-content {
                        position: absolute;
                        bottom: -180px;
                        color: #fff;
                        background: rgba(255, 255, 255, 0.2);
                        backdrop-filter: blur(15px);
                        min-height: 140px;
                        width: 100%;
                        transition: bottom .4s ease-in;
                        box-shadow: 0 -10px 10px rgba(255, 255, 255, 0.1);
                        border-top: 1px solid rgba(255, 255, 255, 0.2);
                    }

                    .card:hover .card-content {
                        bottom: 0px;
                    }

                    .card:hover .card-content h4,
                    .card:hover .card-content h5 {
                        transform: translateY(10px);
                        opacity: 1;
                    }

                    .card .card-content h4,
                    .card .card-content h5 {
                        font-size: 1.1rem;
                        text-transform: uppercase;
                        letter-spacing: 3px;
                        text-align: center;
                        transition: 0.8s;
                        font-weight: 500;
                        opacity: 0;
                        transform: translateY(-40px);
                        transition-delay: 0.2s;
                    }

                    .card .card-content h5 {
                        transition: 0.5s;
                        font-weight: 200;
                        font-size: 0.8rem;
                        letter-spacing: 2px;
                    }

                    .card .card-content .social-icons {
                        list-style: none;
                        padding: 0;
                    }


                    .card .card-content .social-icons li {
                        margin: 10px;
                        transition: 0.5s;

                        transform: translateY(50px);
                    }


                    .card:hover .card-content .social-icons li {
                        transform: translateY(20px);
                    }

                    .card .card-content .social-icons li a {
                        color: #fff;
                    }

                    .card .card-content .social-icons li a span {
                        font-size: 1.3rem;
                    }

                    @media(max-width: 991.5px) {
                        .container {
                            margin-top: 20px;
                        }

                        .container .row .col-lg-4 {
                            margin: 20px 0px;
                        }
                    }
                </style>
                <div class="col-sm-12 card-body  " style="height:572px ;margin-top: 80px ">
                    <div class="container-fluid card-body">
                        <div class="row card-body" style="">
                            <div class="col-sm-4  card-body">
                                <div class="card p-0">
                                    <div class="card-image">
                                        <img src="cdd6.jpg" alt="">

                                    </div>
                                    <div class="card-content d-flex flex-column align-items-center">


                                        <h4>Vivah Family</h4>

                                        <ul class="social-icons d-flex justify-content-center">
                                            <li style="--i:1">
                                                <a href="#">
                                                    <span class="fa fa-facebook"></span>
                                                </a>
                                            </li>
                                            <li style="--i:2">
                                                <a href="#">
                                                    <span class="fa fa-twitter"></span>
                                                </a>
                                            </li>
                                            <li style="--i:3">
                                                <a href="#">
                                                    <span class="fa fa-instagram"></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card p-0">
                                    <div class="card-image">
                                        <img  src="cdd5.jpg"
                                              alt="">
                                    </div>
                                    <div class="card-content d-flex flex-column align-items-center">
                                        <h4>Vivah Family</h4>

                                        <ul class="social-icons d-flex justify-content-center">
                                            <li style="--i:1">
                                                <a href="#">
                                                    <span class="fa fa-facebook"></span>
                                                </a>
                                            </li>
                                            <li style="--i:2">
                                                <a href="#">
                                                    <span class="fa fa-twitter"></span>
                                                </a>
                                            </li>
                                            <li style="--i:3">
                                                <a href="#">
                                                    <span class="fa fa-instagram"></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card p-0">
                                    <div class="card-image">
                                        <img src="cdr.jpg"
                                             alt="">
                                    </div>
                                    <div class="card-content d-flex flex-column align-items-center">
                                        <h4>Vivah Family</h4>

                                        <ul class="social-icons d-flex justify-content-center">
                                            <li style="--i:1">
                                                <a href="#">
                                                    <span class="fa fa-facebook"></span>
                                                </a>
                                            </li>
                                            <li style="--i:2">
                                                <a href="#">
                                                    <span class="fa fa-twitter"></span>
                                                </a>
                                            </li>
                                            <li style="--i:3">
                                                <a href="#">
                                                    <span class="fa fa-instagram"></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>


                </div>
                <!-- static part--------------------------------------------------------------------------------------------------------------------------> 
                <style>
                    .btn.mt-2{
                        border-color: white;
                        width: 170px;
                        font-size:15px;
                        padding: 15px;
                        background-color:#7055AB ;
                    }
                    .btn.mt-2:hover{
                        border-color: #7055AB;
                        color:black;
                        background-color:white ;
                    }
                    h1,h2,h3{
                        font-family: 'Kaushan Script', cursive;
                    }
                </style>
                <div class="col-sm-12 mt-5" >
                    <div class="row">
                        <div class="col-sm-12" style="background-color: #7055AB; color:white;padding:20px">
                            <div class="row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-5"> <center> <h3 style="margin-left:70px;margin-top:17px">Your story is waiting to happen!</h3></center></div>
                                <div class="col-sm-5"><button class="btn mt-2" >Get Started </button></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 card-body">
                            <div class="row card-body">
                                <div class="col-sm-6"></div>
                                <div class="col-sm-1">
                                    <i class="fa fa-vimeo-square" style="font-size:70px;color:#7055AB;margin-left: -45px"></i>
                                </div>
                                <div class="col-sm-5"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-8">
                                    <h2 style="color:#7055AB;margin-left: 60px">Vivah.com - Trusted by over 35 Million Members</h2>
                                </div>
                                <div class="col-sm-2"></div>
                            </div>
                            <div class="row card-body">
                                <div class="col-sm-1"></div>
                                <div class="col-sm-10 text-gray" >
                                    <small>Vivah.com, one of India's best known brands and the world's largest matrimonial service was founded
                                        with a simple objective - to help people find happiness. The company pioneered online matrimonials in 1996 and 
                                        continues to lead the exciting matrimony category after more than a decade. By redefining the way Indian  and 
                                        grooms meet for marriage, Vivah.com has created a world-renowned service that has touched over 35 million people.
                                    </small>
                                </div>
                                <div class="col-sm-1"></div>
                            </div>
                        </div>
                    </div>



                </div>






            </div>
            <!-- right part ------------------------------>

            <style>


                .card{
                    border:none;

                    position:relative;
                    overflow:hidden;
                    border-radius:8px;
                    cursor:pointer;
                }

                .card:before{

                    content:"";
                    position:absolute;
                    left:0;
                    top:0;
                    width:4px;
                    height:100%;
                    background-color:#E1BEE7;
                    transform:scaleY(1);
                    transition:all 0.5s;
                    transform-origin: bottom
                }

                .card:after{

                    content:"";
                    position:absolute;
                    left:0;
                    top:0;
                    width:4px;
                    height:100%;
                    background-color:#8E24AA;
                    transform:scaleY(0);
                    transition:all 0.5s;
                    transform-origin: bottom
                }

                .card:hover::after{
                    transform:scaleY(1);
                }



                .card-box {
                    padding: 20px;
                    border-radius: 3px;
                    margin-bottom: 30px;
                    background-color: #fff;
                }

                .social-links li a {
                    border-radius: 50%;
                    color: rgba(121, 121, 121, .8);
                    display: inline-block;
                    height: 30px;
                    line-height: 27px;
                    border: 2px solid rgba(121, 121, 121, .5);
                    text-align: center;
                    width: 30px
                }

                .social-links li a:hover {
                    color: #797979;
                    border: 2px solid #797979
                }


                .text-pink {
                    color: #ff679b!important;
                    text-decoration: none;
                }
                .btn-rounded {
                    border-radius: 2em;
                }
                .text-muted {
                    color: #98a6ad!important;
                }
                h4 {
                    line-height: 22px;
                    font-size: 18px;
                }
            </style>

            <div class="container">
                <div class=" row  mt-5">
                    <%
                        try {

                            Class.forName("com.mysql.jdbc.Driver");
                            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
                            Statement st = cn.createStatement();
                            ResultSet rs = st.executeQuery("select * from details limit  5 ,12");

                           while(rs.next()) {
                              
                    %>
                    <div class="col-sm-3 mt-5 card-body"  >
                        <img src="user_profile/<%=rs.getString("code")%>.jpg"   style="height:290px;box-shadow: 1px 1px 5px rgba(0,0,0,0.4);border-top-right-radius: 20px" alt="profile-image">
                        <div class="text-center card-box text-light" style="width:250px;box-shadow: 1px 1px 5px rgba(0,0,0,0.4);;border-bottom-left-radius: 20px">

                            <div class="member-card pt-2 pb-2">

                                <div class="">
                                    <h4 class="text-dark"><%=rs.getString("fname")%><%=rs.getString("lname")%></h4>
                                    <p class="text-muted"><%=rs.getString("gender")%><span>| </span><span><a href="#" class="text-pink"><%=rs.getString("caste")%></a></span></p>
                                </div>
                                <ul class="social-links list-inline">
                                    <li class="list-inline-item " ><a href="javascript:void(0)" title="twitter"><i class="fa fa-twitter p-2 "></i></a></li>
                                    <li class="list-inline-item"><a href="javascript:void(0)"  title="facebook"><i class="fa fa-facebook-f p-2"></i></a></li>
                                    <li class="list-inline-item"><a href="javascript:void(0)"  title="instagram"><i class="fa fa-instagram p-2"></i></a></li>
                                </ul>
                                <button type="button"style="width:100px;font-size:20px"  title="view profile"class=" btn btn-success mt-3 btn-rounded waves-effect w-md waves-light fa fa-eye" ></button>
                            </div>
                        </div>
                    </div>

                    <%                 
                           }
                    %>
                </div>
            </div>
        </div>
        <!--------------------------------------------footer----------------------------------------------->
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

    </body>
    <footer class=""style="background-color:#8F7A8D;">
        <div class="container py-5">
            <div class="row py-3">

                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                    <h6 class="text-uppercase font-weight-bold mb-4 text-light">About</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-muted">Contact Us</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">About Us</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Stories</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Press</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                    <h6 class="text-uppercase font-weight-bold mb-4 text-light">Help</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-muted">Payments</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Shipping</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Cancellation</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Returns</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                    <h6 class="text-uppercase font-weight-bold mb-4 text-light">Policy</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-muted">Return Policy</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Terms Of Use</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Security</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Privacy</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                    <h6 class="text-uppercase font-weight-bold mb-4 text-light">Company</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a href="#" class="text-muted">Login</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Register</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Sitemap</a></li>
                        <li class="mb-2"><a href="#" class="text-muted">Our Products</a></li>
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
  <!---------------------------------change password model---------------------------------------------------->
  <script>
      $(document).ready(function(){
          var cp="";
          var np="";
          var rp="";
          $("#cp").keyup(function(){
             cp=$(this).val();
             if(cp.length>0){
                   $.post(
                         
                       "check_password.jsp",{cp:cp},function(data){
                        data=data.trim();
                         if(data==='cp_match'){
                              $('input').removeAttr('disabled');
                                  alert(data);
                         }
                         else{
                             $('#np,#rp').attr('disabled', 'disabled');
                             $("#np").val("");
                             $("#rp").val("");
                             $('.btn.btn-success.float-right').attr('disabled', 'disabled');
                         }
                    });
               }
           });
         $("#np,#rp").keyup(function(){
               np=$("#np").val();
               rp=$("#rp").val();
               
               if(np===rp){
                   $('.btn.btn-success.float-right').removeAttr('disabled');
                   
               }
               else{
                   $('.btn.btn-success.float-right').attr('disabled', 'disabled');
                   
               }
         });
     });
      
      
  </script>

  <!---------------------------------change password model end---------------------------------------------->
</html>
<% 
        } 
         catch (Exception e) {

            out.print(e.getMessage());

        }


    } else {

        response.sendRedirect("index.jsp");

    }

%>