<%@page import="java.sql.ResultSet"%>
<%@page import="conn.Connclass"%>
<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from www.athaninarikkuni.com/facilities.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:15:18 GMT -->
<head>
     <%
    
    if(session.getAttribute("id")!=null)
    {
        String pa=session.getAttribute("id1").toString();
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Income</title>
	<link rel="shortcut icon" type="image/png" href="images/favico.png" />	
    <!-- Bootstrap -->
    <link href="css/styles.css" rel="stylesheet">
	<!-- <link href="css/bootstrap-combined.min.css" rel="stylesheet"> -->

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
                            <a href="index.html"><img src="images/logo.png" alt="" title="Athani-Logo"></a>
                        </div><!-- end logo -->

                          <nav id="primary-navigation" class="site-navigation navbar-collapse collapse" role="navigation">
				        	<div class="nav-menu">
    							<ul class="menu">
    					<li><a href="admin_home.jsp">Home</a></li>				
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
                       
                        <h2 class="page-title">INCOME</h2>  
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

                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                              <div class="panel panel-default">
                                  
                                <div class="panel-heading" role="tab" id="headingOne">
                                  <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                     <%
                                     Connclass c=new Connclass(pa);    
                                     String h="select * from registration";
                                     ResultSet us2=c.select(h);
                                     if(us2.next())
                                     {
                                     
                                     %>
                                        Income Details Of <%=us2.getString("name")%>
                                        
                                        <%
                                     }
                                        %>
                                    </a>
                                  </h4>
                                </div>
                                  
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                  <div class="panel-body">
                                   <table style="width: 100%;text-align: center">
                                      
                                     <tr style="background-color: #6a9fec"><td>NAME</td><td>TYPE</td><td>AMOUNT</td><td>DATE</td></tr>
                                     <%
                                         String j="";
                                         int m=0;
                                         String k="select * from account_income";        
                                         
                                    
                                     
                                     ResultSet us=c.select(k);
                                     while(us.next())
                                     {
                                     %> 
                                     <tr><td><a href="view_income.jsp?name1=<%=us.getString("idaccount")%>"><%=us.getString("name")%></td><td><%=us.getString("type")%></td><td><%=us.getString("amount")%></td><td><%=us.getString("dat")%></td></tr>
                                      
                                     <%
                                     }
                                     %>
                                      
                                  </table>
                                  </div><!-- end panel-body -->
                                </div><!-- end .panel collapse -->
                              </div><!-- end panel -->

                              

                            </div><!-- end panel-group -->

                        </div><!-- end #content -->
                        
                    </div><!-- end #primary -->

                    <div id="secondary" class="col-md-4">

                        <div id="search-2" class="widget widget_search">
                            <div class="widget-title-outer">
                                <h3 class="widget-title">More Info</h3>
                            </div>
                            <div class="searchform">
                                
							
                                
								
								<table>
                                                                     <%
                                         String j1="";
                                         String k1="";
                                         int m1=0;
                                         
                                         try
                                         {
                                             j1=request.getParameter("name1");
                                             if(j1.equals(""))
                                             {
                                                 m1=1;
                                             }
                                         }
                                         catch(Exception e)
                                         {
                                             m1=1;
                                         }
                                         if(m1!=1)
                                         {
                                             k1="select * from account_income where idaccount='"+j1+"'";        
                                         
                                              
                                   
                                     
                                     ResultSet us1=c.select(k1);
                                     
                                     if(us1.next())
                                     {
                                    %>
                                        <tbody>
                                            <tr>
                                                <td><strong>REMARK</strong></td>
                                                <td> : <%=us1.getString("remark")%></td>
                                            </tr>
											
                                            <tr>
                                                <td><strong>NAME</strong></td>
                                                <td> : <%=us1.getString("month")%> </td>
                                            </tr>
                                           
                                            <tr>
                                                <td><strong>YEAR</strong></td>
                                                <td> : <%=us1.getString("year")%></td>
                                            </tr>
                                            <tr>
                                                <td><strong>ADDRESS</strong></td>
                                                <td> : <%=us1.getString("Mnth")%></td>
                                            </tr>
                                           
                                            
                                                                                        
                                           <%
                                     }
                                         } 
                                           %>
                                        </tbody>
                                    </table>
							
						
                            </div><!-- end searchform -->
                        </div><!-- end search widget -->

                        

                </div><!-- end row -->
            </div><!-- end container -->
			
    <div class="row" style="padding-bottom: 20px;">
		<div class="col-md-12">
                <div id="Carousel" class="carousel slide">
                 
                <!-- <ol class="carousel-indicators">
                    <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#Carousel" data-slide-to="1"></li>
                    <li data-target="#Carousel" data-slide-to="2"></li>
                </ol> -->
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                	<div class="row">
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="images/content/amb.jpg" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="images/content/amb2.jpg" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="images/content/fac3.jpg" alt="Image" style="max-width:100%;"></a></div>
                	  <div class="col-md-3"><a href="#" class="thumbnail"><img src="images/content/fac4.jpg" alt="Image" style="max-width:100%;"></a></div>
                	</div><!--.row-->
                </div><!--.item-->
                 
               <!--  <div class="item">
                	<div class="row">
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	</div>
                </div>
                 
                <div class="item">
                	<div class="row">
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                		<div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
                	</div>
                </div> -->
                 
                </div><!--.carousel-inner-->
                  <!-- <a data-slide="prev" href="#Carousel" class="left carousel-control">‹</a>
                  <a data-slide="next" href="#Carousel" class="right carousel-control">›</a> -->
                </div><!--.Carousel-->
                 
		</div>
	</div>

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
	<script type="text/javascript">
	$(document).ready(function() {
    $('#myCarousel').carousel({
	    interval: 10000,
        
	})
});
</script>
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

<!-- Mirrored from www.athaninarikkuni.com/facilities.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:15:21 GMT -->
</html>