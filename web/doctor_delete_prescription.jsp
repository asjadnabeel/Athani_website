<%-- 
    Document   : doctor_delete_prescription
    Created on : Apr 8, 2018, 4:50:26 AM
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
        String id=request.getParameter("id");
        String n=request.getParameter("name1");
        String hj="delete from description where id='"+id+"'";
        int h=c.insert(hj);
        if(h>0)
        {
           response.sendRedirect("doctor_view_prescription.jsp?name1="+n+"&name2=null");
        }
        
        %>
    </body>
</html>
