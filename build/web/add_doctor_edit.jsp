<%-- 
    Document   : add_doctor
    Created on : Apr 23, 2018, 4:22:27 AM
    Author     : Techxplain
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
        String name=request.getParameter("name");
        String id=request.getParameter("id");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String k="update add_doctor set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"' where id='"+id+"'";
        
        Connclass c=new Connclass(pa);
        int h=c.insert(k);
        if(h>0)
        {
           response.sendRedirect("view_doctors_1.jsp");
        }
        else
        {
           
           response.sendRedirect("view_doctors_1.jsp"); 
        }
        %>
    </body>
</html>
