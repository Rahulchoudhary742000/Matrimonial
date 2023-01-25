<%-- 
    Document   : check
    Created on : 9 Dec, 2022, 10:21:58 PM
    Author     : rahul
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        Cookie c[]=request.getCookies();
        String email=null;
        for(int i=0;i<c.length;i++){
           
                    if(c[i].getName().equals("mtr_login")){

                   email=c[i].getValue();
                   break;
                }
        
        }
        
      if(email==null){
            if(request.getParameter("email").trim().length()>0){
                email=request.getParameter("email");
            }
            else{
                response.sendRedirect("index.jsp");
            }
        }
        
      if( request.getParameter("password").trim().length()>0 ){
            
                String pass=request.getParameter("password");
       
        try{
			
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
		 Statement st=cn.createStatement();
	                  ResultSet rs=st.executeQuery("select * from details where email='"+email+"'");
              
                 if(rs.next()){
                          if(rs.getString("password").equals(pass)){
       
                           Cookie cr=new Cookie("mtr_login",email);
                           cr.setMaxAge(3600);
                           response.addCookie(cr);
                           session.setAttribute(email,pass);
                           session.setMaxInactiveInterval(10000);
                           response.sendRedirect("profile.jsp");
                        }
                        else{
                         
                           response.sendRedirect("index.jsp?invalid_password");
                        }
                 }
                 else{
                 
                      response.sendRedirect("index.jsp?invalid_email");
                 
                 }
        }
       catch(Exception e){
       
                 out.print(e.getMessage());
       } 
    }
    else{
         
          response.sendRedirect("index.jsp?empty=1");
         
         }          



       %>
    </body>
</html>
