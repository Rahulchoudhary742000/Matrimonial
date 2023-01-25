<%-- 
    Document   : inbox
    Created on : 16 Jan, 2023, 5:12:47 PM
    Author     : 91635
--%>
<%@include  file= "change_pass_model.jsp" %>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String image = "";
    String em1 = "";
    String em = "";
    Cookie c[] = request.getCookies();
    String email = null;
    for (int i = 0; i < c.length; i++) {

        if (c[i].getName().equals("mtr_login")) {

            email = c[i].getValue();
            break;
        }

    }
    if (email != null && session.getAttribute(email) != null) {



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>inbox</title>
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
            /* width */
            ::-webkit-scrollbar {
                width: 10px;

            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1; 

            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888; 
                border-radius:10px;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #8F7A8D; 
            }
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
        <!---------------------nav ---------------------->   
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
        <!---------------------nav end---------------------->     
        <div class="container">
            <div class="row mt-5" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                <div class="col-sm-6" >
                    <div class="row">
                        <div class="col-sm-12 card-header" ><h4 >Inbox</h4></div>

                        <div class="col-sm-12 card" " style="height:380px;overflow-y:scroll;overflow-x:hidden;border-radius: 0px" >
                            <script>
                                $(document).ready(function() {
                                    $(".col-sm-12.mt-3").on("click", function() {
                                        var code = $(this).attr("rel");
                                        $.post(
                                                "get_message.jsp", {code: code}, function(data) {

                                            $("#show_message").html(data.trim());
                                        }


                                        );
                                    });
                                });

                            </script>

                            <%
                                String fname = "";
                                String lname = "";
                                String from_email = "";
                                String to_email = "";
                                String login_user_code = "";
                                try {

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
                                    Statement st = cn.createStatement();
                                    Statement st1 = cn.createStatement();
                                    Statement st2 = cn.createStatement();
                                    ResultSet rs3 = st.executeQuery("select * from details");
                                     Statement st8 = cn.createStatement();
                                    ResultSet rs8 = st8.executeQuery("select code from details  where email='"+email+"' ");
                                    if(rs8.next()){
                                        login_user_code=rs8.getString("code");
                                    }
                                    while (rs3.next()) {
                                        String myemail = rs3.getString("email");
                                        boolean flag = false;
                                        ResultSet rs = st.executeQuery("select * from request where to_email='" + email + "'AND from_email='" + myemail + "' AND req=" + 1 + "");
                                        while (rs.next()) {
                                            flag = true;
                                            from_email = rs.getString("from_email");
                                            ResultSet rs2 = st1.executeQuery("select * from details where email='" + from_email + "'");
                                            if (rs2.next()) {
                                                image = rs2.getString("code");
                                                fname = rs2.getString("fname");
                                                lname = rs2.getString("lname");

                                            }
                            %>
                       <div class="row" style="cursor:pointer;">
                                <div class="col-sm-12  mt-3 mb-3"  rel="<%=image%>" rel1='<%=login_user_code%>'style=" display: grid;
                                     grid-template-columns: 5em 200px 30%;
                                     grid-template-rows:40px auto;
                                     gap: 10px;">
                                    <div class="item"> <img src="user_profile/<%=image%>.jpg"    id="col_sm_12_mt_3_mb_3_image_<%=image%>" style="height:70px;width:70px;border-radius:50%"></div>
                                    <div class="item"><h5 style="padding:10px" ><strong id="col_sm_12_mt_3_mb_3_name_<%=image%>"><%=fname%><%=lname%></strong></h5></div>



                                </div>
                                <div class="col-sm-12 mt-5 mb-0 card bg-light">

                                </div>

                            </div>

                            <%
                                }

                                ResultSet rs1 = st1.executeQuery("select * from request where  from_email='" + email + "'  AND req=" + 1 + "");
                                while (rs1.next()) {
                                    from_email = rs1.getString("to_email");

                                    ResultSet rs2 = st2.executeQuery("select * from details where email='" + from_email + "'");
                                    if (rs2.next()) {
                                        image = rs2.getString("code");
                                        fname = rs2.getString("fname");
                                        lname = rs2.getString("lname");

                                    }

                            %>

                            <div class="row" style="cursor:pointer;">
                                <div class="col-sm-12  mt-3 mb-3"  rel="<%=image%>"rel1='<%=login_user_code%>'style=" display: grid;
                                     grid-template-columns: 5em 200px 30%;
                                     grid-template-rows:40px auto;
                                     gap: 10px;">
                                    <div class="item"> <img src="user_profile/<%=image%>.jpg"    id="col_sm_12_mt_3_mb_3_image_<%=image%>" style="height:70px;width:70px;border-radius:50%"></div>
                                    <div class="item"><h5 style="padding:10px" ><strong id="col_sm_12_mt_3_mb_3_name_<%=image%>"><%=fname%><%=lname%></strong></h5></div>



                                </div>
                                <div class="col-sm-12 mt-5 mb-0 card bg-light">

                                </div>

                            </div>
                            <%
                                        }


                                    }
                                } catch (Exception e) {
                                }

                            %>        
                        </div> 
                    </div> 
                </div>

                <%

                    } else {

                        response.sendRedirect("index.jsp");

                    }%>

                    <div class="col-sm-6 "  >
                    <div class="row">
                         <div class="col-sm-12 card-header "  style="poistion:fixed;width:100%">
                             <div class="row">
                                 <div class="col-sm-5" id='user_login_chat_icon'>
                                   
                                         
                                 </div>
                                 <div class='col-sm-7'><h4>Message</h4></div>
                             </div>
                             
                         </div>
                    </div>
                    <div class="row " style="height:350px;overflow-y:scroll;overflow-x:hidden" >
                       
                        <div class="col-sm-12 mb-5" id="show_message">
                            
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $(".col-sm-12.mt-3.mb-3").on("click", function() {
                    $(".btn-rounded.btn.btn-primary.fa.fa-paper-plane").attr("id", $(this).attr("rel"));
                    $("#type_your_message").prop('disabled', false);
                    $(".btn-rounded.btn.btn-primary.fa.fa-paper-plane").prop('disabled', false);
                    var name = $("#col_sm_12_mt_3_mb_3_name_" + $(this).attr("rel")).text();
                    $(".btn-rounded.btn.btn-primary.fa.fa-paper-plane").attr("rel", $(this).attr("rel1"));
                    var src = $("#col_sm_12_mt_3_mb_3_image_" + $(this).attr("rel")).attr("src");

                    $("#user_login_chat_icon").html("<img src='user_profile/" + $(this).attr("rel") + ".jpg'  class='img-fluid' style='height:40px;width:40px;border-radius:50%'><b style='padding:10px'>" + name + "</b>");
                    var code = $(this).attr("rel");
                  
                    $.post(
                            "get_msg2.jsp", {code: code}, function(data) {
                            $("#show_message").html(data.trim());
                    });


                });
                $(".btn-rounded.btn.btn-primary.fa.fa-paper-plane").on("click", function() {
                    var message = $("#type_your_message").val();
                    var reciver_code = $(this).attr("id");
                    var img_code = $(this).attr("rel");
                   
                    $.post(
                            "message.jsp", {message: message, reciver_code: reciver_code}, function(data) {
                        $("#show_message").append("  <div class='row card-body'><div class='col-sm-4'></div><div class='col-sm-6  text-light' style='background-color:#6db98b;border-top-right-radius: 20px;border-bottom-left-radius: 20px'><h6>" + message + "</h6></div><div class='col-sm-1'><img src='user_profile/" + img_code + ".jpg'  style='height:40px;width:40px;border-radius:50%'></div><div class='col-sm-1'></div><div class='col-sm-2'></div></div>");
                        $("#type_your_message").val("");
                    });

                });

            });
        </script>


        <div class="type_message position-fixed " style="margin-top:-68px;right:70px;width:570px" >
            <div class="row" >
                <div class="col-sm-12 mt-4" style="display:flex">
                    <textarea class="form-control"  id="type_your_message" disabled  rows="2" style="resize:none;border-radius:0px" placeholder="Type your message....."></textarea>
                    <button class='btn-rounded btn btn-primary fa fa-paper-plane'  disabled id=""  rel=""style="border-radius:0px;width:70px"></button>
                </div>
            </div>
        </div>
    </body>
</html>
