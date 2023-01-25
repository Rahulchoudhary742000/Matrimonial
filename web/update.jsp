<%-- 
    Document   : update
    Created on : 9 Dec, 2022, 11:45:34 PM
    Author     : rahul
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
       
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String gender=request.getParameter("gender");
        String caste=request.getParameter("caste");
        String religion=request.getParameter("religion");
        String occupation=request.getParameter("occu");
        String birth=request.getParameter("birth");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String country=request.getParameter("country");
        
       
        
         try{
			
		 Class.forName("com.mysql.jdbc.Driver");
	                  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
		 Statement st=cn.createStatement();
                 
                 if(st.executeUpdate("update details set fname='"+fname+"',lname='"+lname+"',gender='"+gender+"',caste='"+caste+"',religion='"+religion+"',occupation='"+occupation+"',birth='"+birth+"',city='"+city+"',state='"+state+"',country='"+country+"' where email='"+email+"'")>0){
                     response.sendRedirect("dashboard.jsp?success=1");
            
                 }
                 else{
                         response.sendRedirect("dashboard.jsp?tryagain=1");
                 
                 }
       
         }
        catch(Exception e){
         
              out.print(e.getMessage());
         }   
        
        
       
       }



         %>
 