<%-- 
    Document   : get_message
    Created on : 17 Jan, 2023, 2:18:04 PM
    Author     : 91635
--%>

<%@page contentType="text/html"  import="java.sql.*"pageEncoding="UTF-8"%>
<%


    String email = "";
    Cookie c[] = request.getCookies();
    for (int i = 0; i < c.length; i++) {
        if (c[i].getName().equals("mtr_login")) {
            email = c[i].getValue();
            break;
        }

    }
    if (email != null) {
        if (request.getParameter("code").length() > 0) {
            String code = request.getParameter("code");
            String to_email = "";
            String image="";
             String msg="";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
              
                Statement st = cn.createStatement();
                Statement st1 = cn.createStatement();
                 Statement st2 = cn.createStatement();
                
                ResultSet rs = st.executeQuery("select email from details where code='"+code+"'");
                if (rs.next()) {
                    ResultSet rs3 = st2.executeQuery("select code from details where email='"+email+"'");
                    if(rs3.next()){
                        image=rs3.getString("code");
                    }
                    to_email = rs.getString("email");
                  
                     ResultSet rs1 = st1.executeQuery("select  * from msg where to_email='" + to_email + "'");
                    while (rs1.next()) {
                         msg=rs1.getString("msg");
                    
%>
<div class="row mt-5">
    <div class="col-sm-6"></div>
    <div class="col-sm-6">
        <div class="row card-body">

           <div class="row card-body">
            <div class="col-sm-9  text-light" style="background-color:#6DB98B;border-top-left-radius: 20px;border-bottom-right-radius: 20px">
                <h6><%=msg%></h6>
            </div>
            <div class="col-sm-2">
                <img src="user_profile/<%=image%>.jpg"  style="height:40px;width:40px;border-radius:50%">
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
<!--    <div class="col-sm-6 mt-5">
        <div class="row card-body">
            <div class="col-sm-9  text-light" style="background-color:#6DB98B;border-top-left-radius: 20px;border-bottom-right-radius: 20px">
                <h6>After you get up and running, you can place Font Awesome icons just about anywhere with the </h6>
            </div>
            <div class="col-sm-2">
                <img src="user_profile/<%=image%>.jpg"  style="height:40px;width:40px;border-radius:50%">
            </div>
            <div class="col-sm-1"></div>

        </div>
    </div>-->




</div>
</div>


<%




                }
            }

        } catch (Exception e) { 
            
            out.println(e.getMessage());
        }
        }

    }
%>