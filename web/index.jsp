<%-- 
    Document   : index
    Created on : 14 Jan, 2023, 12:27:21 PM
    Author     : 91635
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     Cookie c[] = request.getCookies();
	String email=null;
	for(int i=0 ; i<c.length ; i++){
		if(c[i].getName().equals("mtr_login")){
			email=c[i].getValue();
			break;
		}
	}
	if(email !=null && session.getAttribute(email) !=null){
            response.sendRedirect("profile.jsp");
           
        }
        else{
            
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></link>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


    </head>
    <style>
        #bg{
            background:url('bg4.jpg');
            height:700px;
            width:1260px;

        }
    </style>

    <body>
        <section id="bg">
            <nav class="navbar navbar-light justify-content-between" style="background-color:transparent;">
                <a class="navbar-brand " style="color:white;font-size: 40px;margin-left: 0px">𝓥𝓲𝓿𝓪𝓱.𝓬𝓸𝓶</a>
                <span class="dropdown-toggle"style="font-size:20px;color:white;margin-left:460px" href="#" data-toggle="modal" data-target="#myModal">Login</span>
                <i class="fa fa-user-circle-o " aria-hidden="true" style="color:white;font-size:25px;margin-left: -50px"></i><span style="color:white;font-size:20px;margin-left:-90px">Help</span>
            </nav>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-1">   </div>
                            <div class="col-sm-6" style="margin-left:270px;margin-top:400px;">
                                <h3 class="text-light">𝐓𝐡𝐞 𝐖𝐨𝐫𝐥𝐝'𝐬 𝐍𝐨.𝟏 𝐌𝐚𝐭𝐫𝐢𝐦𝐨𝐧𝐢𝐚𝐥 𝐒𝐞𝐫𝐯𝐢𝐜𝐞</h3>
                                <h5 class='text-light 'style='margin-left:85px'>Search by City, Profession & Community</h5>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <!---- <h1 class="text-light" style="font-family:arial">HII RAHUL</h1> ---->
                    </div>
                </div>
                <div class="row mt-5" style="color:white">
                    <div class="col-sm-12">
                        <div class='row'>
                            <div class='col-sm-1'></div>
                            <div class='col-sm-2'>
                                <label>I'm looking for a</label>
                                <br>
                                <select class='form-control' >
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>     
                                </select>
                            </div>

                            <div class='col-sm-2'>
                                <div class='row'>
                                    <div class="col-sm-6">
                                        <label>aged</label>
                                        <select class='form-control' >
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>     
                                            <option value="24">24</option>
                                            <option value="25">25</option>     
                                            <option value="26">26</option>
                                            <option value="27">27</option>     
                                            <option value="28">28</option>
                                            <option value="29">29</option>     
                                            <option value="30">30</option>     
                                        </select>
                                    </div>

                                    <div class="col-sm-6">
                                        <label>To</label>
                                        <select class='form-control' >
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>     
                                            <option value="24">24</option>
                                            <option value="25">25</option>     
                                            <option value="26">26</option>
                                            <option value="27">27</option>     
                                            <option value="28">28</option>
                                            <option value="29">29</option>     
                                            <option value="30">30</option>     
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class='col-sm-2'>
                                <label>of religion</label>
                                <br>
                                <select class='form-control' >
                                    <option>Select</option>
                                    <option value="Hindu">Hindu</option>
                                    <option value="Sikh">Sikh</option>    
                                    <option value="Christian">Christian</option>
                                    <option value="Parsi">Parsi</option>    
                                    <option value="Jain">Jain</option>
                                    <option value="Buddhist">Buddhist</option>    
                                </select>
                            </div>  
                            <div class='col-sm-4'>
                                <div class='row'>
                                    <div class='col-sm-8'>
                                        <label>and mother tongue</label>
                                        <br>
                                        <select class='form-control' >
                                            <option>Select</option>
                                            <option value="Hindi">Hindi</option>
                                            <option value="Marathi">Marathi</option>    
                                            <option value="Punjabi">Punjabi</option>
                                            <option value="Gujarati">Gujarati</option>    
                                            <option value="English">English</option>

                                        </select>

                                    </div>
                                    <div class='col-sm-4 mt-4'>
                                        <button style='border:none; color:white;background-color: #25D366;padding:10px;font-size:18px;border-radius: 5px;'>Let's Begin</button>
                                    </div>
                                </div>

                            </div>
                            <div class='col-sm-1'></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!----------IMAGE END-------->   
        <div class="container-fluid mt-5">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-6  mt-4">
                    <h1 style="color:#EE1D52;margin-left: -10px"> Find your Special Someone</h1>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row card-body">
                <div class="col-sm-1"></div>
                <div class="col-sm-10 card-body">
                    <div class="row">
                        <style>
                            .fa.fa-edit{
                                font-size:45px;
                                height:100px;
                                width:100px;
                                border-radius: 50%;
                                background-color: #10BAB2;
                                padding:30px;
                                color:#fff;

                            }

                            .fa.fa-comment{
                                font-size:40px;
                                height:100px;
                                width:100px;
                                border-radius: 50%;
                                background-color: #10BAB2;
                                padding:30px;
                                color:#fff;

                            }
                            .fa.fa-group{
                                font-size:40px;
                                height:100px;
                                width:100px;
                                border-radius: 50%;
                                background-color: #10BAB2;
                                padding:30px;
                                color:#fff;

                            }


                        </style>
                        <div class="col-sm-12">
                            <div class="row">

                                <div class="col-sm-4" >
                                    <center><i class="fa fa-edit"></i></center><br>
                                    <center> <h3><a href="#">Sign up</a></h3></center>
                                    <center><h4>Register for free & put up your Matrimony Profile</h4></center>
                                </div>
                                <div class="col-sm-4">
                                    <center><i class="fa fa-group"></i></center><br>
                                    <center><h3><a href="#">Connect</a></h3></center>
                                    <center> <h4>Select & Connect with Matches you like</h4></center>
                                </div>
                                <div class="col-sm-4">
                                    <center><i class="fa fa-comment"></i></center><br>
                                    <center> <h3><a href="#">Interact</a></h3></center>
                                    <center><h4>Become a Premium Member & Start a Conversation</h4></center>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <!-------part end------------------------------------------------------------------------>
        </div>
        <style>
            .ourworks-box{
                width: 60%;
                text-align: center;
            }

            .our-works-head{
                font-size: 30px;
                font-weight: 400;
                color: #F72A25;
            }
            .introduce{
                height: 400px;
                background-color:white;
                box-shadow: 0 3px 10px #5969f642;
                border-bottom: 4px solid #5969f6;
                color: black;
            }

            .introduce:hover{
                box-shadow: 0 3px 15px #5969f666;
                border-bottom: 4px solid #B122e5;
                color: black;
                text-decoration: none;
            }
            .flex-column-1{
                height: 70%;
                width: 100%;

            }
            .flex-column-2{
                height: 30%;
                width: 100%;
                align-items:center;
            }
            .text-gray{
                color: gray;
            }
            .pic{
                height: 70px;
                width: 70px;
                margin-left: 20px;
                border-radius: 50%;
                transition: all .2s ease-in-out;
            }

            .introduce:hover .pic{
                transform: scale(1.1);
            }
            .carousel-indicators .active{
                background-color: #46eeaa;
            }
            .carousel-indicators li{
                background-color: #c8e5ff;
            }
            .carousel-indicators{
                bottom: -50px;
            }
            .p1,.p2,.p3{
                background-image: url("cd.jpg");
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;


            }

            #card1{
                background: url("cd1.jpg") no-repeat;
                height:200px;
            }
            #card2{
                background: url("cd2.jpg")  no-repeat;
                height:200px;

            }
            #card3{
                background: url("cd3.jpg") no-repeat;
                height:200px;
            }
            #card4{
                background: url("cd4.jpg") no-repeat;
                height:200px;
            }
            #card5{
                background: url("cd5.jpg") no-repeat;
                height:200px;
            }
            #card6{
                background: url("cd6.jpg") no-repeat;
                height:200px;
            }
            #card7{
                background: url("cd7.jpg") no-repeat;
                height:200px;
            }
            #card8{
                background: url("cd8.jpg") no-repeat;
                height:200px;
            }
            #card9{
                background: url("cd9.jpg") no-repeat;
                height:200px;
            }
        </style>
        <section class="pt-5 circle-1" style="overflow:hidden">

            <div class="ourworks-box container pb-5 pt-5">
                <h1 class="our-works-head">6 Million Success Stories & Counting</h1>
                <p>Check out what clients say about my services. Happy clients all over the world. Share your experience with me by submitting your reviews</p>
            </div>

            <div class="container pb-5 position-relative">
                <div id="demo" class="carousel slide position-relative" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class=""></li>
                        <li data-target="#demo" data-slide-to="1" class="active"></li>
                        <li data-target="#demo" data-slide-to="2" class=""></li>
                    </ul>


                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active carousel-item-left">
                            <div class="d-flex">
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card1">

                                        </div>
                                        <div class="flex-column-1">
                                            <p class="pr-2 pl-3 pt-4">Pooja's mother called on our number one evening and then we talked over phone. After sharing some photos of our families over whatsapp, it turned out that our families already knew each other for a long time. </p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p1">

                                            </div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Sanju & Pooja</p>
                                                <p class="text-gray">Managing Director</p>
                                            </div>
                                        </div>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">

                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card2">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">Thank you for making this site, it's amazing .I found my partner from this site. I suggest please create the id in Shadi.com finitely you will find your partner.</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p2">

                                            </div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Anamika & Rajesh</p>
                                                <p class="text-gray">Ceo &amp; Founder</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">

                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card3">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">I went to this small town in my car to see her first time. I was to meet her on Sunday..</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p3">

                                            </div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Bobby & Deepika</p>
                                                <p class="text-gray">Fashion Designer</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>	
                        <div class="carousel-item carousel-item-next carousel-item-left">
                            <div class="d-flex">
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">

                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card4">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">We came across our profiles on Shaadi in April 2022, and thought we could be an exact match and connected with each other.</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p1"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Pawan & Monali</p>
                                                <p class="text-gray">Ceo &amp; Founder</p>
                                            </div>
                                        </div>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card5">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">I finally found my angel and after meeting her i knew this was the end of my search for finding my lifetime partner.</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p2"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Manasi & Mamilla</p>
                                                <p class="text-gray">Ceo &amp; Founder</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card6">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">Yes, where there are many negative reviews floating around, I would definitely love to share my love story because it may inspire others too. Yes, we got to know each other through Bengali Shaadi.com</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p3"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Saumyadip & Maumita</p>
                                                <p class="text-gray">Fashion Designer</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>
                        <div class="carousel-item ">
                            <div class="d-flex">
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card7">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4"> found my life partner in this platform and am very happy that within a short span of time I met my perfect match.</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p1"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Pallab & Sangita</p>
                                                <p class="text-gray">Fashion Designer</p>
                                            </div>
                                        </div>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column ">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card8">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">We started our chat over Shaadi.com. I'm going through the most difficult time of my life, my father was seriously ill,</p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p2"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Pralay & Aparupa</p>
                                                <p class="text-gray">Founder</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-4 col-sm-12 col-12 d-flex flex-column">
                                    <a href="#" class="introduce pb-3">
                                        <div class="col-sm-12"id="card9">

                                        </div>
                                        <div class="flex-column-1 ">
                                            <p class="pr-2 pl-3 pt-4">We had met through community whatsapp group in April 2021 but things didn't workout due to multiple reasons and we couldn't meet due to the ongoing pandemic. </p>
                                        </div>
                                        <div class="flex-column-2 d-flex">
                                            <div class="pic p3"></div>
                                            <div class="information  flex-column pl-3 pt-2">
                                                <p>Shreyas & Kadambari</p>
                                                <p class="text-gray">Fashion Designer</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- Left and right controls -->

                    <a class="carousel-control-prev" href="#demo" data-slide="prev" style="opacity: 1; left: -10%;">
                        <i class="fa fa-angle-left" style="color:#5969f6; font-size:30px;"></i>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next" style="opacity: 1; transform: rotate(-180deg); right: -10%;">
                        <i class="fa fa-angle-left" style="color:#5969f6; font-size:30px;"></i>
                    </a>
                </div>
            </div>
            <br>
        </section>
        <!---------------------------------slider end------------------------------------------------------------------------------------------>
        <style>
            .btn.mt-2{
                border-color: white;
                width: 170px;
                font-size:15px;
                padding: 15px;
                background-color:#FF5864 ;
            }
            .btn.mt-2:hover{
                border-color: #FF5864;
                color:black;
                background-color:white ;
            }

        </style>
        <!-------get started button------------------------------------------------------------>         
        <div class="container-fluid mt-5" style="height:200px">
            <div class="row">
                <div class="col-sm-12 card " style="background-color: #FF5864; color:white;padding:20px">
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-5"> <center> <h3 style="margin-left:70px;margin-top:17px">Your story is waiting to happen!</h3></center></div>
                        <div class="col-sm-5"><button class="btn mt-2" >Get Started </button></div>
                    </div>
                </div>
            </div>
            <!--------------------------------- v logo ------------------------------------>
            <div class="row card-body mt-5">
                <div class="col-sm-12 card-body">
                    <div class="row card-body">
                        <div class="col-sm-6"></div>
                        <div class="col-sm-1">
                            <i class="fa fa-vimeo-square" style="font-size:70px;color:#FF5864;margin-left: -45px"></i>
                        </div>
                        <div class="col-sm-5"></div>
                    </div>
                </div>
            </div>
            <!------------------v logo end--------------------------------------------->

            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                            <h2 style="color:#FF5864;margin-left: 60px">Vivah.com - Trusted by over 35 Million Members</h2>
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

        <div class="container-fluid flex-grow-1 " style="margin-top:200px">
            <div class="row py-5">

            </div>
        </div>




        <footer class="bg-white">
            <div class="container py-5">
                <div class="row py-3">

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4">About</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-muted">Contact Us</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">About Us</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Stories</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Press</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4">Help</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-muted">Payments</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Shipping</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Cancellation</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Returns</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4">Policy</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-muted">Return Policy</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Terms Of Use</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Security</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Privacy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4">Company</h6>
                        <ul class="list-unstyled mb-0">
                            <li class="mb-2"><a href="#" class="text-muted">Login</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Register</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Sitemap</a></li>
                            <li class="mb-2"><a href="#" class="text-muted">Our Products</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-lg-0">
                        <h6 class="text-uppercase font-weight-bold mb-4">Registered Office Address</h6>
                        <p class="text-muted mb-4">Here , write the complete address of the Registered office address along with telephone number.</p>
                        <ul class="list-inline mt-4">
                            <li class="list-inline-item"><a href="#" target="_blank" title="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="facebook"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="instagram"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="pinterest"><i class="fa fa-youtube"></i></a></li>
                            <li class="list-inline-item"><a href="#" target="_blank" title="vimeo"><i class="fa fa-google"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr class="p-0 m-0 b-0">


            <div class="bg-light py-2">
                <div class="container text-center">
                    <p class="text-muted mb-0 py-2">&copy; 2019 BBBootstrap All risghts reserved.</p>

                </div>
            </div>

        </footer>
        <!---------------------------------model----------------------------->
        <script>
            $(document).ready(function() {
                $("#signup").click(function() {
                    $("#first").fadeOut("fast", function() {
                        $("#second").fadeIn("fast");
                    });
                });

                $("#signin").click(function() {
                    $("#second").fadeOut("fast", function() {
                        $("#first").fadeIn("fast");
                    });
                });
            });

            $(function() {
                $("form[name='login']").validate({
                    rules: {
                        email: {
                            required: true,
                            email: true
                        },
                        password: {
                            required: true,
                        }
                    },
                    messages: {
                        email: "Please enter a valid email address",
                        password: {
                            required: "Please enter password",
                        }

                    },
                    submitHandler: function(form) {
                        form.submit();
                    }
                });
            });



            $(function() {

                $("form[name='registration']").validate({
                    rules: {
                        firstname: "required",
                        lastname: "required",
                        email: {
                            required: true,
                            email: true
                        },
                        password: {
                            required: true,
                            minlength: 5
                        }
                    },
                    messages: {
                        firstname: "Please enter your firstname",
                        lastname: "Please enter your lastname",
                        password: {
                            required: "Please provide a password",
                            minlength: "Your password must be at least 5 characters long"
                        },
                        email: "Please enter a valid email address"
                    },
                    submitHandler: function(form) {
                        form.submit();
                    }
                });
            });

        </script>
        <style>
            a{
                text-decoration:none !important;
            }
            h1,h2,h3{
                font-family: 'Kaushan Script', cursive;
            }
            .myform{
                position: relative;
                display: -ms-flexbox;
                display: flex;
                padding: 1rem;
                -ms-flex-direction: column;
                flex-direction: column;
                width: 100%;
                pointer-events: auto;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid rgba(0,0,0,.2);
                border-radius: 1.1rem;
                outline: 0;
                max-width: 500px;
            }
            .tx-tfm{
                text-transform:uppercase;
            }
            .mybtn{
                border-radius:50px;
            }

            .login-or {
                position: relative;
                color: #aaa;
                margin-top: 10px;
                margin-bottom: 10px;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            .span-or {
                display: block;
                position: absolute;
                left: 50%;
                top: -2px;
                margin-left: -25px;
                background-color: #fff;
                width: 50px;
                text-align: center;
            }
            .hr-or {
                height: 1px;
                margin-top: 0px !important;
                margin-bottom: 0px !important;
            }
            .google {
                color:#666;
                width:100%;
                height:40px;
                text-align:center;
                outline:none;
                border: 1px solid lightgrey;
            }
            form .error {
                color: #ff0000;
            }
            #second{display:none;}

            .modal-body{
                margin-left: -320px;
                background: transparent;

            }
      </style>
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="model-content">
                    <div class="modal-body  " style="">
                        <div class="container">
                            <div class="row card-body">
                                <div class="col-md-5 mx-auto">
                                    <div id="first">
                                        <div class="myform form ">
                                            <div class="logo mb-3">
                                                <div class="col-md-12 text-center">
                                                    <h1>Login</h1>
                                                </div>
                                            </div>
                                  
                                                <form action="check.jsp" method="post" name="login" >
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                                      <%
                                                        if(email !=null){
                                                          out.print("<input type='text' class='form-control' readonly value="+email+" <br><br>");

                                                        }        
                                                               else{
                                                        %>
                                                    <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                                                <%
                                                    }
                                                %>
                                               </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Password</label>
                                                    <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                                                </div>
                                                <div class="form-group">
                                                    <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
                                                </div>
                                                <div class="col-md-12 text-center ">
                                                    <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                                                </div>
                                                <div class="col-md-12 ">
                                                    <div class="login-or">
                                                        <hr class="hr-or">
                                                        <span class="span-or">or</span>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mb-3">
                                                    <p class="text-center">
                                                        <a href="javascript:void();" class="google btn mybtn"><i class="fa fa-google-plus">
                                                            </i> Signup using Google
                                                        </a>
                                                    </p>
                                                </div>
                                                <div class="form-group">
                                                    <p class="text-center">Don't have account? <a href="#" id="signup">Sign up here</a></p>
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                    <div id="second">
                                        <div class="myform form "  style="width:1000px;background-color:#fff">
                                            <div class="logo mb-3">
                                                <div class="col-md-12 text-center">
                                                    <h1 >Signup</h1>
                                                </div>
                                            </div>
                                           <form action="detailsubmit.jsp" method="post"  name="registration">
                                                <div class="row">
                                                    <div class='col-sm-6 '>
                                                        <label for="exampleInputEmail1">First Name</label>
                                                        <input type="text"  name="firstname" class="form-control" id="firstname" aria-describedby="emailHelp" >
                                                        <label for="exampleInputEmail1">Last Name</label>
                                                        <input type="text"  name="lastname" class="form-control" id="lastname" aria-describedby="emailHelp" >
                                                         <label for="exampleInputEmail1">Email address</label>
                                                       <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" >
                                                       <label for="exampleInputEmail1">Password</label>
                                                         <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" >
                                                       
                                                         <label for="exampleInputEmail1">Caste</label>
                                                         <select name="caste" class="form-control"  required>
                                                            <option >Caste</option>
                                                            <option value="Jaat" >Jaat</option>
                                                            <option value="Rajput">Rajput</option>
                                                            <option value="Yadav">Yadav</option>
                                                            <option value="Agarwal">Agarwal</option>
                                                            <option value="Sharma">Sharma</option>
                                                         </select>
                                                         <label for="exampleInputEmail1" >Gender</label><br>
                                                       
                                                        <input type="radio" name="gender" value="Male" style=" transform:scale(1.2);margin-top:8px">&nbsp;&nbsp;<small>Male</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <input type="radio" name="gender" value="Female" style="transform:scale(1.2);margin-top:8px">&nbsp;&nbsp;<small>Female</small>

                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label for="exampleInputEmail1">Religion</label>
                                                        <select name="religion" class="form-control"  required>
                                                                <option>Select</option>
                                                                <option value="Hindu">Hindu</option>
                                                                <option value="Sikh">Sikh</option>    
                                                                <option value="Christian">Christian</option>
                                                                <option value="Parsi">Parsi</option>    
                                                                <option value="Jain">Jain</option>
                                                                <option value="Buddhist">Buddhist</option>    
                                                          </select>
                                                        <label for="exampleInputEmail1">Occupation</label>
                                                         <input type="text"  name="occu" class="form-control" id="occupation" aria-describedby="emailHelp" required>
                                                        
                                                         <label for="exampleInputEmail1">Birth</label>
                                                         <input type="date" name="birth" class="form-control"  required>
                                                        
                                                         <label for="exampleInputEmail1">Country</label>
                                                        <select name="country" class="form-control"  required>
                                                            <option >Country</option>
                                                            <option value="India">India</option>
                                                            <option value="Nepal">Nepal</option>
                                                            <option value="Russia">Russia</option>

                                                        </select>
                                                        
                                                       <label for="exampleInputEmail1">State</label>
                                                        <select name="state" class="form-control"  required>
                                                            <option >State</option>
                                                            <option value="Rajasthan">Rajasthan</option>
                                                            <option value="Tamil Nadu">Tamil Nadu</option>
                                                            <option value="Gujarat">Gujarat</option>
                                                            <option value="Goa">Goa</option>
                                                            <option value="Sikkim">Sikkim</option>
                                                        </select>
                                                        
                                                        <label for="exampleInputEmail1">City</label>
                                                        <select name="city" required class="form-control"  required>
                                                            <option>City</option>
                                                            <option value="Ahmadabad">Ahmadabad</option>
                                                            <option value="Agra">Agra</option>
                                                            <option value="Amaravati">Amaravati</option>
                                                            <option value="Bikaner">Bikaner</option>
                                                            <option value="Jaipur">Jaipur </option>
                                                            <option value="Chandigarh">Chandigarh</option>
                                                            <option value="New Delhi">New Delhi</option>
                                                             <option value="Patan">Patan</option>
                                                            <option value="Alwar">Alwar</option>
                                                            <option value="Bharatpur">Bharatpur</option>
                                                            <option value="Kota">Kota</option>
                                                            <option value="Sikar">Sikar</option>
                                                            <option value="Udaipur">Udaipur</option>
                                                       </select><br>  
                                                    </div>

                                                </div>
                                                <div class='row'>
                                                    <div class="col-md-12 text-center mb-3">
                                                      <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started For Free</button>
                                                  </div>
                                                  <div class="col-md-12 ">
                                                      <div class="form-group">
                                                          <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
                                                      </div>
                                                  </div>
                                                </div> 
                                            </form>
                                                
                                            </section>    
                                            

                                            <!----  <form action="#" name="registration">
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">First Name</label>
                                                      <input type="text"  name="firstname" class="form-control" id="firstname" aria-describedby="emailHelp" placeholder="Enter Firstname">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Last Name</label>
                                                      <input type="text"  name="lastname" class="form-control" id="lastname" aria-describedby="emailHelp" placeholder="Enter Lastname">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Email address</label>
                                                      <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Password</label>
                                                      <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Caste</label>
                                                        <select name="caste" class="form-control"  required>
                                                          <option >Caste</option>
                                                          <option value="Jaat" >Jaat</option>
                                                          <option value="Rajput">Rajput</option>
                                                          <option value="Yadav">Yadav</option>
                                                           <option value="Agarwal">Agarwal</option>
                                                          <option value="Sharma">Shrama</option>
                                                    </select>
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Password</label>
                                                      <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                                                  </div>
                                                  
                                                  
                                                
                                                  <div class="col-md-12 text-center mb-3">
                                                      <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Get Started For Free</button>
                                                  </div>
                                                  <div class="col-md-12 ">
                                                      <div class="form-group">
                                                          <p class="text-center"><a href="#" id="signin">Already have an account?</a></p>
                                                      </div>
                                                  </div>
                                          </div> 
                                          </form>--->
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
<%
        }
%>