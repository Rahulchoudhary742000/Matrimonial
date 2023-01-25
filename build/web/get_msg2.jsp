<%-- 
    Document   : get_msg2
    Created on : 18 Jan, 2023, 10:22:40 PM
    Author     : 91635
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
   

    Cookie c[] = request.getCookies();
    String email = "";
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
            String image = "";
            String msg = "";
            String sender = "";
            String mymsg = "";
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
                Statement st = cn.createStatement();
                Statement st1 = cn.createStatement();
                Statement st2 = cn.createStatement();
                Statement st3 = cn.createStatement();
                Statement st4 = cn.createStatement();
                ResultSet rs = st.executeQuery("select * from details where code='" + code + "'");
%>
<div class="row">
    <div class="col-sm-12">
        <%
            int n = 0;
            int m = 0;
            if (rs.next()) {
                image = rs.getString("code");
                String image1 = "";
                sender = rs.getString("email");
                ResultSet rs1 = st1.executeQuery("select count(*) from msg where to_email='" + email + "' AND email='" + sender + "'");
                if (rs1.next()) {
                    n = rs1.getInt(1);
                }
                int arr[] = new int[n];
                String send1[] = new String[n];
                int i = 0;
                ResultSet rs2 = st2.executeQuery("select * from msg where to_email='" + email + "' AND email='" + sender + "'");
                while (rs2.next()) {
                    image1 = rs2.getString("to_code");
                    send1[i] = rs2.getString("msg");
                    arr[i] = rs2.getInt("sn");
                    i++;
                }
                ResultSet rs3 = st3.executeQuery("select count( *) from msg where email='" + email + "' AND to_email='" + sender + "'  ");
                if (rs3.next()) {
                    m = rs3.getInt(1);
                }
                int arr1[] = new int[m];
                String reply1[] = new String[m];
                int j = 0;
                ResultSet rs4 = st4.executeQuery("select * from msg where email='" + email + "' AND to_email='" + sender + "'  ");
                while (rs4.next()) {
                    arr1[j] = rs4.getInt("sn");
                    reply1[j] = rs4.getString("msg");
                    j++;
                }

                int num = m + n;
                int index = 0;
                int index1 = 0;

                while (index < arr.length && index1 < arr1.length) {

        %>
        <div class="row">
            <%
                while (index < arr.length && index1 < arr1.length && arr1[index1] < arr[index]) {

            %>

            <!-- rahul msg col start----------------------->
            <div class="col-sm-12">
                <div class="row card-body">

                    <div class="row card-body">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-6  text-light" style="background-color:#6DB98B;border-top-right-radius: 20px;border-bottom-left-radius: 20px">
                            <h6><%=reply1[index1]%></h6>
                        </div>

                        <div class="col-sm-1">
                            <img src="user_profile/<%=image1%>.jpg"  style="height:40px;width:40px;border-radius:50%">
                        </div>
                        <div class="col-sm-1"></div>
                    </div>
                </div>
            </div>
            <%
                    index1++;

                }
                while (index < arr.length && index1 < arr1.length && arr[index] < arr1[index1]) {
            %>
            <!-- rahul msg col end----------------------->

            <!-- neha msg col start----------------------->
            <div class="col-sm-12 ">
                <div class="row card-body">

                    <div class="row card-body">
                        <div class="col-sm-1">
                            <img src="user_profile/<%=image%>.jpg"  style="height:40px;width:40px;border-radius:50%">
                        </div>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-6 text-light" style="background-color:#6DB98B;border-top-left-radius: 20px;border-bottom-right-radius: 20px">

                            <h6><%=send1[index]%></h6>


                        </div>
                        <div class="col-sm-4"></div>


                    </div>
                </div>
            </div>
            <%
                    index++;
                }

            %>
            <!-- neha msg col end----------------------->
        </div>       

        <%
            }

            while (index1 < arr1.length) {

        %>

        <!-- rahul msg col start----------------------->
        <div class="row">
            <div class="col-sm-12">
                <div class="row card-body">

                    <div class="row card-body">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-6  text-light" style="background-color:#6DB98B;border-top-right-radius: 20px;border-bottom-left-radius: 20px">
                            <h6><%=reply1[index1]%></h6>
                        </div>
                        <div class="col-sm-1">
                            <img src="user_profile/<%=image1%>.jpg"  style="height:40px;width:40px;border-radius:50%">
                        </div>
                        <div class="col-sm-1"></div>

                    </div>
                </div>
            </div>
        </div>
        <%
                index1++;

            }
        %>

        <%
            while (index < arr.length) {

        %>

        <!-- rahul msg col start----------------------->
        <div class="row">
            <div class="col-sm-12">
                <div class="row card-body">

                    <div class="row card-body">
                        <div class="col-sm-1">
                            <img src="user_profile/<%=image%>.jpg"  style="height:40px;width:40px;border-radius:50%">
                        </div>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-6  text-light" style="background-color:#6DB98B;border-top-right-radius: 20px;border-bottom-left-radius: 20px">
                            <h6><%=send1[index]%></h6>
                        </div>

                        <div class="col-sm-4"></div>
                    </div>
                </div>
            </div>
        </div>
        <%
                    index++;

                }

            }



        %>
    </div>   
</div>

<%
            } catch (Exception e) {

                out.println(e.getMessage());
            }
        }
    }
%>