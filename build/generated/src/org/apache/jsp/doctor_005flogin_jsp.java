package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class doctor_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  \n");
      out.write("<!-- Mirrored from www.athaninarikkuni.com/patient_registration.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:16:33 GMT -->\n");
      out.write("<!-- Added by HTTrack --><meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\" /><!-- /Added by HTTrack -->\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Doctor Login</title>\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/png\" href=\"images/favico.png\" />\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"css/styles.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t.post.format-contact:before {\n");
      out.write("    content: \"\\f234\";\n");
      out.write("\t}\n");
      out.write("\t</style>\n");
      out.write("        ");

            try
            {
        String k=request.getQueryString();
        if(k.equals("Failed"))
        {
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Login Failed\");\n");
      out.write("                </script>\n");
      out.write("        ");

        }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
                
        
      out.write("\n");
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
      out.write("                        <nav id=\"primary-navigation\" class=\"site-navigation navbar-collapse collapse\" role=\"navigation\">\n");
      out.write("\t\t\t\t        \t<div class=\"nav-menu\">\n");
      out.write("    \t\t\t\t\t\t\t<ul class=\"menu\">\n");
      out.write("    \t\t\t\t\t\t\t\t<li><a href=\"index.html\">Home</a></li>\n");
      out.write("                                                                <li><a href=\"login_front.html\">Login All</a></li>\n");
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
      out.write("                        <h2 class=\"page-title\">Doctors Login</h2>\n");
      out.write("                        \n");
      out.write("                    </div><!-- end column -->\n");
      out.write("                </div><!-- end row -->\n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div><!-- end head-title -->\n");
      out.write("\n");
      out.write("        <!-- START CONTENT HERE -->\n");
      out.write("        <div id=\"main\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div id=\"primary\" class=\"content-area\">\n");
      out.write("                        <div id=\"content\" class=\"site-content\">\n");
      out.write("                            <div class=\"post format-contact hentry\">\n");
      out.write("\n");
      out.write("                                <div class=\"inner\">\n");
      out.write("\n");
      out.write("                                \n");
      out.write("\n");
      out.write("                                    <h1 c>\n");
      out.write("                                        <a href=\"#\">Login Here</a>\n");
      out.write("                                    </h1>\n");
      out.write("                                    \n");
      out.write("\n");
      out.write("                                    <div>\n");
      out.write("                                        <p>Enter UserName And Password</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<hr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<form action=\"doctor_login_action.jsp\" method=\"post\">\n");
      out.write("                                        <div class=\"row contact-form\">\n");
      out.write("                                            <div class=\"col-lg-6\">\n");
      out.write("                                                Palliative Care<select name=\"pa\" class=\"form-control\">\n");
      out.write("                                                    <option value=\"registration\">Vettathoor</option>\n");
      out.write("                                                    <option value=\"b\">b</option>\n");
      out.write("                                                    <option value=\"c\">c</option>\n");
      out.write("                                                    <option value=\"d\">d</option>\n");
      out.write("                                                    <option value=\"e\">e</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-lg-6\">\n");
      out.write("                                               Username  <input type=\"text\" class=\"form-control\" required placeholder=\"Enter UserName\" name=\"username\">\n");
      out.write("                                            </div><!-- end col -->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t <div class=\"col-lg-6\">\n");
      out.write("                                               Password <input type=\"password\" class=\"form-control\" required placeholder=\"Enter Password\" name=\"password\">\n");
      out.write("                                            </div><!-- end col -->\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <input class=\"btn btn-lg btn-default\" name=\"submit\" type=\"submit\" id=\"button\" value=\"Login\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div><!-- end row -->\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("                                    </div><!-- end entry-content -->\n");
      out.write("                                </div><!-- end inner -->\n");
      out.write("\n");
      out.write("                            </div><!-- end post hentry -->\n");
      out.write("\n");
      out.write("                        </div><!-- end #content -->\n");
      out.write("                        \n");
      out.write("                    </div><!-- end #primary -->\n");
      out.write("\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                </div><!-- end row -->\n");
      out.write("            </div><!-- end container -->\n");
      out.write("        </div><!-- #main -->\n");
      out.write("        <!-- END CONTENT HERE -->\n");
      out.write("\n");
      out.write("        <footer id=\"footer-section\" class=\"site-footer\">\n");
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
      out.write("\t<script src=\"js/scroll.js\"></script>\n");
      out.write("\t<a href=\"#0\" class=\"cd-top\">Top</a>\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("<!-- Mirrored from www.athaninarikkuni.com/patient_registration.php by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 03 Feb 2018 05:16:33 GMT -->\n");
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
