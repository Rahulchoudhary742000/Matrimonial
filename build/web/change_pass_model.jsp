<%-- 
    Document   : change_pass_model
    Created on : 20 Jan, 2023, 7:26:07 PM
    Author     : 91635
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <div class="modal" id="changepassword" style="margin-top:50px;">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-body" style="background-color:white">
                        <div class="container-fluid">
                            <div class="row">
                                  <div class="col-sm-12"> 
                                    <center><h5 class="card-header">Change Password</h5></center>
                                    <div class="row mt-5">
                                    <form method="POST" action="change_pass.jsp" >
                                        
                                         <div class="col-sm-12 mt-5">
                                             <b>Current Password</b>
                                             <input type="password" name="cp" id="cp" required class="form-control">
                                         </div>
                                         <div class="col-sm-12 mt-5">
                                             <b>New Password</b>
                                             <input type="password" name="np" id="np" disabled required class="form-control" >
                                         </div>
                                        <div class="col-sm-12 mt-5">
                                             <b>Confirm Password</b>
                                             <input type="password" name="rp" id="rp" required disabled class="form-control" >
                                         </div>
                                        <div class="col-sm-12 mt-5">
                                               <button class="btn btn-success float-right" disabled >Continue</button>
                                        </div>
                                     </form>    
                                    </div>
                                </div>       
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
