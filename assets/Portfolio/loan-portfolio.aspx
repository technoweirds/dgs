<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="loan-portfolio.aspx.cs" Inherits="Portfolio_loan_portfolio" %>


<%@ Register TagPrefix="uc" TagName="LoginUser" Src="../LoginUserControl.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="Ajax" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
	<meta http-equiv="refresh" content="0; url=/portfolio/loan-portfolio.html" />
    <title>Loan Portfolio Manager – loanbaba.com</title>
    <!-- HTTP 1.1 -->
    <meta http-equiv="Cache-Control" content="no-store" />
    <!-- HTTP 1.0 -->
    <meta http-equiv="Pragma" content="no-cache" />
    <!-- Prevents caching at the Proxy Server -->
    <meta http-equiv="Expires" content="0" />
    <meta name="description" content="Manage your Loan Portfolio, Transfer your Existing Loans at the current interest rates and save money, get EMI reminders and personalized offers" />
    <meta name="keywords" content="Loan portfolio manager, portfolio management, portfolio management services, financial portfolio management, portfolio management company, portfolio management fees, client portfolio management, application portfolio management, portfolio management process" />
    <meta name="alexaVerifyID" content="CdolM8MoTPyeOmPy4NR_k1RCAZE" />
    <meta name="msvalidate.01" content="3C8F4AACAE116BBFD6BD6D17101889A5" />
    <link rel="icon" type="image/ico" href="../favicon.ico" />
    <link rel="canonical" href="https://www.loanbaba.com/Portfolio/loan-portfolio.aspx" />
    <meta property="og:type" content="website" />
    <!-- Facebook start -->
    <meta property="og:description" content="Manage your Loan Portfolio, Transfer your Existing Loans at the current interest rates and save money, get EMI reminders and personalized offers" />
    <meta property="og:image" content="../assets/images/lb-social-share.jpg" />
    <meta property="og:url" content="https://www.loanbaba.com/Portfolio/loan-portfolio.aspx" />
    <!-- Facebook end -->
    <link rel="apple-touch-icon" href="../assets/images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/images/touch-icon-ipad.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="../assets/images/touch-icon-iphone-retina.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="../assets/images/touch-icon-ipad-retina.png" />
    <link rel="apple-touch-startup-image" href="../assets/images/splash.png" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-title" content="loanbaba" />
    <meta content="INDEX,FOLLOW" name="Robots"/>
<meta content="All, FOLLOW" name="GOOGLEBOTS"/>
<meta content="All, FOLLOW" name="YAHOOBOTS"/>
<meta content="All, FOLLOW" name="MSNBOTS"/>
<meta content="All, FOLLOW" name="BINGBOTS"/>
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@loanbaba" />
<meta name='twitter:title' content="" />
<meta name='twitter:description' content="Manage your Loan Portfolio, Transfer your Existing Loans at the current interest rates and save money, get EMI reminders and personalized offers" />
<meta name="twitter:image" content="../assets/images/lb-social-share.jpg">
<meta content="text/javascript" http-equiv="Content-Script-Type" />
<meta content="text/css" http-equiv="Content-Style-Type" />



    <!-- CSS -->
    <link href="../assets/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="../assets/css/styles.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" href="../src/css/style.css">

    <script type="text/javascript">
        var Serviceurl = '<%=serviceURLPath %>';
        var sRid = '<%=Rid %>';
    </script>
  <!-- Google Analytics Code -->
<script type="text/javascript">
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-64118667-1', 'auto');
    ga('send', 'pageview');
</script>
<!-- End Google Analytics Code -->
    <style>
        .collapsible-header i {
            margin-right: 6px;
}
    </style>
</head>
<body>
    <!-- Google Tag Manager -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PZSKCBX"height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function (w, d, s, l, i) {
w[l] = w[l] || []; w[l].push({
'gtm.start':
new Date().getTime(), event: 'gtm.js'
}); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-PZSKCBX');</script>
<!-- End Google Tag Manager -->
    <form id="form1" runat="server">
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
        <div>
            <section class="innerhed">
                <nav role="navigation">
                    <div class="nav-wrapper containers">
                        <a id="logo-container" href="../index.aspx" title="loanbaba">
                            <img src="../assets/images/new_logo.png" class="brand-logo" alt="loanbaba">
                        </a>
						<%--<div><a class="hide-on-large-only f1mi right pr10 pl10 waves-effect waves-light" href="tel:18001038024" title="loanbaba"> <i class="fa fa-phone" aria-hidden="true"></i></a>  </div>--%>
                        <!-- Navbar-Collapse -->
                        <div class="navbar-collapse collapse right hide-on-med-and-down">
                            <ul class="nav navbar-nav navbar-right">
                                <!-- Menu Items -->
                               <!--  <li><a href="https://p2p.loanbaba.com" target="blank" title="P2P Lending">P2P</a></li>-->
							   
                                <li><a class='dropdown-button' href='#' data-activates='dropdown1' data-hover="true" title="">Loans <b class="fa fa-angle-down"></b></a>
                                    <ul id='dropdown1' class='dropdown-content'>
                                        <li><a href="../small-cash-loan" title="Small Cash Loan" class="waves-effect waves-light">Small Cash Loan</a></li>
                                        <li><a href="../instant-personal-loan.html" aria-label="Instant Personal Loan">Instant Personal Loan</a></li>
                                        <li><a href="../instant-cash-loan/" aria-label="Instant Cash Loan">Instant Cash Loan</a></li>
                                        <li><a href="../personal-loan/" title="" class="waves-effect waves-teal">Personal Loan</a></li>
                                        <li><a href="../credit-card/" title="Credit Card" class="waves-effect waves-teal">Credit Card</a></li>
                                        <li><a href="../business-loan/" title="" class="waves-effect waves-teal">Business Loan</a></li>
                                        <li><a href="../loan-against-property/" title="" class="waves-effect waves-teal">Loan Against Property</a></li>
                                        <li><a href="../gold-loan/" title="Gold Loan" class="waves-effect waves-light">Gold Loan</a></li>
                                        <li><a href="../home-loan/" title="" class="waves-effect waves-teal">Home Loan</a></li>
                                    </ul>
                                </li>
                                <%--<li><a href="loan-portfolio.aspx" title="Loan Portfolio Manager">Portfolio</a></li>--%>
                                <li><a class='dropdown-button' href='#' data-activates='dropdown2' data-hover="true" title="">Finance Calculators<b class="fa fa-angle-down pl5"></b></a>
                                    <ul id='dropdown2' class='dropdown-content'>
                                         <li><a href="../Emi-calculator.aspx" title="" class="waves-effect waves-teal">EMI Calculator</a></li>
                                         <li><a href="../Eligibility-calculator.aspx" title="" class="waves-effect waves-teal">Eligibility Calculator</a></li>
                                         <li><a href="../financial-calculators/" title="Finance Tools" class="waves-effect waves-teal">Finance Tools</a></li>
		                            </ul>
                                </li>
                                <li><a href="../free-cibil-score.html" title="Free Cibil Score">Free Cibil Score</a></li>
								<li><a href="../login.aspx" title="Login" class="waves-effect waves-teal">Login</a></li>
                                <li><a href="https://www.loanbaba.com/blog/" title="Blog" target="_blank">Blog</a></li>
                                <%--<li><a href="../trackapplication.aspx" title="Track Application" class="waves-effect waves-teal">Track Application</a></li>--%>
                                <li class="header-buttonss pull-right"><a class='dropdown-button' href='javascript:void(0);' data-activates='demoDropdown' dropdown data-hover="true"><i class="material-icons">menu</i></a>
                                    <ul id='demoDropdown' class='dropdown-content'>
                <li><a href="../Portfolio/loan-portfolio.aspx" title="Loan Portfolio Manager" class="waves-effect waves-teal">Portfolio</a></li>
                  <li><a href="../trackapplication.aspx" title="Track Application" class="waves-effect waves-teal">Track Application</a></li>
                  <li><a href="../about-us.html" title="About Us" class="waves-effect waves-teal">About Us</a></li>
                  <ul class="collapsible collapsible-accordion m00">
                      <li class="bold">
                          <a class="collapsible-header waves-effect waves-teal"><span class="fa fa-angle-down pull-right"></span>Business Associates</a>
                          <div class="collapsible-body">
                              <ul>
                                  <li class="sideple"><a href="../Business-Associates/Register.aspx" class="waves-effect waves-teal">Registration</a></li>
                                  <li class="sideple"><a href="../Business-Associates/login.aspx" class="waves-effect waves-teal">Login</a></li>
                              </ul>
                          </div>
                      </li>
                  
                  <li class="bold"><a class="collapsible-header waves-effect waves-teal"> <span class="fa fa-angle-down pull-right"></span>FAQ</a>
                    <div class="collapsible-body">
                      <ul>
                        <li class="sideple"><a href="../small-cash-loan/" class="waves-effect waves-teal">Small Cash Loan</a></li>
                        <li class="sideple"><a href="../instant-personal-loan.html" class="waves-effect waves-teal">Instant Personal Loan</a></li>
                        <li class="sideple"><a href="../small-cash-loan/" class="waves-effect waves-teal">Instant Cash Loan</a></li>
                        <li class="sideple"><a href="../personal-loan/" class="waves-effect waves-teal">Personal Loan</a></li>
                        <li class="sideple"><a href="../credit-card/" class="waves-effect waves-teal">Credit Card</a></li>
                        <li class="sideple"><a href="../Business-Associates/" class="waves-effect waves-teal">Business Loan</a></li>
                        <li class="sideple"><a href="../loan-against-property/" class="waves-effect waves-teal">Loan Against Property</a></li>
                        <li class="sideple"><a href="../home-loan/" class="waves-effect waves-teal">Home Loan</a></li>
                        <li class="sideple"><a href="../gold-loan/" title="Gold Loan" class="waves-effect waves-teal">Gold Loan</a></li>
                    </ul>
                    </div>
                  </li>
               
                <li><a href="../contact-us.html" class="waves-effect waves-teal">Contact Us</a></li>
               
                  <li class="bold"><a class="collapsible-header waves-effect waves-teal"> <span class="fa fa-angle-down pull-right"></span>More</a>
                    <div class="collapsible-body mbg-white ">
                      <ul>
                      <p class="m0 pt10 pl15 pb10">Resources</p>
                        <li class=""><a href="../ifsc-code/" class="waves-effect waves-teal" title="Bank IFSC Codes">Bank IFSC Codes</a></li>
                        <li class=""><a href="../tax/tax-meaning-different-types-of-taxes-india.html" class="waves-effect waves-teal" title="Taxation in India">Tax</a></li>
                        <li class=""><a href="../cibil/CIBIL.html" class="waves-effect waves-teal" title="Check CIBIL, Credit Score">CIBIL</a></li>
                        <li class=""><a href="../Experian.html" class="waves-effect waves-teal" title="Experian">Experian India</a></li>
                        <li class=""><a href="../equifax-india.html" class="waves-effect waves-teal" title="Equifax">Equifax India</a></li>
                        <li class=""><a href="../essential-documents/aadhar-card.html" class="waves-effect waves-teal" title="Aadhaar Card">Aadhaar Card</a></li>
                        <li class=""><a href="../essential-documents/pan-card-india.html" class="waves-effect waves-teal" title="PAN Card">PAN Card</a></li>
                       <li class=""><a href="../insurance/car-insurance.html" class="waves-effect waves-teal" title="Insurance">Insurance</a></li>
                      </ul>
                    </div>
                  </li>
                </ul>
                <div class="mainNav-social-links">
                  <ul>
                    <li class="hovernone"><a href="https://www.facebook.com/theloanbaba" title="www.facebook.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-facebook solih"></i></a></li>
                    <li class="hovernone"><a href="https://twitter.com/@LoanBaba" title="twitter.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-twitter solih"></i></a></li>
                    <li class="hovernone"><a href="https://www.linkedin.com/company/loanbaba-com" title="www.linkedin.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-linkedin solih"></i></a></li>
                    <li class="hovernone"><a href="https://www.instagram.com/theloanbaba/" title="www.instagram.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-instagram isquare1 solih"></i></a></li>
                  </ul>
                </div>
              </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- /End Navbar-Collapse -->

                        <!-------------- Nav-Mobile ------------------>
                       <ul id="nav-mobile" class="side-nav">
                           <li class="user-details light-blue">
                                <div class="row mb0">
                                  <div class="col s12 m12">
                                    <div class="col s3"><i class="material-icons p20 f2">person</i></div>
                                    <div class="col s9 msignbox">
                                      <p class="col s6 mt15 mb0"><a href="../login.aspx" class="mcolor-white">Sign In</a> </p>
                                    </div>
                                  </div>
                                </div>
                              </li>
         <!--  <li><a href="https://p2p.loanbaba.com" target="blank" title="P2P" class="waves-effect waves-teal"><i class="fa fa-money" aria-hidden="true"></i>P2P</a></li>-->
          <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
              <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="fa fa-inr mt0" aria-hidden="true"></i>Loans <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <div class="collapsible-body" style="display: none;">
                  <ul>
                    <li class="sideple"><a href="../small-cash-loan" title="Small Cash Loan" class="waves-effect waves-teal">Small Cash Loan</a></li>
                    <li class="sideple"><a href="../instant-personal-loan.html" class="waves-effect waves-teal">Instant Personal Loan</a></li>
                    <li class="sideple"><a href="../instant-cash-loan/" class="waves-effect waves-teal">Instant Cash Loan</a></li>                                           
                    <li class="sideple"><a href="../personal-loan/" title="Personal Loan" class="waves-effect waves-teal">Personal Loan</a></li>
                    <li class="sideple"><a href="../credit-card/" class="waves-effect waves-teal">Credit Card</a></li>
                    <li class="sideple"><a href="../business-loan/" title="Business Loan" class="waves-effect waves-teal">Business Loan</a></li>
                    <li class="sideple"><a href="../loan-against-property/" title="Loan Against Property" class="waves-effect waves-teal">Loan Against Property</a></li>
                    <li class="sideple"><a href="../gold-loan/" title="Gold Loan" class="waves-effect waves-teal">Gold Loan</a></li>
                    <li class="sideple"><a href="../home-loan/" title="Home Loan" class="waves-effect waves-teal">Home Loan</a></li>
                    <%--<li class="sideple"><a href="loaninfo.aspx?catID=33&catName=CarLoan" title="Car Loan" class="waves-effect waves-teal">Car Loan</a></li>--%>

                </ul>
                </div>
              </li>
                <li> <a href="https://play.google.com/store/apps/details?id=com.loanbaba.app.android&referrer=utm_source%3Drightdropdownlink-lbappdownload%26utm_medium%3Drightdropdownlink-appdwnld%26utm_content%3Drightdropdownlinkdirect%26utm_campaign%3Dlbappdownload-rightdropdownlink%26anid%3Dadmob" title="About Us" target="_blank"><i class="fa fa-play" aria-hidden="true"></i> Download App</a> </li>
                <li><a href="../about-us.html" title="About Us" class="waves-effect waves-teal"><i class="fa fa-file-text-o" aria-hidden="true"></i>About Us</a></li>
               
                 <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-calculator mt0" aria-hidden="true"></i>Finance Calculators <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="../Emi-calculator.aspx" title="EMI Calculator" class="waves-effect waves-teal">EMI Calculator</a></li>
                            <li class="sideple"><a href="../Eligibility-calculator.aspx" title="Eligibility Calculator" class="waves-effect waves-teal">Eligibility Calculator</a></li>
                            <li class="sideple"><a href="../financial-calculators/" title="Finance Tools" class="waves-effect waves-teal">Finance Tools</a></li>
                        </ul>
                    </div>
                </li>
                 <li><a href="../trackapplication.aspx" title="Track Application" class="waves-effect waves-teal"><i class="fa fa-thumb-tack" aria-hidden="true"></i>Track Application</a></li>
                <li><a href="../free-cibil-score.html" title="Free Cibil Score" class="waves-effect waves-teal"><i class="fa fa-tachometer"></i>Free Cibil Score</a></li>  
                <li><a href="https://www.loanbaba.com/blog/" title="Blog" target="_blank" class="waves-effect waves-teal"><i class="fa fa-rss" aria-hidden="true"></i>Blog</a></li>
                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-handshake-o mt0" aria-hidden="true"></i>Business Associates <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="../Business-Associates/Register.aspx" title="Business Associates Registration" class="waves-effect waves-teal">Registration</a></li>
                            <li class="sideple"><a href="../Business-Associates/login.aspx" title="Business Associates Login" class="waves-effect waves-teal">Login</a></li>
                        </ul>
                    </div>
                </li>
               
                <li><a href="../Portfolio/loan-portfolio.aspx" title="Portfolio" class="waves-effect waves-teal"><i class="fa fa-suitcase" aria-hidden="true"></i>Portfolio</a></li>
               <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-question-circle-o mt0" aria-hidden="true"></i>FAQ<span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="../faq/small-cash-loan.html" class="waves-effect waves-teal" title="Home Loan">Small Cash Loan</a></li>
                            <li class="sideple"><a href="../faq/personal-loan.html" class="waves-effect waves-teal" title="Personal Loan">Personal Loan</a></li>
							<li class="sideple"><a aria-label="Credit Card" href="../credit-card/" class="waves-effect waves-teal">Credit Card</a></li>
                            <li class="sideple"><a href="../faq/Business-Loan.html" class="waves-effect waves-teal" title="Business Loan">Business Loan</a></li>
                            <li class="sideple"><a href="../faq/loan-against-property.html" class="waves-effect waves-teal" title="Loan Against Property">Loan Against Property</a></li>
                            <!--<li class="sideple"><a href="../faq/education-loan.html" class="waves-effect waves-teal" title="Education Loan">Education Loan</a></li>-->
                            <li class="sideple"><a href="../faq/home-loan.html" class="waves-effect waves-teal" title="Home Loan">Home Loan</a></li>
							<li class="sideple"><a href="../gold-loan/" title="Gold Loan" class="waves-effect waves-teal">Gold Loan</a></li>
                        </ul>
                    </div>
                </li>
                
              <li><a href="../contact-us.html" class="waves-effect waves-teal" title="Contact Us"><i class="fa fa-phone" aria-hidden="true"></i>Contact Us</a></li>
              <li class="bold"><a href="#" class="collapsible-header waves-effect waves-teal" title="More"><i class="fa fa-chevron-circle-down mt0" aria-hidden="true"></i>More <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <div class="collapsible-body">
                  <ul>
                    <li class="sideple"><a class="mcolor-loan">Resources</a></li>
                    <li class="sideple"><a href="../ifsc-code/" class="waves-effect waves-teal" title="Bank IFSC Codes">Bank IFSC Codes</a></li>
                    <li class="sideple"><a href="../tax/tax-meaning-different-types-of-taxes-india.html" class="waves-effect waves-teal" title="Taxation in India">Tax</a></li>
                    <li class="sideple"><a href="../cibil/CIBIL.html" class="waves-effect waves-teal" title="Check CIBIL, Credit Score">CIBIL</a></li>
                    <li class="sideple"><a href="../Experian.html" class="waves-effect waves-teal" title="Experian">Experian India</a></li>
                    <li class="sideple"><a href="../equifax-india.html" class="waves-effect waves-teal" title="Equifax">Equifax India</a></li>
                    <li class="sideple"><a href="../essential-documents/aadhar-card.html" class="waves-effect waves-teal" title="Aadhaar Card">Aadhaar Card</a></li>
                    <li class="sideple"><a href="../essential-documents/pan-card-india.html" class="waves-effect waves-teal" title="PAN Card">PAN Card</a></li>
                    <li class="sideple"><a href="../insurance/car-insurance.html" class="waves-effect waves-teal" title="Insurance">Insurance</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </li>
          <div class="mainNav-social-links">
            <ul>
              <li><a href="https://www.facebook.com/theloanbaba" title="www.facebook.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect "><i class="fa fa-facebook solih"></i></a></li>
              <li><a href="https://twitter.com/@LoanBaba" title="twitter.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-twitter solih"></i></a></li>
              <li><a href="https://www.linkedin.com/company/loanbaba-com" title="www.linkedin.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-linkedin solih"></i></a></li>
              <li><a href="https://www.instagram.com/theloanbaba/" title="www.instagram.com" target="_blank" class="mdl-button mdl-js-button mdl-js-ripple-effect"><i class="fa fa-instagram isquare1 solih"></i></a></li>
            </ul>
          </div>
        </ul>
                        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a> <a href="https://www.loanbaba.com">
                            <img class="logo3" src="../assets/images/Loanbaba.png" alt="loanbaba" /></a>
                    </div>
                </nav>
                <!-------------- END Nav-Mobile ------------------>
                <!-- /End Wrapper -->
                <!-- /End Container -->
            </section>
            <!-- ============================= END  SECTION ============================== -->

            <!-- ============================= COMPARE  SECTION ============================== -->
            <!-- Breadcrumbs -->
            <div class="b-crumbs-wrap mb0">
                <div class=" container b-crumbs">
                   <ul itemscope itemtype="http://schema.org/BreadcrumbList">
  <li itemprop="itemListElement" itemscope
      itemtype="http://schema.org/ListItem">
    <a itemprop="item" href="https://www.loanbaba.com">
    <span itemprop="name">Home</span></a>
    <meta itemprop="position" content="1" />
  </li>
  <li itemprop="itemListElement" itemscope
      itemtype="http://schema.org/ListItem">
    <a itemprop="item" href="https://www.loanbaba.com/Portfolio/loan-portfolio.aspx">
    <span itemprop="name" class="lastchildb-crumbs">Loan Portfolio Manager</span></a>
    <meta itemprop="position" content="2" />
  </li>
</ul>
                </div>
            </div>
            <!-- END Breadcrumbs -->

            <!-- Quick Loan Apply -->

            <!-- END Quick loan apply -->

            <section class="dark-bg1">
                <div class="container">
                    <div class="row">
                        <h1>Loan Portfolio Manager</h1>
                    </div>
                    <!-- /End Row -->
                </div>
                <!-- /End Container -->
            </section>

            <section class="light-bgpro1">
                <div class="container light-bgpro1">
                    <div class="row">
                        <div class="col s12 m12 l12 mt50 mb10">
                            <p>The Loan Portfolio Manager is a unique feature that helps you transfer your existing Loans at current Interest Rates thus helping you save money & keep a track of all your EMI payments. It does so by sending you payment reminder via SMS and email two days before the EMI is due. Irrespective of the number of EMIs you need to pay every month, the Loan Portfolio Manager will remind you of them all. With such an automated tool, you can:</p>
                            <ul class="icon-list">
                                <li><i class="fa fa-pie-chart pr10 fa-2x mcolor-orange" aria-hidden="true"></i>Easily manage your current Loans</li>
                                <li><i class="fa fa-pie-chart pr10 fa-2x mcolor-orange" aria-hidden="true"></i>Transfer Loans at lower Interest Rates and save Money</li>
                                <li><i class="fa fa-pie-chart mcolor-orange pr10 fa-2x" aria-hidden="true"></i>Avoid missed payments</li>
                                <li><i class="fa fa-pie-chart mcolor-orange pr10 fa-2x" aria-hidden="true"></i>Maintain a healthy credit score</li>
                            </ul>
                            <p>The Loan Portfolio Manager also displays the total amount of loan and your total monthly EMI, while helping you keep a close tab on each of the loan. Enter the loan details such as its type, name of the lending institute, rate of interest, tenure, etc. to get started.</p>
                            <p>To avail this facility you can register with us for free or login with your Google or Facebook account. Simply visit the Portfolio page in your account to enter the details requested on the page.</p>
                            <a class="waves-effect waves-light btn  teal accent-4" onclick="javascript: PortfolioLoginPopup();" title="Loan Portfolio Manager Sign In">Sign In</a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- ============================= END COMPARE  SECTION ============================== -->

            <!-- ============================= NEED HELP  SECTION ============================== -->
  <section class="needhelp-bg" id="Call_us_tab">
    <div class="container-fluid">
        <div class="row pt30 ">
            <h4 class="needhelp pb10">Need Help?</h4>
            <div class="loanbaba-col-4 mladd">
                <p class="addtxtftr"><i class="fa fa-map-marker" aria-hidden="true"></i>401, Lakhani Centrium, Sector 15, CBD Belapur, Navi Mumbai, Maharashtra 400614 </p>
            </div>
            
            <div class="loanbaba-col-3 mldot">
                <p class="f1"><a href="mailto:customersupport@loanbaba.com" class="whup"><i class="fa fa-envelope" aria-hidden="true"></i>customersupport[at]loanbaba[dot]com</a></p>
            </div>

        </div>
      
    </div>
</section>
<!-- /End section --> 

<!-- =========================
					Quick links
				============================== -->
<section class="color-bg" id="footerlinksul">
  <div class="container">
    <div class="row pt20 pb0 hide-on-small-only hide-on-med-only">
           <div class="col s12 m4 l2">
              <ul class="new-footer-list">
                    <p class="mb5"><b>Loans</b></p>
                    <li><a href="../small-cash-loan" title="Small Cash Loan" class="waves-effect waves-light">Small Cash Loan</a></li>
                        <li><a href="../instant-personal-loan.html" aria-label="Instant Personal Loan">Instant Personal Loan</a></li>
                        <li><a href="../instant-cash-loan/" aria-label="Instant Cash Loan">Instant Cash Loan</a></li>
                        <li><a href="../personal-loan/" title="" class="waves-effect waves-teal">Personal Loan</a></li>
                        <li><a href="../credit-card/" title="Credit Card" class="waves-effect waves-teal">Credit Card</a></li>
                        <li><a href="../business-loan/" title="" class="waves-effect waves-teal">Business Loan</a></li>
                        <li><a href="../loan-against-property/" title="" class="waves-effect waves-teal">Loan Against Property</a></li>
                        <li><a href="../gold-loan/" title="Gold Loan" class="waves-effect waves-light">Gold Loan</a></li>
                        <li><a href="../home-loan/" title="" class="waves-effect waves-teal">Home Loan</a></li>
                </ul>
          </div>

         <div class="col s12 m4 l2">
              <ul class="new-footer-list">
                    <p class="mb5"><b>Small Cash Loan</b></p>
                    <li><a href="../small-cash-loan/quick-loans.html" title="Quick Loans" target="_self">Quick Loans</a></li>
                    <li><a href="../small-cash-loan/fast-cash-loans.html" title="Fast Cash Loans" target="_self">Fast Cash Loans</a></li>
                    <li><a href="../small-cash-loan/cash-advance-loans-india.html" title="Cash Advance Loans in India" target="_self">Cash Advance Loans in India</a></li>
                    <li><a href="../small-cash-loan/emergency-loan-india.html" title="Emergency Loans in India" target="_self">Emergency Loans in India</a></li>
                </ul>
          </div>
          <div class="col s12 m4 l2">
              <ul class="new-footer-list">
              <p class="mb5"><b>Personal Loan</b></p>
                  <li><a href="../personal-loans/state-bank-of-india-personal-loan.html" title="SBI Personal Loan" target="_self">SBI Personal Loan</a></li>
                   <li><a href="../personal-loans/hdfc-bank-personal-loan.html" title="HDFC Bank Personal Loan" target="_self">HDFC Bank Personal Loan</a></li>
                  <li><a href="../personal-loans/icici-bank-personal-loan.html" title="ICICI Bank Personal Loan" target="_self">ICICI Bank Personal Loan</a></li>
                  <li><a href="../personal-loans/axis-bank-personal-loan.html" title="Axis Bank Personal Loan" target="_self">Axis Bank Personal Loan</a></li>
                 <!-- <li><a href="personal-loans/bajaj-finserv-personal-loan.html" title="Bajaj Finserv Personal Loan" target="_self">Bajaj Finserv Personal Loan</a></li>-->
                  <li><a href="../personal-loans/aditya-birla-finance-personal-loan.html" title="Aditya Birla Finance Personal Loan" target="_self">Aditya Birla Personal Loan</a></li>
                  <li><a href="../personal-loans/shriram-finance-personal-loan.html" title="Shriram Finance Personal Loan" target="_self">Shriram Finance Personal Loan</a></li>
              </ul>
          </div>

          <div class="col s12 m4 l2">
              <ul class="new-footer-list">
              <p class="mb5"><b>Gold Loan</b></p>
                  <li><a href="../gold-loans/sbi-gold-loan.html" title="SBI Gold Loan" target="_self">SBI Gold Loan</a></li>
                  <li><a href="../gold-loans/hdfc-bank-gold-loan.html" title="HDFC Bank Gold Loan" target="_self">HDFC Bank Gold Loan</a></li>
                  <li><a href="../gold-loans/muthoot-finance-gold-loan.html" title="Muthoot Finance Gold Loan" target="_self">Muthoot Finance Gold Loan</a></li>
                  <li><a href="../gold-loans/manappuram-gold-loan.html" title="Manappuram Gold Loan" target="_self">Manappuram Gold Loan</a></li>
                  <li><a href="../gold-loans/icici-bank-gold-loan.html" title="ICICI Bank Gold Loan" target="_self">ICICI Bank Gold Loan</a></li>
                  <li><a href="../gold-loans/axis-bank-gold-loan.html" title="Manappuram Gold Loan" target="_self">Axis Bank Gold Loan</a></li>
                  <li><a href="../gold-loans/andhra-bank-gold-loan.html" title="Andhra Bank Gold Loan" target="_self">Andhra Bank Gold Loan</a></li>
              </ul>
          </div>

          <div class="col s12 m5 l2">
              <ul class="new-footer-list">
              <p class="mb5"><b>Business Loan</b></p>
                  <li><a href="../business-loans/state-bank-business-loan.html" title="SBI Business Loan" target="_self">SBI Business Loan</a></li>
                  <li><a href="../business-loans/hdfc-bank-business-loan.html" title="HDFC Bank Business Loan" target="_self">HDFC Bank Business Loan</a></li>
                  <li><a href="../business-loans/icici-bank-business-loan.html" title="ICICI Bank Business Loan" target="_self">ICICI Bank Business Loan</a></li>
                  <li><a href="../business-loans/axis-bank-business-loan.html" title="Axis Bank Business Loan" target="_self">Axis Bank Business Loan</a></li>
                 <!-- <li><a href="business-loans/bajaj-finserv-business-loan.html" title="Bajaj FinServ Business Loan" target="_self">Bajaj FinServ Business Loan</a></li>-->
                  <li><a href="../business-loans/kotak-bank-business-loan.html" title="Kotak Bank Business Loan" target="_self">Kotak Bank Business Loan</a></li>
                  <li><a href="../business-loans/rbl-bank-business-loan.html" title="RBL Bank Business Loan" target="_self">RBL Bank Business Loan</a></li>
              </ul>
          </div>
        <div class="col s12 m5 l2">
              <ul class="new-footer-list">
              <p class="mb5"><b>Loan Against Property</b></p>
                  <li><a href="../loan-against-property-mortgages/state-bank-lap-loan.html" title="SBI Loan Against Property" target="_self">SBI Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/hdfc-bank-lap-loan.html" title="HDFC Bank Loan Against Property" target="_self">HDFC Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/icici-bank-lap-loan.html" title="ICICI Bank Loan Against Property" target="_self">ICICI Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/axis-bank-lap-loan.html" title="Axis Bank Loan Against Property" target="_self">Axis Bank Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/kotak-mahindra-bank-lap-loan.html" title="Kotak Bank Loan Against Property" target="_self">Kotak Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/lic-hfl-lap-loan.html" title="LIC Housing Finance Loan Against Property" target="_self">LIC HFL Loan Against Property</a></li>
                  <li><a href="../loan-against-property-mortgages/rbl-bank-lap-loan.html" title="RBL Bank Loan Against Property" target="_self">RBL Bank Loan Against Property</a></li>
              </ul>
          </div>
    
      <div class="clearfix"></div>
      <div class="col s12 m4 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Personal Loan by City</b></p>
              <li><a href="../personal-loans/mumbai.html" title="Personal Loan in Mumbai" target="_self">Mumbai</a></li>
              <li><a href="../personal-loans/delhi.html" title="Personal Loan in Delhi" target="_self">Delhi</a></li>
                  <li><a href="../personal-loans/bangalore.html" title="Personal Loan in Bangalore" target="_self">Bangalore</a></li>
                  <li><a href="../personal-loans/pune.html" title="Personal Loan in Pune" target="_self">Pune</a></li>
                  <li><a href="../personal-loans/chennai.html" title="Personal Loan in Chennai " target="_self">Chennai</a></li>
                  <li><a href="../personal-loans/gurgaon.html" title="Personal Loan in Gurgaon" target="_self">Gurgaon</a></li>
              </ul>
          </div>

          <div class="col s12 m4 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Business Loan by City</b></p>
              <li><a href="../business-loans/mumbai.html" title="Business Loan in Mumbai" target="_self">Mumbai</a></li>
              <li><a href="../business-loans/delhi.html" title="Business Loan in Delhi" target="_self">Delhi</a></li>
                  <li><a href="../business-loans/bangalore.html" title="Business Loan in Bangalore" target="_self">Bangalore</a></li>
                  <li><a href="../business-loans/pune.html" title="Business Loan in Pune" target="_self">Pune</a></li>
                  <li><a href="../business-loans/chennai.html" title="Business Loan in Chennai " target="_self">Chennai</a></li>
                  <li><a href="../business-loans/gurgaon.html" title="Business Loan in Gurgaon" target="_self">Gurgaon</a></li>
              </ul>
          </div>

          <div class="col s12 m4 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Gold Loan by City</b></p>
              <li><a href="../gold-loans/mumbai.html" title="Gold Loan in Mumbai" target="_self">Mumbai</a></li>
              <li><a href="../gold-loans/delhi.html" title="Gold Loan in Delhi" target="_self">Delhi</a></li>
                  <li><a href="../gold-loans/bangalore.html" title="Gold Loan in Bangalore" target="_self">Bangalore</a></li>
                  <li><a href="../gold-loans/pune.html" title="Gold Loan in Pune" target="_self">Pune</a></li>
                  <li><a href="../gold-loans/chennai.html" title="Gold Loan in Chennai " target="_self">Chennai</a></li>
                  <li><a href="../gold-loans/gurgaon.html" title="Gold Loan in Gurgaon" target="_self">Gurgaon</a></li>
              </ul>
          </div>

          <div class="col s12 m5 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Loan Against Property by City</b></p>
              <li><a href="../loan-against-property-mortgages/mumbai.html" title="Loan Against property in Mumbai" target="_self">Mumbai</a></li>
               <li><a href="../loan-against-property-mortgages/delhi.html" title="Loan Against property in Delhi" target="_self">Delhi</a></li>
                  <li><a href="../loan-against-property-mortgages/bangalore.html" title="Loan Against property in Bangalore" target="_self">Bangalore</a></li>
                  <li><a href="../loan-against-property-mortgages/pune.html" title="Loan Against property in Pune" target="_self">Pune</a></li>
                  <li><a href="../loan-against-property-mortgages/chennai.html" title="Loan Against property in Chennai " target="_self">Chennai</a></li>
                  <li><a href="../loan-against-property-mortgages/gurgaon.html" title="Loan Against property in Gurgaon" target="_self">Gurgaon</a></li>
              </ul>
          </div>
          <div class="col s12 m5 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Tools</b></p>
                  <li><a href="../Emi-calculator.aspx" title="EMI Calculator" target="_self">EMI Calculator</a></li>
                  <li><a href="../Eligibility-calculator.aspx" title="Eligibility Calculator" target="_self">Eligibility Calculator</a></li>
                  <li><a href="../financial-calculators/" title="Financial Calculators" target="_self">Financial Calculators</a></li>
                   <li><a href="../ifsc-code/" title="Bank Ifsc Code" target="_self">Bank Ifsc Code</a></li>
              </ul>
          </div>
          <div class="col s12 m5 l2 mt15">
              <ul class="new-footer-list">
              <p class="mb5"><b>Resource Center</b></p>
                <li> <a href="../about-us.html" title="About Us">About Us</a> </li>
                <li> <a href="../contact-us.html" title="Contact Us">Contact Us</a> </li>
                <li> <a href="../terms-of-use.html" title="Terms of Use">Terms of Use</a> </li>
                <li> <a href="../privacy-policy.html" title="Privacy Policy">Privacy Policy</a> </li>
                <li> <a href="../sitemap.html" title="Sitemap">Sitemap</a> </li>
                <li> <a href="../Business-Associates/" title="Become A Partner">Become A Partner</a> </li>
              </ul>
          </div>
      </div>
    <div class="row pt20 pb0 hide-on-large-only">
         <div class="col s6 m6 l2 mt-25">
            <ul class="collapsible">
                 <li>
                    <div class="collapsible-header"> Loans <i class="material-icons">arrow_drop_down</i></div>
                    <div class="collapsible-body">
                        <ul class="new-footer-list">
                            <li><a href="../small-cash-loan/" title="Small Cash Loan" target="_self">Small Cash Loan </a></li>
                            <li><a href="../instant-personal-loan.html" title="Instant personal Loan" target="_self">Instant Personal Loan </a></li>
                            <li><a href="../instant-cash-loan/" title="Instant Cash Loan" target="_self">Instant Cash Loan </a></li>
                            <li><a href="../personal-loan/" title="Personal Loan" target="_self">Personal Loan</a></li>
                            <li><a href="../credit-card/" title="Credit Card" target="_self">Credit Card</a></li>
                            <li><a href="../business-loan/" title="Business Loan" target="_self">Business Loan</a></li>
                            <li><a href="../gold-loan/" title="Gold Loan" target="_self">Gold Loan</a></li>
                            <li><a href="../loan-against-property/" title="Loan against Property" target="_self">Loan against Property</a></li>
                            <li><a href="../home-loan/" title="Home Loan" target="_self">Home Loan</a></li>
                        </ul>
                    </div>
                </li>
            </ul>            
          </div>
          <div class="col s6 m6 l2 mt-25">
            <ul class="collapsible">
                <li>
                    <div class="collapsible-header">Small Cash Loan <i class="material-icons">arrow_drop_down</i></div>
                    <div class="collapsible-body">
                        <ul class="new-footer-list">
                            <li><a href="../small-cash-loan/quick-loans.html" title="Quick Loans" target="_self">Quick Loans</a></li>
                            <li><a href="../small-cash-loan/fast-cash-loans.html" title="Fast Cash Loans" target="_self">Fast Cash Loans</a></li>
                            <li><a href="../small-cash-loan/cash-advance-loans-india.html" title="Cash Advances Loan in India" target="_self">Cash Advances Loan in India</a></li>
                            <li><a href="../small-cash-loan/emergency-loan-india.html" title="Emergency Loans in India" target="_self">Emergency Loans in India</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
          <div class="clearfix"></div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Personal Loan <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../personal-loans/state-bank-of-india-personal-loan.html" title="SBI Personal Loan" target="_self">SBI Personal Loan</a></li>
                              <li><a href="../personal-loans/hdfc-bank-personal-loan.html" title="HDFC Bank Personal Loan" target="_self">HDFC Bank Personal Loan</a></li>
                              <li><a href="../personal-loans/icici-bank-personal-loan.html" title="ICICI Bank Personal Loan" target="_self">ICICI Bank Personal Loan</a></li>
                              <li><a href="../personal-loans/axis-bank-personal-loan.html" title="Axis Bank Personal Loan" target="_self">Axis Bank Personal Loan</a></li>
                              <!-- <li><a href="personal-loans/bajaj-finserv-personal-loan.html" title="Bajaj Finserv Personal Loan" target="_self">Bajaj Finserv Personal Loan</a></li>-->
                              <li><a href="../personal-loans/aditya-birla-finance-personal-loan.html" title="Aditya Birla Finance Personal Loan" target="_self">Aditya Birla Personal Loan</a></li>
                              <li><a href="../personal-loans/shriram-finance-personal-loan.html" title="Shriram Finance Personal Loan" target="_self">Shriram Finance Personal Loan</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="col s6 m6 l2 mt-25">
                <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Gold Loan <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../gold-loans/sbi-gold-loan.html" title="SBI Gold Loan" target="_self">SBI Gold Loan</a></li>
                              <li><a href="../gold-loans/hdfc-bank-gold-loan.html" title="HDFC Bank Gold Loan" target="_self">HDFC Bank Gold Loan</a></li>
                              <li><a href="../gold-loans/muthoot-finance-gold-loan.html" title="Muthoot Finance Gold Loan" target="_self">Muthoot Finance Gold Loan</a></li>
                              <li><a href="../gold-loans/manappuram-gold-loan.html" title="Manappuram Gold Loan" target="_self">Manappuram Gold Loan</a></li>
                              <li><a href="../gold-loans/icici-bank-gold-loan.html" title="ICICI Bank Gold Loan" target="_self">ICICI Bank Gold Loan</a></li>
                              <li><a href="../gold-loans/axis-bank-gold-loan.html" title="Manappuram Gold Loan" target="_self">Axis Bank Gold Loan</a></li>
                              <li><a href="../gold-loans/andhra-bank-gold-loan.html" title="Andhra Bank Gold Loan" target="_self">Andhra Bank Gold Loan</a></li>
                           </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Business Loan <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../business-loans/state-bank-business-loan.html" title="SBI Business Loan" target="_self">SBI Business Loan</a></li>
                              <li><a href="../business-loans/hdfc-bank-business-loan.html" title="HDFC Bank Business Loan" target="_self">HDFC Bank Business Loan</a></li>
                              <li><a href="../business-loans/icici-bank-business-loan.html" title="ICICI Bank Business Loan" target="_self">ICICI Bank Business Loan</a></li>
                              <li><a href="../business-loans/axis-bank-business-loan.html" title="Axis Bank Business Loan" target="_self">Axis Bank Business Loan</a></li>
                              <!-- <li><a href="business-loans/bajaj-finserv-business-loan.html" title="Bajaj FinServ Business Loan" target="_self">Bajaj FinServ Business Loan</a></li>-->
                              <li><a href="../business-loans/kotak-bank-business-loan.html" title="Kotak Bank Business Loan" target="_self">Kotak Bank Business Loan</a></li>
                              <li><a href="../business-loans/rbl-bank-business-loan.html" title="RBL Bank Business Loan" target="_self">RBL Bank Business Loan</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="col s6 m6 l2 mt-25">
            <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Loan Against Property<i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../loan-against-property-mortgages/state-bank-lap-loan.html" title="SBI Loan Against Property" target="_self">SBI Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/hdfc-bank-lap-loan.html" title="HDFC Bank Loan Against Property" target="_self">HDFC Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/icici-bank-lap-loan.html" title="ICICI Bank Loan Against Property" target="_self">ICICI Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/axis-bank-lap-loan.html" title="Axis Bank Loan Against Property" target="_self">Axis Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/kotak-mahindra-bank-lap-loan.html" title="Kotak Bank Loan Against Property" target="_self">Kotak Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/lic-hfl-lap-loan.html" title="LIC Housing Finance Loan Against Property" target="_self">LIC Loan Against Property</a></li>
                            <li><a href="../loan-against-property-mortgages/rbl-bank-lap-loan.html" title="RBL Bank Loan Against Property" target="_self">RBL Loan Against Property</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="col s6 m6 l2 mt-25">
          <ul class="collapsible">
              <li>
                  <div class="collapsible-header">Personal Loan by City <i class="material-icons">arrow_drop_down</i></div>
                  <div class="collapsible-body">
                      <ul class="new-footer-list">
                          <li><a href="../personal-loans/mumbai.html" title="Personal Loan in Mumbai" target="_self">Mumbai</a></li>
                          <li><a href="../personal-loans/delhi.html" title="Personal Loan in Delhi" target="_self">Delhi</a></li>
                          <li><a href="../personal-loans/bangalore.html" title="Personal Loan in Bangalore" target="_self">Bangalore</a></li>
                          <li><a href="../personal-loans/pune.html" title="Personal Loan in Pune" target="_self">Pune</a></li>
                          <li><a href="../personal-loans/chennai.html" title="Personal Loan in Chennai " target="_self">Chennai</a></li>
                          <li><a href="../personal-loans/gurgaon.html" title="Personal Loan in Gurgaon" target="_self">Gurgaon</a></li>
                      </ul>
                  </div>
              </li>
          </ul>
          </div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Business Loan by City <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../business-loans/mumbai.html" title="Business Loan in Mumbai" target="_self">Mumbai</a></li>
                              <li><a href="../business-loans/delhi.html" title="Business Loan in Delhi" target="_self">Delhi</a></li>
                              <li><a href="../business-loans/bangalore.html" title="Business Loan in Bangalore" target="_self">Bangalore</a></li>
                              <li><a href="../business-loans/pune.html" title="Business Loan in Pune" target="_self">Pune</a></li>
                              <li><a href="../business-loans/chennai.html" title="Business Loan in Chennai " target="_self">Chennai</a></li>
                              <li><a href="../business-loans/gurgaon.html" title="Business Loan in Gurgaon" target="_self">Gurgaon</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Gold Loan by City <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../gold-loans/mumbai.html" title="Gold Loan in Mumbai" target="_self">Mumbai</a></li>
                              <li><a href="../gold-loans/delhi.html" title="Gold Loan in Delhi" target="_self">Delhi</a></li>
                              <li><a href="../gold-loans/bangalore.html" title="Gold Loan in Bangalore" target="_self">Bangalore</a></li>
                              <li><a href="../gold-loans/pune.html" title="Gold Loan in Pune" target="_self">Pune</a></li>
                              <li><a href="../gold-loans/chennai.html" title="Gold Loan in Chennai " target="_self">Chennai</a></li>
                              <li><a href="../gold-loans/gurgaon.html" title="Gold Loan in Gurgaon" target="_self">Gurgaon</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Loan Against Property by City <i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../loan-against-property-mortgages/mumbai.html" title="Loan Against property in Mumbai" target="_self">Mumbai</a></li>
                              <li><a href="../loan-against-property-mortgages/delhi.html" title="Loan Against property in Delhi" target="_self">Delhi</a></li>
                              <li><a href="../loan-against-property-mortgages/bangalore.html" title="Loan Against property in Bangalore" target="_self">Bangalore</a></li>
                              <li><a href="../loan-against-property-mortgages/pune.html" title="Loan Against property in Pune" target="_self">Pune</a></li>
                              <li><a href="../loan-against-property-mortgages/chennai.html" title="Loan Against property in Chennai " target="_self">Chennai</a></li>
                              <li><a href="../loan-against-property-mortgages/gurgaon.html" title="Loan Against property in Gurgaon" target="_self">Gurgaon</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Tools<i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../Emi-calculator.aspx" title="EMI Calculator" target="_self">EMI Calculator</a></li>
                              <li><a href="../Eligibility-calculator.aspx" title="Eligibility Calculator" target="_self">Eligibility Calculator</a></li>
                              <li><a href="../financial-calculators/" title="Financial Calculators" target="_self">Financial Calculators</a></li>
                              <li><a href="../ifsc-code/" title="Bank Ifsc Code" target="_self">Bank Ifsc Code</a></li>
                          </ul>
                      </div>
                  </li>
              </ul>                  
          </div>
          <div class="col s6 m6 l2 mt-25">
              <ul class="collapsible">
                  <li>
                      <div class="collapsible-header">Resource Center<i class="material-icons">arrow_drop_down</i></div>
                      <div class="collapsible-body">
                          <ul class="new-footer-list">
                              <li><a href="../about-us.html" title="About Us">About Us</a> </li>
                              <li><a href="../contact-us.html" title="Contact Us">Contact Us</a> </li>
                              <li><a href="../terms-of-use.html" title="Terms of Use">Terms of Use</a> </li>
                              <li><a href="../privacy-policy.html" title="Privacy Policy">Privacy Policy</a> </li>
                              <li><a href="../sitemap.html" title="Sitemap">Sitemap</a> </li>
                              <li><a href="../Business-Associates/" title="Become A Partner">Become A Partner</a> </li>
                          </ul>
                      </div>
                  </li>
              </ul> 
          </div>
      </div>
       <!--------          Quick links end    --------->

       <section class="footer-other-linksnew clearfix footer-other-bobotton">
            <div class="lb-links-single ">
                <div class="lb-other-links-title pull-left bold">Loan Interest Rates:</div>
                <div class="lb-other-links-list pull-left"><a href="../personal-loans-interest-rates/"title="Personal Loan Interest Rates">Personal Loan Interest Rates</a>
                | <a href="../business-loan-interest-rates.html"  title="Business Loan Interest Rates">Business Loan Interest Rates</a> | <a href="../gold-loan-interest-rates.html" title="Gold Loan Interest Rates">Gold Loan Interest Rates</a> | <a href="../loan-against-property-interest-rates.html"title="Loan against Property Interest Rates">Loan against Property Interest Rates</a>
                    | <a href="../home-loans-interest-rates.html"title="Home Loan Interest Rates">Home Loan Interest Rates</a></div>
            </div>
     </section>
     <section class="footer-other-linksnew clearfix footer-other-bobotton">
            <div class="lb-links-single ">
                    <div class="lb-other-links-title pull-left bold">Investments:</div>
                    <div class="lb-other-links-list pull-left"><a href="../fixed-deposit/" title="Fixed Deposit">Fixed Deposit</a> |  <a href="../investments/recurring-deposits.html" title="Recurring Deposit">Recurring Deposit</a>
                    | <a href="../savings-accounts/" title="Savings Accounts">Savings Accounts</a> | <a href="../saving-schemes/public-provident-found.html" title="PPF">PPF</a>
                    | <a href="../saving-schemes/sbi-ppf.html" title="SBI PPF Account">SBI PPF Account</a> 
                </div>
                </div>
     </section>
     <section class="footer-other-linksnew clearfix">
            <div class="lb-links-single ">
                    <div class="lb-other-links-title pull-left bold">Taxes:</div>
                    <div class="lb-other-links-list pull-left"><a href="../gst/What-is-Goods-and-Services-Tax-gst-in-india.html" title="GST">GST</a> |  <a href="../tax/online-income-tax-return.html"title="Income Tax">Income Tax</a>
                    | <a href="../tax/properety-tax.html"  title="Property Tax in India">Property Tax in India</a> | <a href="../tax/sales-tax-in-india.html"title="Sales Tax in India">Sales Tax in India</a>
                    | <a href="../tax/tax-meaning-different-types-of-taxes-india.html"title="Types of Taxes in India">Types of Taxes in India</a></div>
                </div>
     </section>
      <section class="footer-other-links mb10 clearfix">
            <div class="lb-links-single ">
                    <div class="lb-other-links-title pull-left bold">Other Links :</div>
                    <div class="lb-other-links-list pull-left"><a href="../cibil/what-is-cibil.html" title="CIBIL">CIBIL</a> |  <a href="../tax/tax-meaning-different-types-of-taxes-india.html"title="Tax">TAX</a>
                    | <a href="../essential-documents/aadhar-card.html"  title="Aadhaar Card">Aadhaar Card</a> | <a href="../essential-documents/pan-card-india.html"title="PAN Card">PAN Card</a>
                    | <a href="../insurance/car-insurance.html"title="Insurance">Insurance</a> | <a href="../financial-calculators/"title="Financial Calculators">Financial Calculators</a>
					 | <a href="../saving-schemes/"title="Saving Schemes">Saving Schemes</a> | <a href="../investments/fixed-deposits.html"title="Investments">Investments</a>
					 | <a href="../essential-documents/voter-id-status.html"title="Voter Id Status">Voter Id Status</a>  | <a href="../savings-accounts/"title="Savings Accounts">Savings Accounts</a>

                    </div>
                </div>
     </section>
    
    <div class="row mb0">
     <div class="col m12 s12 l6">
            <div class="col s12 m12 l5 text-center"><p class="mt0 mb0 pt20">Subscribe to our newsletter</p></div>
            <div class="col s12 m12 l7"> 
              <!-- Begin MailChimp Signup Form -->
             <div class="row">
            <div class="input-field col s12 mb5 m6 l8">
              <input id="email" type="email" placeholder="Email" class="validate pnewsinput">
            </div>
            
            <div class="input-field col s12 m6 l4 pl0 pr0 text-center submargin">
                <a href ="javascript: SavemailSub();" class="btn mbg-loan  waves-effect waves-light" title="Subscribe" >Subscribe</a>
            </div>
                 <div class="clearfix"></div>
                 <div id="SubMsgShow" runat="server" style="display: none;">Subscription success.</div>
          </div>
              <!--End mc_embed_signup--> 
            </div>
     </div>
    <div class="col m12 s12 l6">
      <ul class="col l5 s12 social-link tt-animate ltr mt10 p10 text-center">
        <li class="mr5">Follow Us</li>
        <li><a href="https://www.facebook.com/theloanbaba" title="facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
        <li><a href="https://twitter.com/@LoanBaba" title="twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://www.linkedin.com/company/loanbaba-com" title="linkedin" target="_blank"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="https://www.instagram.com/theloanbaba/" title="instagram" target="_blank"><i class="fa fa-instagram"></i></a></li>
      </ul>
        <div class="col l7 s12">
            <ul class="gplaystorimg">
                <li class="mr5 pl20 pt10">Mobile Apps</li>
                <li class="middle"><a
                    href="https://play.google.com/store/apps/details?id=com.loanbaba.app.android"
                    title="Google Play" rel="noreferrer" target="_blank">
                    <img src="../assets/images/googleplayfooter.png"
                        data-src="../assets/images/googleplayfooter.png"
                        alt="googleplay-loanbaba.com" alt="loanbaba"></a></li>
            </ul>
        </div>
    </div>
    </div>
  </div>
  <!-- /End Table --> 
</section>
<!-- /End Col --> 

            <!-- ==================================================
					FOOTER
				======================================================= -->
            <footer class="footer" id="footer">
                <div class="container">
                    <!-- Footer Menu and Copy -->
                    <div class="row mb10">
                        <div class="col m12 mt0">
                            <p class="footer-copy"><span><i class="fa fa-copyright" aria-hidden="true"></i></span>Copyright <script type="text/javascript">document.write(new Date().getFullYear());</script> loanbaba.com. All Rights Reserved. &nbsp; &nbsp; Crafted with <span><i class="fa fa-heart-o" aria-hidden="true"></i></span> by Sahas Technologies Pvt Ltd</p>
                        </div>
                    </div>
                </div>
                <!-- /End Container -->
            </footer>


            <!--  Scripts-->
            <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script src="../assets/js/materialize.js"></script>
            <script src="../assets/js/init.js"></script>
            <script src="../assets/js/material.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
            <script src="../assets/js/bootstrap.min.js"></script>
            <uc:LoginUser ID="LoginUserControl" runat="server" />

            <script type="text/javascript">
                function PortfolioLoginPopup() {
                   

                    SetPortfolioLogin();
                }


                function SetPortfolioLogin() {
                    $.ajax({
                        type: "POST",
                        url: Serviceurl + "/Appservice.asmx/SetPortfolioLogin",
                        data: {},
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            if (sRid == '') {
                                $('#loginFormModal').modal();
                            } else {
                                window.location.href = "../AppForm.aspx";
                            }

                        },
                        failure: function (data) {

                        }
                    })
                }
            </script>
           
               
            <a href="#0" class="cd-top">Top</a>
        </div>
    </form>
</body>
</html>
