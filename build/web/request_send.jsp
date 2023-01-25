<%-- 
    Document   : request_send
    Created on : 18 Jan, 2023, 12:28:21 PM
    Author     : 91635
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
    Cookie c[] = request.getCookies();
    String email = null;
    for (int i = 0; i < c.length; i++) {

        if (c[i].getName().equals("mtr_login")) {

            email = c[i].getValue();
            break;
        }
    }
    if (request.getParameter("user_code").trim().length() > 0) {

        String user_code = request.getParameter("user_code");
        String user_email = "";
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
            Statement st = cn.createStatement();
            Statement st1 = cn.createStatement();
            Statement st2 = cn.createStatement();
            ResultSet rs = st.executeQuery("select email from details where code='" + user_code+ "'");
          
            if (rs.next()) {

                user_email = rs.getString("email");

            }
            ResultSet rs1 = st1.executeQuery("select * from request where to_email='" + user_email + "'AND from_email='"+email+"'");
            if (rs1.next()) {

                    String already = rs1.getString("to_email");

                        if (already.equals(user_email)) {

                            out.print("request already send");
                        } 
                
                      else {
                            
                           

                        }

              }
            else{
               
                 if (st2.executeUpdate("insert into request values('"+email+"','"+user_email+"',"+1+","+0+")") > 0) {

                                out.print("success");
                    }
            
            }

        } catch (Exception e) {

            out.print(e.getMessage());
        }


    }



%>
