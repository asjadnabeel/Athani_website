<%@page import="java.sql.ResultSet"%>
<%@page import="conn.Connclass"%>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from www.athaninarikkuni.com/patient_registration.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:16:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
     <%
    
    if(session.getAttribute("id")!=null)
    {
        String pa=session.getAttribute("id1").toString();
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
	<link rel="shortcut icon" type="image/png" href="images/favico.png" />
    <!-- Bootstrap -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<style type="text/css">
	.post.format-contact:before {
    content: "\f234";
	}
	</style>
        <%
            try
            {
        String k=request.getQueryString();
        if(k.equals("Failed"))
        {
            %>
            <script>
                alert("Login Failed");
                </script>
        <%
        }
if(k.equals("Success"))
        {
            %>
            <script>
                alert("Login Failed");
                </script>
        <%
        }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
                
        %>
        
        
        <script>
  function ValidateEmail(inputText,inputtxt2)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(inputText.value.match(mailformat))
{
var phoneno = /^\d{10}$/;
  if(inputtxt2.value.match(phoneno))
  {
      document.form1.text1.focus();
      return true;
  }
  else
  {
     alert("Not a valid Phone Number");
        document.form1.phone.focus();
     return false;
  }
}
else
{
alert("You have entered an invalid email address!");
document.form1.email.focus();
return false;
}


}    
            
        </script>
        
  </head>
  <body>
    
    <div id="page" class="hfeed site"><!-- start page wrapper -->

        <header id="masthead" class="site-header navbar-fixed-top">
            <div class="header-navigation">
                <div class="container-fluid">

                    <div class="row">

                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".site-navigation" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="logo navbar-brand">
                            <a href="index.html"><img src="images/logo.png" alt="" title="Athani-Logo"></a>
                        </div><!-- end logo -->

                        <nav id="primary-navigation" class="site-navigation navbar-collapse collapse" role="navigation">
				        	<div class="nav-menu">
    							<ul class="menu">
    								<li><a href="admin_home.jsp">Home</a></li>
                                    <li><a href="add_doctors.jsp">ADD DOCTORS</a></li>
                                    <li class="active"><a href="view_doctors_1.jsp">EDIT DOCTORS</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
    							</ul>
    						</div><!-- end nav-menu -->
				        </nav>

                        

                    </div><!-- end row -->
                    
                </div><!-- end container-fluid -->
            </div><!-- end header-navigation -->
        </header><!-- end #masthead -->

        <div class="head-title">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-title">Admin Login</h2>
                        
                    </div><!-- end column -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end head-title -->

        <!-- START CONTENT HERE -->
        <div id="main">
            <div class="container">
                <div class="row">
                    <div id="primary" class="content-area">
                        <div id="content" class="site-content">
                            <div class="post format-contact hentry">

                                <div class="inner">

                                

                                    <h1 c>
                                        <a href="#">Edit Doctors Here</a>
                                    </h1>
                                    

                                    <div>
                                        <p>Edit Doctors</p>
										<hr>
                                                                                
                                                                                <%
                                             String id=request.getParameter("id");
                                             String k="select * from add_doctor where id='"+id+"'";        
                                        
                                     Connclass c=new Connclass(pa);
                                     
                                     ResultSet us=c.select(k);
                                     if(us.next())
                                     {
                                        String id1=us.getString("id");
                                                                                
                                                                                %>
										<form action="add_doctor_edit.jsp" method="post" name="form1">
                                        <div class="row contact-form">
                                            <div class="col-lg-6">
                                                Name  <input type="text" class="form-control" required placeholder="Enter UserName" name="name" value="<%=us.getString("name")%>">
                                            </div><!-- end col -->
											 <div class="col-lg-6">
                                               email <input type="text" class="form-control" required placeholder="Enter email" name="email" value="<%=us.getString("email")%>">
                                            </div>
                                            <div class="col-lg-6">
                                               phone  <input type="text" class="form-control" required placeholder="Enter Phone" name="phone" value="<%=us.getString("phone")%>"> 
                                            </div><!-- end col -->
											 <div class="col-lg-6">
                                               Username <input type="text" class="form-control" required placeholder="Enter Username" name="username" value="<%=us.getString("username")%>">
                                            </div>
                                            <div class="col-lg-6">
                                               Password <input type="password" class="form-control" required placeholder="Enter Password" name="password" value="<%=us.getString("password")%>">
                                            </div><!-- end col -->
                                            <input type="hidden" name="id" value="<%=id1%>">
                                            <div class="col-lg-12">
                                                <input name="submit" type="submit" id="button" value="UPDATE" onclick="return ValidateEmail(document.form1.email,document.form1.phone)">
                                            </div>
                                        </div><!-- end row -->
                                        
										</form>
                                                                                <%
                                                                                
                                                                                }
                                                                                %>
                                                                                
                                    </div><!-- end entry-content -->
                                </div><!-- end inner -->

                            </div><!-- end post hentry -->

                        </div><!-- end #content -->
                        
                    </div><!-- end #primary -->

                    

                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- #main -->
        <!-- END CONTENT HERE -->

        <footer id="footer-section" class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="widget">
							<div class="widget-inner">
                                <div class="widget-title-outer">
    								<h3 class="widget-title">About Us</h3>
                                </div>
								<p>ATHANI is a nonprofit organization headquartered in Narikkuni, Kozhikode, Kerala. The programmatic work of ATHANI is guided by our Management Committee and developed and managed by the Clinical committee, Support Committee and the Volunteers.</p>
							<!--	<p><a href="#" class="more">Learn More</a></p>-->
							</div><!-- end inner -->
						</div><!-- end widget -->
					</div>

					<div class="col-md-4">
						<div class="widget">
							<div class="widget-inner">
                                <div class="widget-title-outer">
								    <h3 class="widget-title">Our Address</h3>
                                </div>
								
								<table>
									<tr>
										<td><strong>Location</strong></td>
										<td> : NIC Building, Narikkuni P.O, <br/> Kozhikode Dist,Kerala, India<br>
Pin-673585</td>
									</tr>
									<tr>
										<td><strong>Tel</strong></td>
										<td> : 0495 2247412</td>
									</tr>
									<tr>
										<td><strong>Email</strong></td>
										<td> : <a href="mailto:staff@localhost.net">athaninarikkuni@gmail.com</a></td>
									</tr>
									<!--<tr>
										<td><strong>Open Hour</strong></td>
										<td> : Monday &dash; Friday <br/> &nbsp;&nbsp;08:00 AM &dash; 16:00 PM</td>
									</tr>-->
								</table>
							</div><!-- end inner -->
						</div><!-- end widget -->
					</div>

					<div class="col-md-4">
						<div class="widget">
							<div class="widget-inner">
                                <div class="widget-title-outer">
    								<h3 class="widget-title">Like Us On Facebook</h3>
                                </div>
								<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fathaninarikkuni&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=false&amp;appId" width="340"  style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
							</div><!-- end inner -->
						</div><!-- end widget -->
					</div>
				</div>
			</div>
		</footer>

        <div class="footer-credit">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p class="copy">COPYRIGHT &copy; 2016 ATHANI. DESIGNED & DEVELOPED BY <a href="http://brandsncodes.com/" target="_blank">brands n codes</a></p>
                    </div><!-- end column -->
                    <div class="col-md-6">
                        <ul class="list-socmed">
                            <li>
                                <a href="https://www.facebook.com/athaninarikkuni" target="_blank"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/channel/UCzajm_InR_dib_0ZMiCaMEw" target="_blank"><i class="fa fa-fw fa-youtube"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-instagram"></i></a>
                            </li>
                            
                            <li>
                                <a href="#"><i class="fa fa-fw fa-pinterest"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                        </ul>
                    </div><!-- end column -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end footer-credit -->
    	
    </div><!-- end #page hfeed site -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/vendor/jquery-1.11.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugin.js"></script>
    <script src="js/main.js"></script>
	<script src="js/scroll.js"></script>
	<a href="#0" class="cd-top">Top</a>
              <%
        }
else
{
response.sendRedirect("index.html");
}
        
        %>
  </body>

<!-- Mirrored from www.athaninarikkuni.com/patient_registration.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:16:33 GMT -->
</html>