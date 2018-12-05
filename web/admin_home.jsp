<!DOCTYPE html>
<html lang="en">
  
<!-- Mirrored from www.athaninarikkuni.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:14:24 GMT -->
<head>
     <%
    
    if(session.getAttribute("id")!=null)
    {
        String pa=session.getAttribute("id1").toString();
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to ATHANI</title>
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
	#fixedbutton {
    position: fixed;
    bottom: 175px;
    right: -80px;
    z-index: 999;
    line-height: 10px;
    font-size: 20px;
	font-family: 'Rajdhani', sans-serif;
    width: 200px;
    height: 40px;
    transform: rotate(7deg);
    -ms-transform: rotate(-90deg);
    -moz-transform: rotate(-90deg);
    -webkit-transform: rotate(-90deg);
    -o-transform: rotate(-90deg);
    background: #0050a3;
    color: #fff;
	border: none;
}
</style>
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
				        	<a href="#"><img src="images/logo.png" alt="Athani-logo" title="Athani-logo"></a>
				        </div><!-- end logo -->

				        <nav id="primary-navigation" class="site-navigation navbar-collapse collapse" role="navigation">
				        	<div class="nav-menu">
    							<ul class="menu">
    				    <li class="active"><a href="admin_home.jsp">Home</a></li>
                                    <li><a href="add_doctors.jsp">ADD DOCTORS</a></li>
                                    <li><a href="view_doctors_1.jsp">EDIT DOCTORS</a></li>
                                    <li><a href="add_nurses.jsp">ADD NURSE</a></li>
                                    <li><a href="view_nurses_1.jsp">EDIT NURSES</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
    								
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
    								
    							</ul>
    						</div><!-- end nav-menu -->
				        </nav><!-- end #primary-navigation -->

				      <!--  <div class="appoinment-header">
				        	<a href="contact.html" class="btn btn-md btn-default">Contact Us</a>
				        </div>-->

    				</div><!-- end row -->
    				
    			</div><!-- end container-fluid -->
    		</div><!-- end header-navigation -->
    	</header><!-- end #masthead -->

    	

    	<div class="service-section">
            <div class="container">
                <div class="row">


                    <div class="centered-title">
                        <h3> </h3>
                    </div>
                    
                    <div class="service-col">
                        <h3> <a style="color: #00aced" href="view_account_report.jsp">Account Report</a></h3>
                        <h3><a style="color: #00aced" href="view_apparatus_report.jsp">Apparatus Report</a></h3>
                         <h3><a style="color: #00aced" href="view_apparatus_list_report.jsp">Apparatus List</a></h3>
                          <h3><a style="color: #00aced" href="view_asset.jsp">Asset View</a></h3>
                           <h3><a  style="color: #00aced "href="view_bank.jsp">Bank View</a></h3>
                    
                        
                        
                    </div>

                    <div class="service-col">
                         <h3><a style="color: #00aced" href="view_bank_expense.jsp">Bank Expense View</a></h3>
                         <h3><a style="color: #00aced" href="view_bank_income.jsp">Bank Income View</a></h3>
                         <h3><a style="color: #00aced" href="view_client.jsp">Client View</a></h3>
                         <h3><a style="color: #00aced" href="view_commity.jsp">Committee View</a></h3>
                         <h3><a style="color: #00aced" href="view_doctors.jsp">Doctors View</a></h3>
                    </div>

                    <div class="service-col">
                        <h3><a style="color: #00aced" href="view_employees1.jsp">Employees View</a></h3>
                         <h3><a style="color: #00aced" href="view_expense.jsp">Expense View</a></h3>
                         <h3><a style="color: #3300cc" href="image_upload.jsp">Update Gallery</a></h3>
                         
                         <h3><a style="color: #00aced" href="view_invoice.jsp">Invoice View</a></h3>
                         <h3><a style="color: #00aced" href="view_invoice_payment.jsp">Invoice Payment View</a></h3>
                    </div>

                    <div class="service-col">
                        <h3><a style="color: #00aced" href="view_medicine_expiry.jsp">Medicine Expiry View</a></h3>
                         <h3><a style="color: #00aced" href="view_morphine.jsp">Morphine View</a></h3>
                         <h3><a style="color: #00aced" href="view_opdetails.jsp">OP Details View</a></h3>
                         <h3><a style="color: #00aced" href="view_purchase.jsp">Purchase View</a></h3>
                         <h3><a style="color: #00aced" href="view_stock.jsp">Stock View</a></h3>
                    </div>

                    <div class="service-col">
                       <h3><a style="color: #00aced" href="view_supplier.jsp">Supplier View</a></h3>
                         <h3><a style="color: #00aced" href="view_volunteer.jsp">Volunteer View</a></h3>
                         <h3><a style="color: #00aced" href="view_income.jsp">Income View</a></h3>
                        
                    </div>

                   

                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end service-section -->

    	<div class="about-section">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-6">

                        <div class="white-box">

        					<div class="about-title">
        						<h3>About ATHANI</h3>
        					</div><!-- end about-title -->

        					<div class="about-content">
        						<p>ATHANI is a nonprofit organization headquartered in Narikkuni, Kozhikode, Kerala. The programmatic work of ATHANI is guided by our Management Committee and developed and managed by the Clinical committee, Support Committee and the Volunteers.</p>
                                <h4><strong>OUR DREAMS</strong></h4>
                                <ul>
                                    <li>Dialysis Center</li>
                                    <li>Destitute home psychic patient</li>
                                    <li>OP unit with three consulting center</li>
                                    <li>Inpatient block</li>
                                    <li>Nurses station</li>
                                    <li>Diabetic clinic</li>
                                    <li>Counselling center</li>
                                    <li>X-ray unit,scanning center</li>
                                    <li>Kitchen & dining hall</li>
                                    <li>Prayer hall</li>
                                    <li>Pschatric day care center</li>
                                    <li>Vocational training center for patients of paraplegia</li>
                                </ul>
        					</div>

        				</div><!-- end white-box -->
                    </div><!-- end column -->

                    <div class="col-md-6">

                        <div class="team-box">

                            <div class="team-title">
                                <h3>Latest News & Events</h3>
                            </div><!-- end team-title -->

                            <div class="inner">

                            <div id="vertical-ticker">
                            <span>
                            <a href="news.html"><h3>OUR PROMO VIDEO RELEASED</h3></a>
                            <p>Watch our promo video now. </p>
							<p>
									<a href="news.html" class="more pull-right" style="font-size:15px; color:#69BD45;" >Read More</a>
								</p>
								</span>
                             <span>
                            <a href="news-events.html"><h3>ATHANI CAMPUS INAUGURATED</h3></a>
                            <p>Dr. M.K. Muneer, Honorable Minister for Panchayat and Social Welfare inaugurated "ATHANI CAMPUS" on Friday morning at Narikkuni in a function presided over by Sri. V.M. Ummer Master MLA. </p>
							<p>The campus is home to the ATHANI Homecare and Outpatient Clinics, ATHANI Destitute Home under construction, proposed ATHANI Rehabilitation and Occupational Training..</p>
							<p>
									<a href="news-events.html" class="more pull-right" style="font-size:15px;color:#69BD45;" >Read More</a>
								</p>
								</span>
                           
                            <!--  <span>
                            <a href="#"><h3>News title 3</h3></a>
                            <p>Lorem ipsum dolor sit amet, vide dicam eu pri. Nam mandamus constituto ei, facilisi maluisset te pro. </p>
							<p>
									<a href="#" class="more pull-right" style="font-size:15px;color:#69BD45;" >Read More</a>
								</p>
								</span> -->
                           
                            <!--  <span>
                            <a href="#"><h3>News title 4</h3></a>
                            <p>Lorem ipsum dolor sit amet, vide dicam eu pri. Nam mandamus constituto ei, facilisi maluisset te pro. </p>
							<p>
									<a href="#" class="more pull-right" style="font-size:15px;color:#69BD45;" >Read More</a>
								</p>
								</span> -->
                           
                             <!-- <span>
                            <a href="#"><h3>News title 5</h3></a>
                            <p>Lorem ipsum dolor sit amet, vide dicam eu pri. Nam mandamus constituto ei, facilisi maluisset te pro. </p>
							<p>
									<a href="#" class="more pull-right" style="font-size:15px;color:#69BD45;" >Read More</a>
								</p>
								</span>
                            
                             <span>
                            <a href="#"><h3>News title 6</h3></a>
                            <p>Lorem ipsum dolor sit amet, vide dicam eu pri. Nam mandamus constituto ei, facilisi maluisset te pro. </p>
							<p>
									<a href="#" class="more pull-right" style="font-size:15px;color:#69BD45;" >Read More</a>
								</p>
								</span>
                            -->
		</div>

                            </div>

                        </div><!-- end blue-box -->
                    </div><!-- end column -->
    			</div><!-- end row -->
    		</div><!-- end container -->
    	</div><!-- end about-section -->

    	<div class="blog-section">
    		<div class="container">
    			<div class="row">

    				<div class="about-title">
    					<h3 style="margin-left: 15px;">Our Promo Video</h3>
						<h3 class="pull-right" style="margin-right: 370px;">What we offer</h3>
    				</div><!-- blogs-title -->

    					
    				
    				<div class="col-md-6">
    					<iframe width="100%" height="333" src="https://www.youtube.com/embed/ej1Xi5OoXJQ" frameborder="0" allowfullscreen></iframe>
    				</div><!-- end col -->

    				<div class="col-md-6 fac">
					<ul>
                                    <li><i class="fa fa-star"></i> Free teatment & medicines to poor patients</li>
                                    <li><i class="fa fa-star"></i> Food & clothes to poor patients and family</li>
                                    <li><i class="fa fa-star"></i> Destitute home for the poor and miserable patients</li>
                                    <li><i class="fa fa-star"></i> OP clinic on every Mondays</li>
                                    <li><i class="fa fa-star"></i> 4 days of home care by nurses every week</li>
                                    <li><i class="fa fa-star"></i> Distribution of warebed,wheel chairs,stretchers and other aids</li>
                                    <li><i class="fa fa-star"></i> Financial aid for treaty patients and housing</li>
                                    <li><i class="fa fa-star"></i> Educational support to the children of paliative patients</li>
                                    <li><i class="fa fa-star"></i> Free counseling,psysiotherapy unit,pharmacy</li>
                                    <li><i class="fa fa-star"></i> Vocational training center for paraplegia patients</li>
                                    <li><i class="fa fa-star"></i> Free training to volunteers and nurses</li>
                                    <li><i class="fa fa-star"></i> Speech and physiotherapy aid when needed</li>
									<li><i class="fa fa-star"></i> Kitchen and dining hall</li>
                                </ul>
					</div>
					
    			</div><!-- end row -->
    		</div><!-- end container -->
    	</div><!-- end blog section -->



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
    
    <script type="text/javascript" src="js/jquery.totemticker.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#vertical-ticker').totemticker({
				row_height	:	'185px',
				next		:	'#ticker-next',
				previous	:	'#ticker-previous',
				stop		:	'#stop',
				start		:	'#start',
				mousestop	:	true,
			});
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

<!-- Mirrored from www.athaninarikkuni.com/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:14:44 GMT -->
</html>