<%-- 
    Document   : request_accept
    Created on : 18 Jan, 2023, 5:48:10 PM
    Author     : 91635
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
    String user_code = request.getParameter("code");
    String from_email="";
    Cookie c[] = request.getCookies();
    String email = null;
    for (int i = 0; i < c.length; i++) {

        if (c[i].getName().equals("mtr_login")) {

            email = c[i].getValue();
            break;
        }
    }
    if (request.getParameter("code").trim().length() > 0) {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
            Statement st = cn.createStatement();
            Statement st1 = cn.createStatement();
            ResultSet rs=st.executeQuery("select email from details where code='" + user_code+ "'");
            if(rs.next()){
                from_email=rs.getString("email");
            }
            
            if (st1.executeUpdate("update request set req=" +1+ " where to_email='" + email + "' AND from_email='"+from_email+"'") > 0) {
               
                       out.print("success");
            }
        }
        catch (Exception e) {
            out.print(e.getMessage());
        }
       
    }
%>