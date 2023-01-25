<%-- 
    Document   : detailsubmit
    Created on : 10 Dec, 2022, 12:37:56 AM
    Author     : rahul
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*"pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
         int sn=0;
         String fname=(request.getParameter("firstname"));
         String lname=(request.getParameter("lastname"));
         String email=(request.getParameter("email"));
         String pass=(request.getParameter("password"));
         String gender=(request.getParameter("gender"));
         String caste=(request.getParameter("caste"));
         String religion=(request.getParameter("religion"));
         String occu=(request.getParameter("occu"));
         String birth=(request.getParameter("birth"));
         String city=(request.getParameter("city"));
         String state=(request.getParameter("state"));
         String country=(request.getParameter("country"));
         
    
          try{
			
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
		 Statement st=cn.createStatement();
	                  ResultSet rs=st.executeQuery("select MAX(sn) from details");
              
                 if(rs.next()){
                     sn=rs.getInt(1);
                 }
                 sn++;
                 
                 LinkedList ls=new LinkedList();
                 for(int i=1;i<9;i++){
                     ls.add(new Integer(i));
                 }
                 for(char c='A'; c<='Z'; c++){
                     ls.add(c);
                 }
                 for(char c='a'; c<='z'; c++){
                     ls.add(c);
                 }
                 String code="";
                 Collections.shuffle(ls);
                 for(int i=0;i<6;i++){
                   code=code+ls.get(i);
                 
                 }
                 code=sn+"_"+code;
                 if(st.executeUpdate("insert into details values("+sn+",'"+code+"','"+fname+"','"+lname+"','"+email+"','"+pass+"','"+gender+"','"+caste+"','"+religion+"','"+occu+"','"+birth+"','"+city+"','"+state+"','"+country+"')")>0){
                 
                       response.sendRedirect("index.jsp");
                    }
                 
         } 
                 
            catch(Exception e){
                
                out.print(e.getMessage()); 
                
                
                
            } 



       
        %>
        
    </body>
</html>
