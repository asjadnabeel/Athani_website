<%-- 
    Document   : add_des_action
    Created on : Apr 8, 2018, 3:02:46 AM
    Author     : Cabal Technologies
--%>

<%@page import="conn.Connclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String pa=session.getAttribute("id1").toString();
           Connclass c=new Connclass(pa);
       String regno=request.getParameter("regno");
       String des=request.getParameter("des");
       String pre=request.getParameter("pres");
       String date1=request.getParameter("date1");
       String k="insert into description(regno,date1,des,pres)values('"+regno+"','"+date1+"','"+des+"','"+pre+"')";
       int g=c.insert(k);
       if(g>0)
       {
         response.sendRedirect("doctor_add_prescription.jsp?name1="+regno+"&id1=suc");
       }
       else
       {
           
       }
       
       %>
    </body>
</html>
