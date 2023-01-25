<%-- 
    Document   : msg
    Created on : 17 Dec, 2022, 11:09:49 PM
    Author     : rahul
--%>
<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
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
        if(email !=null && session.getAttribute(email) !=null){
                if(request.getParameter("reciver_code").length()>0){
             
                     int sn=0;
                     String to_code=request.getParameter("reciver_code");
                     String from_code="";
                     String to_email="";
                     String dt=new java.util.Date()+"";
                     String msg=request.getParameter("message");
                    
                     try{
                     
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                         PreparedStatement ps=cn.prepareStatement("select * from details where email=?");
                         ps.setString(1,email);
                         ResultSet rs=ps.executeQuery();
                     
                         if(rs.next()){
                         
                           from_code=rs.getString("code");
                 
                         }
                         ps=cn.prepareStatement("select * from details where code=?");
                         ps.setString(1,to_code);
                         rs=ps.executeQuery();
                          
                          if(rs.next()){
                          
                             to_email=rs.getString("email");
                          
                          }
 
                         rs=ps.executeQuery("select MAX(sn) from msg");
                         if(rs.next()){
                         sn=rs.getInt(1);
                         }
                         sn++;

                         LinkedList ls=new LinkedList();
                         for(int i=1;i<9;i++){
                             ls.add(new Integer(i));
                         }
                         for(char ch='A'; ch<='Z'; ch++){
                             ls.add(ch);
                         }
                         for(char ch='a'; ch<='z'; ch++){
                             ls.add(ch);
                         }
                         String code="";
                         Collections.shuffle(ls);
                         for(int i=0;i<6;i++){
                           code=code+ls.get(i);

                         }
                         code=sn+"_"+code;
                        ps=cn.prepareStatement("insert into msg values(?,?,?,?,?,?,?,?)");
                         ps.setInt(1,sn);
                         ps.setString(2,code);
                         ps.setString(3,email);
                         ps.setString(4,to_email);
                         ps.setString(5,from_code);
                         ps.setString(6,to_code);
                         ps.setString(7,msg);
                         ps.setString(8,dt);
                         
                        if(ps.executeUpdate()>0){
                            
                        
                        }
                 
                     } 
                     
                      catch(Exception e){
                         out.print(e.getMessage());
                      
                     }
                     
                     
                   }   
                     
                     
                     
                }
        
                    
        %>

