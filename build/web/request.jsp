<%-- 
    Document   : request
    Created on : 18 Jan, 2023, 12:15:38 PM
    Author     : 91635
--%>
<%@include  file= "change_pass_model.jsp" %>
<%@page contentType="text/html"import="java.sql.*"  pageEncoding="UTF-8"%>
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
                                <a href="#">More</a>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.jsp"  style="text-decoration: none;color:white; font-size: 16px; margin-left: 40px">𝗟𝗼𝗴𝗼𝘂𝘁</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!-------------------------nav end-------------------------------->


        <div class="container">
            <div class="row mt-5" >
                <div class="col-sm-3"></div>
                <div class="col-sm-6" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);" >
                    <div class="row">
                        <div class="col-sm-12 card-header" ><h4 >Request</h4></div>

                        <div class="col-sm-12 card" " style="height:380px;overflow-y:scroll;overflow-x:hidden;border-radius: 0px" >
                            <script>
                                $(document).ready(function() {
                                        $(".btn.btn-success").on("click",function(){
                                            var code=$(this).attr("id");
                                            $.post(
                                                    
                                                  "request_accept.jsp",{code:code},function(data){ 
                                                    data=data.trim();
                                                     if(data==='success'){
                                                            window.location.replace("inbox3.jsp");

                                                     }
                                                  }
            
                                            );
                                           
                                        });
                                });

                            </script>

                            <%

                                try {
                                    String user_code="";
                                    String sender_email="";
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
                                    Statement st = cn.createStatement();
                                    Statement st1= cn.createStatement();
                                    Statement st2= cn.createStatement();
                                    ResultSet rs = st.executeQuery("select * from request where to_email='"+email+"' AND req="+0+" ");
                                    
                                  while(rs.next()){
                                             sender_email=rs.getString("from_email");
                                   
                                    ResultSet rs1 = st1.executeQuery("select * from details where email='"+sender_email+"'");
                                   
                                     if(rs1.next()) {
                                                
                                                
                                               
                                                %> 

                            <div class="row" style="cursor:pointer;">
                                <div class="col-sm-8  mt-3"  rel="<%=image%>"style=" display: grid;
                                     grid-template-columns: 5em 200px 30%;
                                     grid-template-rows:40px auto;
                                     gap: 10px;">
                                    <div class="item"> <img src="user_profile/<%=rs1.getString("code")%>.jpg"style="height:70px;width:70px;border-radius:50%"></div>
                                    <div class="item"><h5 style="padding:10px" ><strong><%=rs1.getString("fname")%><%=rs1.getString("lname")%></strong></h5></div>
                                    
                                </div>
                                    <div class="col-sm-4 mt-5">
                                        <button class="btn btn-success" id="<%=rs1.getString("code")%>">Accept</button>
                                    <button class="btn btn-danger">Reject</button>
                                    </div>   
                                <div class="col-sm-12 mt-5 mb-0 card bg-light">

                                </div>

                            </div>




                            <%
                                                
                                            }
                                        }
                                }
                                catch (Exception e) {
                                }

                            %>        
                        </div> 
                    </div> 
                </div>

                <%

                    } else {

                        response.sendRedirect("index.jsp");

                    }%>

                <div class="col-sm-3"></div>
            </div>
        </div>
        
    </body>
</html>
