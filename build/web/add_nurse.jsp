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
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String k="insert into add_nurse(name,email,phone,username,password,status)values('"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"','blocked')";
        Connclass c=new Connclass(pa);
        int h=c.insert(k);
        if(h>0)
        {
           response.sendRedirect("add_nurses.jsp?Success");
        }
        else
        {
          
           response.sendRedirect("add_nurses.jsp?Failed"); 
        }
        %>
    </body>
</html>
