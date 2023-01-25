<%-- 
    Document   : search
    Created on : 17 Jan, 2023, 8:23:16 PM
    Author     : 91635
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search</title>
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
                                <a href="profile.jsp">Home</a>
                                <a href="">My Photo</a>
                                <a href="change_pass.jsp">Change password</a>
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
        <!------------------nav end ------------------------------------------------------>



        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-7 ">
                            <div class="row ml-5">
                                <div class="col-sm-10">
                                    <input class="form-control ml-5 " id="search" style="border-radius:5px;width:93%;transform:scale(1.1)" type="search" placeholder="Search Profile or Matches">
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-success fa fa-search"  style="margin-top:3px;border-radius:0px;transform:scale(1.39);border-bottom-right-radius: 3px;border-top-right-radius: 3px" type="submit">Search</button>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-3">

                        </div>
                    </div>

                </div>
            </div>
            <!----------search row end --------------------->
            <!-----------------------showing profile ---------------------------------->
            <script>
                $(document).ready(function() {
                    //search profile    
                    var sch="";
                    $("#search").keyup(function() {
                     sch = $(this).val();

                        $.post(
                                "search_record.jsp", {txt: sch}, function(data) {
                                 data = data.trim();
                                 $("#show_profile").slideDown(1500);
                                 $("#show_profile").html(data);
                        });
                    });
                    //search profile end
                    //send request
                    $(document).on("click", ".btn.btn-primary", function() {
                        var user_code = $(this).attr("id");
                        
                        $.post(
                                
                                "request_send.jsp", {user_code: user_code}, function(data) {
                                  data = data.trim();
                               
                                 if (data==='success') {
                                      $("button[rel=pending_"+user_code+" ]").removeClass("btn btn-primary");
                                      $("button[rel=pending_"+user_code+" ]").addClass("btn btn-warning");
                                       $("button[rel=pending_"+user_code+" ]").text("pending");
                                    
                                       
                                  }
                                else {
                                
                                      alert(data);
                                }
                       });
                    });
                    //send request end      
                });



            </script>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-7" id="show_profile" style="padding-left: 70px;"></div>
                
            </div>
        </div>
    </body>
</html>
