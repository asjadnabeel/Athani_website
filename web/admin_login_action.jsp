<%@page import="java.sql.ResultSet"%>
<%@page import="conn.Connclass"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
String pa=request.getParameter("pa");

String name=request.getParameter("name");
String pass=request.getParameter("password");
Connection con;
PreparedStatement ps;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3307/"+pa+"","root","dbcsdbcs");
String l="select * from adminlogin where name=? and pass=?";
ps=con.prepareStatement(l);
ps.setString(1, name);
ps.setString(2, pass);
ResultSet d=ps.executeQuery();
if(d.next())
 {
     String k=d.getString("idadminlogin");
     session.setAttribute("id", k);
      session.setAttribute("id1", pa);
     response.sendRedirect("admin_home.jsp");
 }
 else
 {
     response.sendRedirect("admin_login.jsp?Failed");
 }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
