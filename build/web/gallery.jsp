<%@page import="java.sql.ResultSet"%>
<%@page import="conn.Connclass"%>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from www.athaninarikkuni.com/gallery.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:15:22 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gallery</title>
	<link rel="shortcut icon" type="image/png" href="images/favico.png" />
    <!-- Bootstrap -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                            <a href="index.html"><img src="images/logo.png" alt="" title="Athani-logo"></a>
                        </div><!-- end logo -->

                        <nav id="primary-navigation" class="site-navigation navbar-collapse collapse" role="navigation">
				        	<div class="nav-menu">
    							<ul class="menu">
    								<li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About</a></li>
    								<li><a href="facilities.html">Our facilities</a>
										<!--<ul class="sub-menu">
											<li><a href="service-single.html">Service Single Page</a></li>
										</ul>-->
    								</li>
    								<!--<li class="has-child"><a href="#">Pages</a>
										<ul class="sub-menu">
                                            <li><a href="gallery.html">Gallery</a></li>
                                            <li><a href="search-result.html">Search Result</a></li>
                                            <li><a href="elements.html">Web Elements</a>
                                                <ul class="sub-menu">
                                                    <li><a href="#">Sub Menu Level 2</a></li>
                                                    <li><a href="#">Sub Menu Level 2</a>
                                                </ul>
                                            </li>
											<li><a href="404.html">404 Page</a></li>
										</ul>
    								</li>-->
    								<li class="active"><a href="#">Gallery</a>
                                        <!--<ul class="sub-menu">
                                            <li><a href="blog-single.html">Blog Single Page</a></li>
                                        </ul>-->
                                    </li>
                                    <li><a href="news.html">News & Events</a></li>
    								<li><a href="contact.html">Contact Us</a></li>
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
                        <h2 class="page-title">GALLERY</h2>
                        
                    </div><!-- end column -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end head-title -->

        <!-- START CONTENT HERE -->
        <div style="margin-bottom: 20px">
        <div id="main">
            <div class="container">
                <div class="row">
                    <div id="primary" class="content-area fullwidth">
                        <div id="content" class="site-content">

                            <div class="row gallery-wrapper">

<%
    Connclass c=new Connclass("athaniimage");
String q="select * from gallery";
ResultSet us=c.select(q);
while(us.next())
{
    String id=us.getString("id");
%>
  <div class="col-md-3 col-lg-3 col-xl-3 img-fluid" href="#" data-toggle="modal" data-target=".pop-up-01">
  <img src="<%=us.getString("image")%>" class="img-responsive" alt="">
 
                                </div><!-- thumb 01 -->
                                
                               <%
                               }
                               %> 

                                

                            </div><!-- end gallery wrapper -->

                            <!--  Modal content for the mixer image example -->
                            

                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal mixer image -->
							
                        </div><!-- end #content -->
                        
                    </div><!-- end #primary -->

                </div><!-- end row -->
           
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
  </body>

<!-- Mirrored from www.athaninarikkuni.com/gallery.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:16:29 GMT -->
</html>