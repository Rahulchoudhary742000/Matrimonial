<%-- 
    Document   : changepass1
    Created on : 9 Dec, 2022, 11:59:12 PM
    Author     : rahul
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

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
        
          response.sendRedirect("index.jsp");
        
        }
        else{
        
        if(request.getParameter("cp").trim().length()>0 && request.getParameter("np").trim().length()>0 && request.getParameter("rp").trim().length()>0){
         
         String currentpass=request.getParameter("cp");
         String newpass=request.getParameter("np");
         String retypepass=request.getParameter("rp");
         
              try{
             
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
		 Statement st=cn.createStatement();
		
                 ResultSet rs=st.executeQuery("select password from details where  email='"+email+"'");
               
                  if(rs.next()){
                  
                            if(rs.getString("password").equals(currentpass)){

                                     if(newpass.equals(retypepass)){
                                      
                                            if(st.executeUpdate("update details set password='"+newpass+"' where email='"+email+"'")>0){
                                                 response.sendRedirect("logout.jsp");

                                                 }
                                           else{
                                                response.sendRedirect("profile.jsp?Try again");

                                              }

                                     }
                                    
                            }

                           
                  }
                 
              }

             catch(Exception e){
             
             
                out.print(e.getMessage());
             
             
             }                             
     }
  }
        %>
    