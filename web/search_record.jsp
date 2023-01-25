<%-- 
    Document   : record
    Created on : 30 Dec, 2022, 12:58:06 PM
    Author     : 91635
--%>

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
    if (request.getParameter("txt").trim().length() > 0) {

        String s = request.getParameter("txt");
      
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
            Statement st=cn.createStatement();
            Statement st1=cn.createStatement();
            Statement st2=cn.createStatement();
            PreparedStatement ps = cn.prepareStatement("select * from details where fname LIKE '%" + s + "%' AND  email<>'"+email+"' ");
            ResultSet rs = ps.executeQuery();
           
%>


                <div class="row mt-5" style="box-shadow: 1px 1px 5px rgba(0,0,0,0.4);border-radius:10px">
                    <div class="col-sm-12" >
                    <%
                        while (rs.next()) {
                             String user_email=rs.getString("email");
                             ResultSet rs1=st.executeQuery("select * from request where to_email='"+user_email+"' AND from_email='"+email+"'");
                             ResultSet rs2=st1.executeQuery("select * from request where to_email='"+user_email+"' AND from_email='"+email+"' AND req="+1+"");
                             ResultSet rs3=st2.executeQuery("select * from request where from_email='"+user_email+"' AND to_email='"+email+"' AND req="+1+"");
                            String reciver_email="";
                            String reciver_email2="";
                            String reciver_email3="";
                            if(rs1.next()){
                             
                                reciver_email=rs1.getString("to_email");
                                  
                            }
                            if(rs2.next()){
                              reciver_email2=rs2.getString("to_email");
                            }
                            if(rs3.next()){
                                reciver_email3=rs3.getString("from_email");
                            }
                    %>
                  <div class="row mt-5 ">
                      <div class="col-sm-12 ">
                          <div class="row">
                              
                         
                      <div class="col-sm-1"></div>
                        <div class="col-sm-2">
                            <img src="user_profile/<%=rs.getString("code")%>.jpg" class="img-fluid" style="width:60px;height:60px; border-radius: 50px" >
                        </div>
                        <div class="col-sm-4">
                            <h4> <%=rs.getString("fname")%> <%=rs.getString("lname")%></h4>
                        </div>
                        <div class="col-sm-2"></div>
                        <div class="col-sm-3">
                          
                            <%
                                if(user_email.equals(reciver_email2)||user_email.equals(reciver_email3)){
                                %>
                             <a href="inbox3.jsp" class="btn btn-secondary">
                                Message
                              </a>
                               <%
                                } 
                                else if(user_email.equals(reciver_email)){
                                %>
                                  <button id="<%=rs.getString("code")%>" class="btn btn-warning">
                                 Pending
                                 </button>
                                <%
                                }
                                 else{
                                %>
                               
                               
                                <button id="<%=rs.getString("code")%>"  rel="pending_<%=rs.getString("code")%>"class="btn btn-primary">
                                Request
                              </button>
                              
                              <%
                                }
                              %>
                   
                        </div>
                            
                    </div>
                        <hr>        
                    <%

                        }
                    %>
                </div>
                 </div>
                      </div>
               </div>
          
<%
    } 
        catch (Exception e) {
    }

    }
%>

