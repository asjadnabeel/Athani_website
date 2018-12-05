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
String l="select * from add_nurse where username=? and password=? and status='active'";
 ps=con.prepareStatement(l);
 ps.setString(1, name);
 ps.setString(2, pass);
 ResultSet d=ps.executeQuery();
 if(d.next())
 {
     String k=d.getString("id");
     session.setAttribute("id3", k);
     session.setAttribute("id1", pa);
     response.sendRedirect("nurse_view_patients.jsp");
 }
 else
 {
     response.sendRedirect("nurse_login.jsp?Failed");
 }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
