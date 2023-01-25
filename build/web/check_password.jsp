<%-- 
    Document   : check_password
    Created on : 20 Jan, 2023, 6:10:54 PM
    Author     : 91635
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
 String cp=request.getParameter("cp");
 Cookie c[] = request.getCookies();
    String email = null;
    for (int i = 0; i < c.length; i++) {

        if (c[i].getName().equals("mtr_login")) {

            email = c[i].getValue();
            break;
        }

    }
   if (email != null && session.getAttribute(email) != null) {
   
          try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial", "root", "");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("select * from details where email='"+email+"'");
    
            if(rs.next()){
            
                 if(rs.getString("password").equals(cp)){
                      out.print("cp_match");
                }
                
                 else{
                     out.print("mismatch");
                  
                 }
            }
          }
          catch(Exception e){
          
               out.print(e.getMessage());
          
          }
   
   }








%>
