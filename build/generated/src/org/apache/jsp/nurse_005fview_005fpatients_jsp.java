package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import conn.Connclass;

public final class nurse_005fview_005fpatients_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  \n");
      out.write("<!-- Mirrored from www.athaninarikkuni.com/facilities.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:15:18 GMT -->\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Our Facilities</title>\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/png\" href=\"images/favico.png\" />\t\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"css/styles.css\" rel=\"stylesheet\">\n");
      out.write("\t<!-- <link href=\"css/bootstrap-combined.min.css\" rel=\"stylesheet\"> -->\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    \n");
      out.write("    <div id=\"page\" class=\"hfeed site\"><!-- start page wrapper -->\n");
      out.write("\n");
      out.write("        <header id=\"masthead\" class=\"site-header navbar-fixed-top\">\n");
      out.write("            <div class=\"header-navigation\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".site-navigation\" aria-expanded=\"false\">\n");
      out.write("                            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("                        <div class=\"logo navbar-brand\">\n");
      out.write("                            <a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\" title=\"Athani-Logo\"></a>\n");
      out.write("                        </div><!-- end logo -->\n");
      out.write("\n");
      out.write("                          <nav id=\"primary-navigation\" class=\"site-navigation navbar-collapse collapse\" role=\"navigation\">\n");
      out.write("\t\t\t\t        \t<div class=\"nav-menu\">\n");
      out.write("    \t\t\t\t\t\t\t<ul class=\"menu\">\n");
      out.write("    \t\t\t\t\t\t\t\t\n");
      out.write("                                    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("    \t\t\t\t\t\t\t\t\n");
      out.write("    \t\t\t\t\t\t\t</ul>\n");
      out.write("    \t\t\t\t\t\t</div><!-- end nav-menu -->\n");
      out.write("\t\t\t\t        </nav>\n");
      out.write("\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                    </div><!-- end row -->\n");
      out.write("                    \n");
      out.write("                </div><!-- end container-fluid -->\n");
      out.write("            </div><!-- end header-navigation -->\n");
      out.write("        </header><!-- end #masthead -->\n");
      out.write("\n");
      out.write("        <div class=\"head-title\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                    </div><!-- end column -->\n");
      out.write("                </div><!-- end row -->\n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div><!-- end head-title -->                                                                                                                  \n");
      out.write("\n");
      out.write("        <!-- START CONTENT HERE -->\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div id=\"primary\" class=\"content-area\">\n");
      out.write("                        <div id=\"content\" class=\"site-content\">\n");
      out.write("\n");
      out.write("                            <div class=\"panel-group\" id=\"accordion\" role=\"tablist\" aria-multiselectable=\"true\">\n");
      out.write("<div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\">\n");
      out.write("                                  <h4 class=\"panel-title\">\n");
      out.write("                                    <a class=\"collapsed\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\n");
      out.write("                                      SEARCH\n");
      out.write("                                    </a>\n");
      out.write("                                  </h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"collapseTwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\">\n");
      out.write("                                  <div class=\"panel-body\">\n");
      out.write("                                      <form action=\"doctor_view_patients.jsp\" method=\"post\">\n");
      out.write("                                      <input type=\"text\"name=\"name\"><input type=\"submit\">\n");
      out.write("\t\t\t\t\t\t\t</form>\n");
      out.write("                                  </div><!-- end panel-body -->\n");
      out.write("                                </div><!-- end .panel collapse -->\n");
      out.write("                              </div>\n");
      out.write("                              <div class=\"panel panel-default\">\n");
      out.write("                                  \n");
      out.write("                                <div class=\"panel-heading\" role=\"tab\" id=\"headingOne\">\n");
      out.write("                                  <h4 class=\"panel-title\">\n");
      out.write("                                    <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\n");
      out.write("                                      Patient Table\n");
      out.write("                                    </a>\n");
      out.write("                                  </h4>\n");
      out.write("                                </div>\n");
      out.write("                                  \n");
      out.write("                                <div id=\"collapseOne\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"headingOne\">\n");
      out.write("                                  <div class=\"panel-body\">\n");
      out.write("                                   <table style=\"width: 100%;text-align: center\">\n");
      out.write("                                      \n");
      out.write("                                     <tr style=\"background-color: #6a9fec\"><td>REG NO.</td><td>NAME</td><td>AGE</td><td>WARD</td></tr>\n");
      out.write("                                     ");

                                         String j="";
                                         String k="";
                                         int m=0;
                                         
                                         try
                                         {
                                             j=request.getParameter("name");
                                             if(j.equals("")||j.equals("null"))
                                             {
                                                 m=1;
                                             }
                                         }
                                         catch(Exception e)
                                         {
                                             m=1;
                                         }
                                         if(m==1)
                                         {
                                             k="select * from patient";
                                         }
                                         else
                                         {
                                             k="select * from patient where pname like '"+j+"%'";        
                                         }
                                     Connclass c=new Connclass();
                                     
                                     ResultSet us=c.select(k);
                                     while(us.next())
                                     {
                                     
      out.write(" \n");
      out.write("                                     <tr><td><a href=\"nurse_view_patients.jsp?name1=");
      out.print(us.getString("regno"));
      out.write("&name=");
      out.print(j);
      out.write('"');
      out.write('>');
      out.print(us.getString("regno"));
      out.write("</td><td>");
      out.print(us.getString("pname"));
      out.write("</td><td>");
      out.print(us.getString("age"));
      out.write("</td><td>");
      out.print(us.getString("ward"));
      out.write("</td></tr>\n");
      out.write("                                      \n");
      out.write("                                     ");

                                     }
                                     
      out.write("\n");
      out.write("                                      \n");
      out.write("                                  </table>\n");
      out.write("                                  </div><!-- end panel-body -->\n");
      out.write("                                </div><!-- end .panel collapse -->\n");
      out.write("                              </div><!-- end panel -->\n");
      out.write("\n");
      out.write("                              \n");
      out.write("\n");
      out.write("                            </div><!-- end panel-group -->\n");
      out.write("\n");
      out.write("                        </div><!-- end #content -->\n");
      out.write("                        \n");
      out.write("                    </div><!-- end #primary -->\n");
      out.write("\n");
      out.write("                    <div id=\"secondary\" class=\"col-md-4\">\n");
      out.write("\n");
      out.write("                        <div id=\"search-2\" class=\"widget widget_search\">\n");
      out.write("                            <div class=\"widget-title-outer\">\n");
      out.write("                                <h3 class=\"widget-title\">Info</h3>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"searchform\">\n");
      out.write("                                \n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<table>\n");
      out.write("                                                                     ");

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
                                             k1="select * from patient where regno='"+j1+"'";        
                                         
                                              
                                   
                                     
                                     ResultSet us1=c.select(k1);
                                     if(us1.next())
                                     {
                                    
      out.write("\n");
      out.write("                                        <tbody>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>REG NO</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("regno"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>NAME</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("pname"));
      out.write(" </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>AGE</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("age"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>GENDER</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("gender"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>ADDRESS</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("ad"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>PAN</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("pan"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>NUMBER</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("mobile"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>WARD</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("ward"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>CV</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("cv"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>CV NUMBER</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("cvmob"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>Diagnosis</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("diagnosis"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>YEAR</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("year"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td><strong>MONTH</strong></td>\n");
      out.write("                                                <td> : ");
      out.print(us1.getString("month"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                             \n");
      out.write("                                            <tr>\n");
      out.write("                                               \n");
      out.write("                                                 <td>&nbsp;</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                               \n");
      out.write("                                                <td>to view added Prescription <a href=\"nurse_view_prescription.jsp?name1=");
      out.print(j1);
      out.write("&name2=null\">CLICK HERE</a></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                           ");

                                     }
                                         } 
                                           
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                            </div><!-- end searchform -->\n");
      out.write("                        </div><!-- end search widget -->\n");
      out.write("\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                </div><!-- end row -->\n");
      out.write("            </div><!-- end container -->\n");
      out.write("\t\t\t\n");
      out.write("    <div class=\"row\" style=\"padding-bottom: 20px;\">\n");
      out.write("\t\t<div class=\"col-md-12\">\n");
      out.write("                <div id=\"Carousel\" class=\"carousel slide\">\n");
      out.write("                 \n");
      out.write("                <!-- <ol class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#Carousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#Carousel\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#Carousel\" data-slide-to=\"2\"></li>\n");
      out.write("                </ol> -->\n");
      out.write("                 \n");
      out.write("                <!-- Carousel items -->\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    \n");
      out.write("                <div class=\"item active\">\n");
      out.write("                \t<div class=\"row\">\n");
      out.write("                \t  <div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"images/content/amb.jpg\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t  <div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"images/content/amb2.jpg\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t  <div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"images/content/fac3.jpg\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t  <div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"images/content/fac4.jpg\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t</div><!--.row-->\n");
      out.write("                </div><!--.item-->\n");
      out.write("                 \n");
      out.write("               <!--  <div class=\"item\">\n");
      out.write("                \t<div class=\"row\">\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t</div>\n");
      out.write("                </div>\n");
      out.write("                 \n");
      out.write("                <div class=\"item\">\n");
      out.write("                \t<div class=\"row\">\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t\t<div class=\"col-md-3\"><a href=\"#\" class=\"thumbnail\"><img src=\"http://placehold.it/250x250\" alt=\"Image\" style=\"max-width:100%;\"></a></div>\n");
      out.write("                \t</div>\n");
      out.write("                </div> -->\n");
      out.write("                 \n");
      out.write("                </div><!--.carousel-inner-->\n");
      out.write("                  <!-- <a data-slide=\"prev\" href=\"#Carousel\" class=\"left carousel-control\">â¹</a>\n");
      out.write("                  <a data-slide=\"next\" href=\"#Carousel\" class=\"right carousel-control\">âº</a> -->\n");
      out.write("                </div><!--.Carousel-->\n");
      out.write("                 \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("        </div><!-- #main -->\n");
      out.write("        <!-- END CONTENT HERE -->\n");
      out.write("  \n");
      out.write("         <footer id=\"footer-section\" class=\"site-footer\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4\">\n");
      out.write("\t\t\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"widget-inner\">\n");
      out.write("                                <div class=\"widget-title-outer\">\n");
      out.write("    \t\t\t\t\t\t\t\t<h3 class=\"widget-title\">About Us</h3>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\t\t\t\t<p>ATHANI is a nonprofit organization headquartered in Narikkuni, Kozhikode, Kerala. The programmatic work of ATHANI is guided by our Management Committee and developed and managed by the Clinical committee, Support Committee and the Volunteers.</p>\n");
      out.write("\t\t\t\t\t\t\t<!--\t<p><a href=\"#\" class=\"more\">Learn More</a></p>-->\n");
      out.write("\t\t\t\t\t\t\t</div><!-- end inner -->\n");
      out.write("\t\t\t\t\t\t</div><!-- end widget -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4\">\n");
      out.write("\t\t\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"widget-inner\">\n");
      out.write("                                <div class=\"widget-title-outer\">\n");
      out.write("\t\t\t\t\t\t\t\t    <h3 class=\"widget-title\">Our Address</h3>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><strong>Location</strong></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td> : NIC Building, Narikkuni P.O, <br/> Kozhikode Dist,Kerala, India<br>\n");
      out.write("Pin-673585</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><strong>Tel</strong></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td> : 0495 2247412</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><strong>Email</strong></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td> : <a href=\"mailto:staff@localhost.net\">athaninarikkuni@gmail.com</a></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<!--<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><strong>Open Hour</strong></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td> : Monday &dash; Friday <br/> &nbsp;&nbsp;08:00 AM &dash; 16:00 PM</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>-->\n");
      out.write("\t\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t</div><!-- end inner -->\n");
      out.write("\t\t\t\t\t\t</div><!-- end widget -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4\">\n");
      out.write("\t\t\t\t\t\t<div class=\"widget\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"widget-inner\">\n");
      out.write("                                <div class=\"widget-title-outer\">\n");
      out.write("    \t\t\t\t\t\t\t\t<h3 class=\"widget-title\">Like Us On Facebook</h3>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\t\t\t\t<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fathaninarikkuni&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=false&amp;appId\" width=\"340\"  style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\"></iframe>\n");
      out.write("\t\t\t\t\t\t\t</div><!-- end inner -->\n");
      out.write("\t\t\t\t\t\t</div><!-- end widget -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</footer>\n");
      out.write("\n");
      out.write("        <div class=\"footer-credit\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <p class=\"copy\">COPYRIGHT &copy; 2016 ATHANI. DESIGNED & DEVELOPED BY <a href=\"http://brandsncodes.com/\" target=\"_blank\">brands n codes</a></p>\n");
      out.write("                    </div><!-- end column -->\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <ul class=\"list-socmed\">\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"https://www.facebook.com/athaninarikkuni\" target=\"_blank\"><i class=\"fa fa-fw fa-facebook\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"https://www.youtube.com/channel/UCzajm_InR_dib_0ZMiCaMEw\" target=\"_blank\"><i class=\"fa fa-fw fa-youtube\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-fw fa-twitter\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-fw fa-linkedin\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-fw fa-instagram\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-fw fa-pinterest\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-fw fa-google-plus\"></i></a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div><!-- end column -->\n");
      out.write("                </div><!-- end row -->\n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div><!-- end footer-credit -->\n");
      out.write("    \t\n");
      out.write("    </div><!-- end #page hfeed site -->\n");
      out.write("\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"js/vendor/jquery-1.11.1.min.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/plugin.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("    $('#myCarousel').carousel({\n");
      out.write("\t    interval: 10000,\n");
      out.write("        \n");
      out.write("\t})\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\t<script src=\"js/scroll.js\"></script>\n");
      out.write("\t<a href=\"#0\" class=\"cd-top\">Top</a>\n");
      out.write("\t\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("<!-- Mirrored from www.athaninarikkuni.com/facilities.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:15:21 GMT -->\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
