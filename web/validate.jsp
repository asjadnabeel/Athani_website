<%-- 
    Document   : validate
    Created on : Apr 24, 2018, 12:41:45 AM
    Author     : Techxplain
--%>

<%@page import="java.sql.ResultSet"%>
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
       String id=request.getParameter("id");
       Connclass c=new Connclass(pa);
       String s="select * from add_doctor where id='"+id+"'";
       ResultSet is=c.select(s);
       if(is.next())
       {
           String sta=is.getString("status");
           if(sta.equals("blocked"))
           {
               String p="update add_doctor set status='active' where id='"+id+"'";
               int g=c.insert(p);
               if(g>0)
               {
                   response.sendRedirect("view_doctors_1.jsp");
               }
           }
           else
           {
               String p="update add_doctor set status='blocked' where id='"+id+"'";
               int g=c.insert(p);
               if(g>0)
               {
                   response.sendRedirect("view_doctors_1.jsp");
               }
           }
       }
       
       %>
    </body>
</html>
