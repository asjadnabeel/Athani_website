<%-- 
    Document   : delete
    Created on : Apr 25, 2018, 2:32:23 AM
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
            Connclass c=new Connclass(pa);
        String id=request.getParameter("id");
        String n="delete from gallery where id='"+id+"'";
        int g=c.insert(n);
        if(g>0)
        {
            response.sendRedirect("image_upload.jsp");
        }
        %>
    </body>
</html>
