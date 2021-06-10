<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="loan-portfolio-manager.aspx.cs" Inherits="Portfolio_loan_portfolio_manager" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
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
    <meta property="og:type" content="website" />
    <!-- Facebook start -->
    <meta property="og:description" content="Manage your Loan Portfolio, Transfer your Existing Loans at the current interest rates and save money, get EMI reminders and personalized offers" />
    <meta property="og:image" content="../assets/images/lb-social-share.jpg" />
    <meta property="og:url" content="https://www.loanbaba.com/" />
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
<meta name='twitter:title' content="Loan Portfolio Manager – loanbaba.com" />
<meta name='twitter:description' content="Manage your Loan Portfolio, Transfer your Existing Loans at the current interest rates and save money, get EMI reminders and personalized offers" />
<meta name="twitter:image" content="../assets/images/lb-social-share.jpg">
<meta content="text/javascript" http-equiv="Content-Script-Type" />
<meta content="text/css" http-equiv="Content-Style-Type" />

    <!-- CSS -->
    <link href="../assets/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="../assets/css/styles.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" href="../src/css/style.css">
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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <section class="innerhed">
 <nav role="navigation">
                    <div class="nav-wrapper containers">
                        <a id="logo-container" href="../index.aspx" title="loanbaba">
                            <img src="../assets/images/new_logo.png" class="brand-logo" alt="loanbaba">
                        </a>
						<div><a class="hide-on-large-only f1mi right pr10 pl10 waves-effect waves-light" href="tel:18001038024" title="loanbaba"> <i class="fa fa-phone" aria-hidden="true"></i></a>  </div>
                        <!-- Navbar-Collapse -->
                        <div class="navbar-collapse collapse right hide-on-med-and-down">
                            <ul class="nav navbar-nav navbar-right">
                                <!-- Menu Items -->
                               <!-- <li><a href="https://p2p.loanbaba.com" target="blank" title="P2P Lending">P2P</a></li>-->
                                <li><a class='dropdown-button' href='#' data-activates='dropdown1' data-hover="true" title="">Loans <b class="fa fa-angle-down"></b></a>
                                    <ul id='dropdown1' class='dropdown-content'>
                                        <li><a href="https://www.loanbaba.com/small-cash-loan/" title="Small Cash Loan" class="waves-effect waves-light">Small Cash Loan</a></li>
                  <li><a href="https://www.loanbaba.com/personal-loan/" title="" class="waves-effect waves-teal">Personal Loan</a></li>
                  <li><a href="https://www.loanbaba.com/business-loan/" title="" class="waves-effect waves-teal">Business Loan</a></li>
                  <li><a href="https://www.loanbaba.com/loan-against-property/" title="" class="waves-effect waves-teal">Loan Against Property</a></li>
                  <li><a href="https://www.loanbaba.com/education-loan/" title="Education Loan" class="waves-effect waves-light">Education Loan</a></li>
                  <li><a href="https://www.loanbaba.com/home-loan/" title="" class="waves-effect waves-teal">Home Loan</a></li>
                  <li><a href="https://www.loanbaba.com/gold-loan/" title="Gold Loan" class="waves-effect waves-teal">Gold Loan</a></li>
                                    </ul>
                                </li>
                                <%--<li><a href="loan-portfolio.aspx" title="Loan Portfolio Manager">Portfolio</a></li>--%>
                                <li><a class='dropdown-button' href='#' data-activates='dropdown2' data-hover="true" title="">Finance Calculators<b class="fa fa-angle-down pl5"></b></a>
                                    <ul id='dropdown2' class='dropdown-content'>
                                         <li><a href="https://www.loanbaba.com/Emi-calculator.aspx" title="" class="waves-effect waves-teal">EMI Calculator</a></li>
                  <li><a href="https://www.loanbaba.com/Eligibility-calculator.aspx" title="" class="waves-effect waves-teal">Eligibility Calculator</a></li>
          <li><a href="https://www.loanbaba.com/financial-calculators/" title="Finance Tools" class="waves-effect waves-teal">Finance Tools</a></li>
                                    </ul>
                                </li>
                                <%--<li><a href="../trackapplication.aspx" title="Track Application" class="waves-effect waves-teal">Track Application</a></li>--%>
                                 <li><a href="https://www.loanbaba.com/" title="Log Out" class="waves-effect waves-teal">Log Out</a></li>
                                <li class="header-buttonss pull-right"><a class='dropdown-button' href='javascript:void(0);' data-activates='demoDropdown' dropdown data-hover="true"><i class="material-icons">menu</i></a>
                                    <ul id='demoDropdown' class='dropdown-content'>
                <li><a href="https://www.loanbaba.com/Portfolio/loan-portfolio.aspx" title="Loan Portfolio Manager" class="waves-effect waves-teal">Portfolio</a></li>
                  <li><a href="https://www.loanbaba.com/trackapplication.aspx" title="Track Application" class="waves-effect waves-teal">Track Application</a></li>
                  <li><a href="https://www.loanbaba.com/about-us.html" title="About Us" class="waves-effect waves-teal">About Us</a></li>
                  <ul class="collapsible collapsible-accordion m00">
                      <li class="bold">
                          <a class="collapsible-header waves-effect waves-teal"><span class="fa fa-angle-down pull-right"></span>Business Associates</a>
                          <div class="collapsible-body">
                              <ul>
                                  <li class="sideple"><a href="https://www.loanbaba.com/Business-Associates/Register.aspx" class="waves-effect waves-teal">Registration</a></li>
                                  <li class="sideple"><a href="https://www.loanbaba.com/Business-Associates/login.aspx" class="waves-effect waves-teal">Login</a></li>
                              </ul>
                          </div>
                      </li>
                  
                  <li class="bold"><a class="collapsible-header waves-effect waves-teal"> <span class="fa fa-angle-down pull-right"></span>FAQ</a>
                    <div class="collapsible-body">
                      <ul>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/small-cash-loan.html" class="waves-effect waves-teal">Small Cash Loan</a></li>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/personal-loan.html" class="waves-effect waves-teal">Personal Loan</a></li>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/Business-Loan.html" class="waves-effect waves-teal">Business Loan</a></li>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/loan-against-property.html" class="waves-effect waves-teal">Loan Against Property</a></li>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/education-loan.html" class="waves-effect waves-teal">Education Loan</a></li>
                          <li class="sideple"><a href="https://www.loanbaba.com/faq/home-loan.html" class="waves-effect waves-teal">Home Loan</a></li>
                      </ul>
                    </div>
                  </li>
               
                <li><a href="https://www.loanbaba.com/contact-us.html" class="waves-effect waves-teal">Contact Us</a></li>
               
                  <li class="bold"><a class="collapsible-header waves-effect waves-teal"> <span class="fa fa-angle-down pull-right"></span>More</a>
                    <div class="collapsible-body mbg-white ">
                      <ul>
                      <p class="m0 pt10 pl15 pb10">Resources</p>
             <li class=""><a href="https://www.loanbaba.com/ifsc-code/" class="waves-effect waves-teal" title="Bank IFSC Codes">Bank IFSC Codes</a></li>
                        <li class=""><a href="https://www.loanbaba.com/tax/tax-meaning-different-types-of-taxes-india.html" class="waves-effect waves-teal" title="Taxation in India">Tax</a></li>
                        <li class=""><a href="https://www.loanbaba.com/cibil/CIBIL.html" class="waves-effect waves-teal" title="Check CIBIL, Credit Score">CIBIL</a></li>
                        <li class=""><a href="https://www.loanbaba.com/Experian.html" class="waves-effect waves-teal" title="Experian">Experian India</a></li>
                        <li class=""><a href="https://www.loanbaba.com/equifax-india.html" class="waves-effect waves-teal" title="Equifax">Equifax India</a></li>
                        <li class=""><a href="https://www.loanbaba.com/essential-documents/aadhar-card.html" class="waves-effect waves-teal" title="Aadhaar Card">Aadhaar Card</a></li>
                        <li class=""><a href="https://www.loanbaba.com/essential-documents/pan-card-india.html" class="waves-effect waves-teal" title="PAN Card">PAN Card</a></li>
                       <li class=""><a href="https://www.loanbaba.com/insurance/car-insurance.html" class="waves-effect waves-teal" title="Insurance">Insurance</a></li>
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
                        </div>
                        <!-- /End Navbar-Collapse -->

                        <!-------------- Nav-Mobile ------------------>
                        <ul id="nav-mobile" class="side-nav">
         <!--  <li><a href="https://p2p.loanbaba.com" target="blank" title="P2P" class="waves-effect waves-teal"><i class="fa fa-money" aria-hidden="true"></i>P2P</a></li>-->
          <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
              <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="fa fa-inr mt0" aria-hidden="true"></i>Loans <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <div class="collapsible-body" style="display: none;">
                  <ul>
                      <li class="sideple"><a href="https://www.loanbaba.com/small-cash-loan/" title="Small Cash Loan" class="waves-effect waves-teal">Small Cash Loan</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/personal-loan/" title="Personal Loan" class="waves-effect waves-teal">Personal Loan</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/business-loan/" title="Business Loan" class="waves-effect waves-teal">Business Loan</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/loan-against-property/" title="Loan Against Property" class="waves-effect waves-teal">Loan Against Property</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/education-loan/" title="Education Loan" class="waves-effect waves-teal">Education Loan</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/home-loan/" title="Home Loan" class="waves-effect waves-teal">Home Loan</a></li>
                      <li class="sideple"><a href="https://www.loanbaba.com/gold-loan/" title="Gold Loan" class="waves-effect waves-teal">Gold Loan</a></li>
                  </ul>
                </div>
              </li>
              <li><a href="https://www.loanbaba.com/Portfolio/loan-portfolio.aspx" title="Portfolio" class="waves-effect waves-teal"><i class="fa fa-suitcase" aria-hidden="true"></i>Portfolio</a></li>
                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-handshake-o mt0" aria-hidden="true"></i>Business Associates <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="https://www.loanbaba.com/Business-Associates/Register.aspx" title="Business Associates Registration" class="waves-effect waves-teal">Registration</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/Business-Associates/login.aspx" title="Business Associates Login" class="waves-effect waves-teal">Login</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-calculator mt0" aria-hidden="true"></i>Finance Calculators <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="https://www.loanbaba.com/Emi-calculator.aspx" title="EMI Calculator" class="waves-effect waves-teal">EMI Calculator</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/Eligibility-calculator.aspx" title="Eligibility Calculator" class="waves-effect waves-teal">Eligibility Calculator</a></li>
                <li class="sideple"><a href="https://www.loanbaba.com/financial-calculators/" title="Finance Tools" class="waves-effect waves-teal">Finance Tools</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="https://www.loanbaba.com/trackapplication.aspx" title="Track Application" class="waves-effect waves-teal"><i class="fa fa-thumb-tack" aria-hidden="true"></i>Track Application</a></li>
                <li><a href="https://www.loanbaba.com/about-us.html" title="About Us" class="waves-effect waves-teal"><i class="fa fa-file-text-o" aria-hidden="true"></i>About Us</a></li>
                <li class="bold">
                    <a class="collapsible-header  waves-effect waves-teal"><i class="fa fa-question-circle-o mt0" aria-hidden="true"></i>FAQ<span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                    <div class="collapsible-body">
                        <ul>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/small-cash-loan.html" class="waves-effect waves-teal" title="Home Loan">Small Cash Loan</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/personal-loan.html" class="waves-effect waves-teal" title="Personal Loan">Personal Loan</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/Business-Loan.html" class="waves-effect waves-teal" title="Business Loan">Business Loan</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/loan-against-property.html" class="waves-effect waves-teal" title="Loan Against Property">Loan Against Property</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/education-loan.html" class="waves-effect waves-teal" title="Education Loan">Education Loan</a></li>
                            <li class="sideple"><a href="https://www.loanbaba.com/faq/home-loan.html" class="waves-effect waves-teal" title="Home Loan">Home Loan</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="https://www.loanbaba.com/blog/" title="Blog" target="_blank" class="waves-effect waves-teal"><i class="fa fa-rss" aria-hidden="true"></i>Blog</a></li>
              <li><a href="https://www.loanbaba.com/contact-us.html" class="waves-effect waves-teal" title="Contact Us"><i class="fa fa-phone" aria-hidden="true"></i>Contact Us</a></li>
              <li class="bold"><a href="#" class="collapsible-header waves-effect waves-teal" title="More"><i class="fa fa-chevron-circle-down mt0" aria-hidden="true"></i>More <span class="more"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
                <div class="collapsible-body">
                  <ul>
                    <li class="sideple"><a class="mcolor-loan">Resources</a></li>
            <li class="sideple"><a href="https://www.loanbaba.com/ifsc-code/" class="waves-effect waves-teal" title="Bank IFSC Codes">Bank IFSC Codes</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/tax/tax-meaning-different-types-of-taxes-india.html" class="waves-effect waves-teal" title="Taxation in India">Tax</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/cibil/CIBIL.html" class="waves-effect waves-teal" title="Check CIBIL, Credit Score">CIBIL</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/Experian.html" class="waves-effect waves-teal" title="Experian">Experian India</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/equifax-india.html" class="waves-effect waves-teal" title="Equifax">Equifax India</a></li>
            <li class="sideple"><a href="https://www.loanbaba.com/essential-documents/aadhar-card.html" class="waves-effect waves-teal" title="Aadhaar Card">Aadhaar Card</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/essential-documents/pan-card-india.html" class="waves-effect waves-teal" title="PAN Card">PAN Card</a></li>
                    <li class="sideple"><a href="https://www.loanbaba.com/insurance/car-insurance.html" class="waves-effect waves-teal" title="Insurance">Insurance</a></li>
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
                        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a> <a href="https://loanbaba.com">
                            <img class="logo3" src="../assets/images/Loanbaba.png" alt="loanbaba" /></a>
                    </div>
                </nav>
                <!-------------- END Nav-Mobile ------------------>
        </div>
        <!-- /End Wrapper -->
        </div >
 
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

        <section class="portfoliobg">
            <div class="container pb80">
                <div class="row">
                    <div class="col s12 m12 l12 mt20 mb30 card-panel card-lshadow">
                        <h1 class="text-center mcolor-cyan mt30 bold">Loan Portfolio Manager</h1>
                        <p class="text-center">Easily manage your current Loans</p>
                        <div class="divider mb20"></div>
                        <div class="row">
                            <div class="col s12">
                                <ul class="tabs">
                                    <li class="tab col s3 protab"><a class="active" href="#portfolio">Portfolio</a></li>
                                    <li class="tab col s3 protab"><a href="#addtoportfolio">Add to Portfolio</a></li>
                                </ul>
                            </div>
                            <div id="portfolio" class="col s12">
                                <asp:ListView ID="ListViewQLApplications" runat="server"
                                    ItemPlaceholderID="itemPlaceHolder"
                                    OnItemCommand="ListViewQLApplications_ItemCommand" OnItemDataBound="ListViewQLApplications_ItemDataBound">
                                    <LayoutTemplate>
                                        <table id="mastTbl" class="display">
                                            <thead class="col s12 m12 l12 mt20 p0  mbg-gray myappborder">
                                                <tr class="col-md-12 bobr">
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Loan Type</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Loan Amount</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label class="prlihet">
                                                            Loan Outstanding Amount</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            ROI</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Tenure</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Bank Name</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            EMI</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            EMI Date</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label class="prlihet">
                                                            Current Market ROI</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Total Saving</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>
                                                            Apply</label>
                                                    </th>
                                                    <th class="col s12 m2 l1 pt15 myappbright myappbm prtableh">
                                                        <label>Actions</label>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="itemPlaceHolder" runat="server">
                                                </tr>
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr class="col s12 m12 l12 p0 mt20 myappborder">
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><%# Eval("CategoryName")%></span>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><i class="fa fa-inr"></i><%#Eval("LoanAmount", "{0:n0}")%></span>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                               <%-- <i class="fa fa-inr"></i>--%>
                                                <asp:Label ID="lblloanSdate" runat="server" Visible="false" Text='<%# Eval("LoanStartDate") %>'></asp:Label>
                                                <asp:Label ID="lblREMAINING" class="fa fa-inr" runat="server" Text='<%# Eval("REMAINING", "{0:n0}") %>' />
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><%# Eval("ROI")%>%</span>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <asp:Label ID="lblTenure" runat="server" Text='<%# Eval("Tenure") %>' />
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><%# Eval("BankName")%></span>
                                                 <asp:Label ID="lblCity" Visible="false" runat="server" Text='<%# Eval("City") %>' />
                                                <asp:Label ID="lblSalary" Visible="false"  runat="server" Text='<%# Eval("Salary") %>' />
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                               <%-- <i class="fa fa-inr"></i>--%>
                                                <asp:Label ID="lblEMI" class="fa fa-inr" runat="server" Text='<%# Eval("EMI", "{0:n0}") %>' />
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><%# Eval("EMIDate")%> th</span></td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span><%# Eval("PercentMargin")%>%</span>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <span>
                                                    <asp:Label ID="lbltaSaving" runat="server" Visible="false" Text="NA"></asp:Label>
                                                    <asp:Label ID="lblicon" runat="server" class="fa fa-inr"></asp:Label>                                                  
                                                    <asp:Label ID="lblTotalLAmtSaving" runat="server" Visible="true" Text='<%# Eval("TotalLoanAmountSaving", "{0:n0}") %>' />
                                                </span>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <asp:Label ID="lblASaving" runat="server" Visible="false" Text="NA"></asp:Label>
                                                <%--  <asp:Label ID="TypeOfPaintingLabel" Visible='<%# testbind(Eval("CatId").ToString()) %>' Text="NA" runat="server"></asp:Label>--%>
                                                <asp:LinkButton ID="LBApply" runat="server" Visible='<%# User_Link(Eval("CatId").ToString()) %>' CommandArgument='<%# Eval("PortfolioId")%>' class="waves-effect waves-light btn" CommandName="Redirect2">Apply</asp:LinkButton>
                                            </td>
                                            <td class="col s12 m2 l1 pt15 pr0 myappbright myappbm prtable">
                                                <asp:LinkButton ID="bDelete" runat="server" CommandName="DeleteRecord" CommandArgument='<%# Eval("PortfolioId") %>'
                                                    OnClientClick="javascript:return confirm('Do you want to delete?');" class="btn-floating waves-effect waves-light red"
                                                    ToolTip="Delete"><i class="material-icons">close</i></asp:LinkButton>

                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <table class="table table-bordered table-condensed table-striped table-primary table-vertical-center checkboxs js-table-sortable">
                                            <tr>
                                                <td>No record found.
                                                </td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                </asp:ListView>
                                <!--END Application Data---->
                                <div class="col s12 m12 l3 pull-right mt30">
                                    <div class="col s12">
                                        <div>
                                            <label class="bold">Loan Amount Total:</label>
                                            <asp:Label ID="lblTLA" runat="server" CssClass="mcolor-teal bold f1"></asp:Label>
                                        </div>
                                        <div>
                                            <label class="bold">EMI Total:</label>
                                            <asp:Label ID="lblTEMI" runat="server" CssClass="mcolor-teal bold f1"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="clrbth"></div>
                                </div>
                            </div>

                            <div class="clrbth"></div>
                            <div id="addtoportfolio" class="col s12">
                                <div class="row">
                                    <div class="col s12 mt30">
                                        <div class="row">
                                            <h5 class="pl20 mt0 pr20 ">Add Portfolio Details</h5>
                                            <div class="heading-double ml20 mb20"></div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-money prefix" aria-hidden="true"></i>
                                                <asp:DropDownList ID="DDLoanT" runat="server" class="validate">
                                                    <asp:ListItem Value="Select" Text="Select Loan Type" />
                                                    <asp:ListItem Value="2" Text="Personal Loan" />
                                                    <asp:ListItem Value="1" Text="Home Loan" />
                                                    <asp:ListItem Value="33" Text="Car Loan" />
                                                    <asp:ListItem Value="4" Text="Business Loan" />
                                                    <asp:ListItem Value="5" Text="Loan Against Property" />                                                                                                      
                                                </asp:DropDownList>
                                                <label for="icon_prefix">Type of loan</label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDLoanT" InitialValue="Select"
                                                    ErrorMessage="Please select Type of Loan" ValidationGroup="grp" Font-Size="12px" ForeColor="Red" />
                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-university prefix" aria-hidden="true"></i>
                                                <asp:TextBox ID="txtbankname" runat="server" class="validate" type="text" onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                                                <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" DelimiterCharacters=""
                                                    Enabled="True" ServiceMethod="GetListofBankName" MinimumPrefixLength="1" EnableCaching="true"
                                                    ServicePath="" TargetControlID="txtbankname">
                                                </asp:AutoCompleteExtender>

                                                <label for="bank-name">Bank Name</label>
                                                <asp:RequiredFieldValidator ID="Reqbankname" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter Bank name." ControlToValidate="txtbankname" runat="server">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-inr prefix" aria-hidden="true"></i>
                                                <asp:TextBox ID="txtLoanAmount" runat="server" class="validate" type="text" onkeypress="return validate(event)"></asp:TextBox>

                                                <label for="loan-amount">Loan Amount</label>
                                                <asp:RequiredFieldValidator ID="Reqlamount" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter Loan Amount." ControlToValidate="txtLoanAmount" runat="server">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-percent prefix" aria-hidden="true"></i>
                                                <asp:TextBox ID="txtROI" runat="server" class="validate" type="text" onkeypress="return validate(event)"></asp:TextBox>

                                                <label for="roi">ROI</label>
                                                <asp:RequiredFieldValidator ID="ReqROI" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter ROI." ControlToValidate="txtROI" runat="server">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="Regex1" runat="server" ValidationExpression="((\d+)((\.\d{1,2})?))$"
                                                    ErrorMessage="Please enter valid ROI." ForeColor="Red" Font-Size="12px"
                                                    ControlToValidate="txtROI" SetFocusOnError="True" Display="Dynamic" />
                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="ROI Limit 36.00" SetFocusOnError="True" Display="Dynamic" Type="Double"
                                                    ForeColor="Red" Font-Size="12px" MaximumValue="36" MinimumValue="1" ControlToValidate="txtROI"></asp:RangeValidator>

                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-hourglass-half prefix" aria-hidden="true"></i>
                                                <asp:TextBox ID="txtTenure" runat="server" class="validate" type="text" onkeypress="return validate(event)"></asp:TextBox>

                                                <label for="tenure">Tenure</label>
                                                <asp:RangeValidator ID="Rangmi" runat="server" ErrorMessage="Tenure limit maximum 30 year" SetFocusOnError="True" Display="Dynamic" Type="Integer"
                                                    ForeColor="Red" Font-Size="12px" MaximumValue="30" MinimumValue="1" ControlToValidate="txtTenure"></asp:RangeValidator>
                                                <asp:RequiredFieldValidator ID="ReqTenure" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter Loan Tenure." ControlToValidate="txtTenure" runat="server">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegTenure" Font-Size="12px" ForeColor="Red" ControlToValidate="txtTenure" runat="server" ErrorMessage="Only Numbers allowed or no decimal points" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-sun-o prefix" aria-hidden="true"></i>
                                                <asp:DropDownList ID="DDlistDay" runat="server" class="validate">
                                                    <asp:ListItem Value="Select" Text="Day" />
                                                    <asp:ListItem Value="1" Text="1" />
                                                    <asp:ListItem Value="2" Text="2" />
                                                    <asp:ListItem Value="3" Text="3" />
                                                    <asp:ListItem Value="4" Text="4" />
                                                    <asp:ListItem Value="5" Text="5" />
                                                    <asp:ListItem Value="6" Text="6" />
                                                    <asp:ListItem Value="7" Text="7" />
                                                    <asp:ListItem Value="8" Text="8" />
                                                    <asp:ListItem Value="9" Text="9" />
                                                    <asp:ListItem Value="10" Text="10" />
                                                    <asp:ListItem Value="11" Text="11" />
                                                    <asp:ListItem Value="12" Text="12" />
                                                    <asp:ListItem Value="13" Text="13" />
                                                    <asp:ListItem Value="14" Text="14" />
                                                    <asp:ListItem Value="15" Text="15" />
                                                    <asp:ListItem Value="16" Text="16" />
                                                    <asp:ListItem Value="17" Text="17" />
                                                    <asp:ListItem Value="18" Text="18" />
                                                    <asp:ListItem Value="19" Text="19" />
                                                    <asp:ListItem Value="20" Text="20" />
                                                    <asp:ListItem Value="21" Text="21" />
                                                    <asp:ListItem Value="22" Text="22" />
                                                    <asp:ListItem Value="23" Text="23" />
                                                    <asp:ListItem Value="24" Text="24" />
                                                    <asp:ListItem Value="25" Text="25" />
                                                    <asp:ListItem Value="26" Text="26" />
                                                    <asp:ListItem Value="27" Text="27" />
                                                    <asp:ListItem Value="28" Text="28" />
                                                    <asp:ListItem Value="29" Text="29" />
                                                    <asp:ListItem Value="30" Text="30" />
                                                    <asp:ListItem Value="31" Text="31" />
                                                </asp:DropDownList>
                                                <label for="date">EMI Date</label>
                                                <asp:RequiredFieldValidator ID="ReqDay" runat="server" ControlToValidate="DDlistDay" InitialValue="Select"
                                                    ErrorMessage="Please select EMI Date" ValidationGroup="grp" Font-Size="12px" ForeColor="Red" />
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-calendar prefix" aria-hidden="true"></i>
                                                <asp:TextBox ID="txtLoanStartDate" class="datepicker" runat="server"></asp:TextBox>
                                                <label for="icon_prefix" class="calenderlabel">LOAN START DATE</label>
                                                <asp:RequiredFieldValidator ID="ReqLoanStartDate" ErrorMessage="Loan Start Date is Required" ForeColor="Red" Font-Size="12px" ControlToValidate="txtLoanStartDate" runat="server" SetFocusOnError="True" Display="Dynamic" ValidationGroup="grp" />
                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-map-marker prefix"></i>
                                                <asp:TextBox ID="txtCity" runat="server" class="validate" type="text" onkeypress="return onlyAlphabets(event,this);"></asp:TextBox>
                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" DelimiterCharacters=""
                                                    Enabled="True" ServiceMethod="GetListofCitys" MinimumPrefixLength="1" EnableCaching="true"
                                                    ServicePath="" TargetControlID="txtCity">
                                                </asp:AutoCompleteExtender>
                                                <label for="txtCity">City</label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter Loan Amount." ControlToValidate="txtCity" runat="server">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="input-field col s12 m6 l4">
                                                <i class="fa fa-inr prefix"></i>
                                                <asp:TextBox ID="TextSalary" runat="server" class="validate" type="text" onkeypress="return validate(event)"></asp:TextBox>
                                                <label for="TextSalary">Salary</label>
                                                <asp:RequiredFieldValidator ID="ReqTextSalary" ValidationGroup="grp" Display="Dynamic" Font-Size="12px" ForeColor="Red" ErrorMessage="Please enter Loan Amount." ControlToValidate="TextSalary" runat="server">
                                                </asp:RequiredFieldValidator>

                                            </div>
                                        </div>

                                        <div class="input-field col s12 m12 l12 text-center">
                                            <asp:LinkButton class="waves-effect waves-light btn-large light-green" ID="btnsubmit" OnClick="btnsubmit_Click" OnClientClick="alertMessage()" ValidationGroup="grp" ViewStateMode="Disabled" runat="server">Submit</asp:LinkButton>
                                            <%-- <a class="waves-effect waves-light btn-large light-green">Submit</a>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ============================= END COMPARE  SECTION ============================== -->

          <!-- ============================= NEED HELP  SECTION ============================== -->
           <section class="needhelp-bg">
  <div class="container">
    <div class="row pt40 pb10">
      <div class="col s12 m4 l2">
        <h4> Need Help? </h4>
      </div>
      <!-- /End col -->
        <div class="col s12 m4 l3">
            <p class="f1"><a href="tel:18001038024" class="whup"><i class="fa fa-phone-square mcolor-red f2 mr10" aria-hidden="true"></i>Toll Free:  18001038024</a></p>
        </div>
        <!-- /End col -->
        <div class="col s12 m4 l3">
            <p class="f1 pt5"><a href="tel:7668876688" class="whup"><img src="https://www.loanbaba.com/assets/images/missed.png" alt="Missed Call" class=" mr10">Missed Call: 7668876688</a> </p>
        </div>
        <!-- /End col -->
        <div class="col s12 m8 l4">
            <p class="f1"><a href="mailto:customersupport@loanbaba.com" class="whup"><i class="fa fa-envelope mcolor-red f2 mr10" aria-hidden="true"></i>customersupport[at]loanbaba[dot]com</a></p>
        </div>
        <!-- /End col -->
    </div>
    <!-- /End row --> 
  </div>
  <!-- /End container --> 
</section>
<!-- /End section --> 

<!-- =========================
					Quick links
				============================== -->
<section class="color-bg">
  <div class="container">
    <div class="pt20 pb10">
      <div class="row  mb5">
         <div class="col s12 m4 l2">
              <ul class="footer-list">
                  <li><a href="https://www.loanbaba.com/loanbaba.html" title="www.loanbaba.com" target="_self">Why loanbaba.com? </a></li>
                  <li><a href="https://www.loanbaba.com/home-loan/" title="Apply Compare Home Loan" target="_self">Apply Compare Home Loan </a></li>
                  <li><a href="https://www.loanbaba.com/home-loans-emi-calculator.html" title="Home Loan EMI Calculator" target="_self">Home Loan EMI Calculator </a></li>
                  <li><a href="https://www.loanbaba.com/home-loans-eligibility-calculator.html" title="Home Loan Eligibility Calculator" target="_self">Home Loan Eligibility Calculator </a></li>
                  <li><a href="https://www.loanbaba.com/home-loans-interest-rates.html" title="Home Loan Interest Rates" target="_self">Home Loan Interest Rates</a></li>
              </ul>
          </div>

          <div class="col s12 m4 l2">
              <ul class="footer-list">
                  <li><a href="https://www.loanbaba.com/Education-Loan.html" title="Education Loan" target="_self">Education Loan </a></li>
                   <li><a href="https://www.loanbaba.com/gold-loan/" title="Apply Gold Loan Online" target="_self">Apply Gold Loan Online</a></li>
                  <li><a href="https://www.loanbaba.com/small-cash-loan/" title="Apply Instant Cash Loans" target="_self">Apply Instant Cash Loans</a></li>
                  <li><a href="https://www.loanbaba.com/Instant-Loans-Eligibility.html" title="Instant Loans Eligibility" target="_self">Instant Loans Eligibility</a></li>
                  <li><a href="https://www.loanbaba.com/personal-loan/" title="Apply Compare Personal Loan" target="_self">Apply Compare Personal Loan</a></li>
              </ul>
          </div>

          <div class="col s12 m4 l2">
              <ul class="footer-list">
                  <li><a href="https://www.loanbaba.com/personal-loans-emi-calculator.html" title="Personal Loan EMI Calculator" target="_self">Personal Loan EMI Calculator</a></li>
                  <li><a href="https://www.loanbaba.com/personal-loans-eligibility-calculator.html" title="Personal Loan Eligibility Calculator" target="_self">Personal Loan Eligibility Calculator</a></li>
                  <li><a href="https://www.loanbaba.com/personal-loans-interest-rates/" title="Personal Loan Interest Rates" target="_self">Personal Loan Interest Rates</a></li>
                  <li><a href="https://www.loanbaba.com/business-loan/" title="Apply Compare Business Loan" target="_self">Apply Compare Business Loan</a></li>
                  <li><a href="https://www.loanbaba.com/business-loans-emi-calculator.html" title="Business Loan EMI Calculator" target="_self">Business Loan EMI Calculator</a></li>
              </ul>
          </div>

          <div class="col s12 m5 l3">
              <ul class="footer-list">
                  <li><a href="https://www.loanbaba.com/Business-loan-Interest-Rates.html" title="Business Loan Interest Rates" target="_self">Business Loan Interest Rates</a></li>
                  <li><a href="https://www.loanbaba.com/loan-against-property/" title="Apply Compare Loan Against Property" target="_self">Apply Compare Loan Against Property</a></li>
                  <li><a href="https://www.loanbaba.com/loan-against-property-emi-calculator.html" title="Loan Against Property EMI Calculator" target="_self">Loan Against Property EMI Calculator</a></li>
                  <li><a href="https://www.loanbaba.com/loan-against-property-eligibility.html" title="Loan Against Property Eligibility" target="_self">Loan Against Property Eligibility</a></li>
                  <li><a href="https://www.loanbaba.com/loan-against-property-interest-rates.html" title="Loan Against Property Interest Rates" target="_self">Loan Against Property Interest Rates</a></li>
              </ul>
          </div>
        <div class="col s12 m7 l3">
          <h6 class="mt0 mb5">SUBSCRIBE TO OUR NEWSLETTER!</h6>
          <p class="pnews mb5">Subscribe To Our Newsletter To Be Updated Of <br>
            The Latest News. We Promise Not To Spam!</p>
          <div class="row"> 
            <!-- Begin MailChimp Signup Form -->
            <div id="mc_embed_signup">
              <form action="//loanbaba.us12.list-manage.com/subscribe/post?u=1774768055c0c236d9d3738a9&amp;id=5571bfb58a" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" validate>
                <div id="mc_embed_signup_scroll">
                  <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
                  <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                  <div style="position: absolute; left: -5000px;" aria-hidden="true">
                    <input type="text" name="b_1774768055c0c236d9d3738a9_5571bfb58a" tabindex="-1" value="">
                  </div>
                  <div class="clear">
                    <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
                  </div>
                </div>
              </form>
            </div>
            <!--End mc_embed_signup--> 
          </div>
        </div>
      </div>
      <section class="footer-other-links clearfix">
            <div class="ft-finance-links-single ">
                    <div class="ft-other-links-title pull-left">Other Links :</div>
                    <div class="ft-other-links-list pull-left"><a href="https://www.loanbaba.com/cibil/CIBIL.html" title="CIBIL">CIBIL</a> |  <a href="https://www.loanbaba.com/tax/tax-meaning-different-types-of-taxes-india.html"title="Tax">TAX</a>
                    | <a href="https://www.loanbaba.com/essential-documents/aadhar-card.html"  title="Aadhaar Card">Aadhaar Card</a> | <a href="https://www.loanbaba.com/essential-documents/pan-card-india.html"title="PAN Card">PAN Card</a>
                    | <a href="https://www.loanbaba.com/insurance/car-insurance.html"title="Insurance">Insurance</a> | <a href="https://www.loanbaba.com/financial-calculators/"title="Financial Calculators">Financial Calculators</a>
					 | <a href="https://www.loanbaba.com/saving-schemes/"title="Saving Schemes">Saving Schemes</a> | <a href="https://www.loanbaba.com/investments/fixed-deposits.html"title="Investments">Investments</a>
					 | <a href="https://www.loanbaba.com/gst/What-is-Goods-and-Services-Tax-gst-in-india.html"title="GST">GST</a>  | <a href="https://www.loanbaba.com/savings-accounts/"title="Savings Accounts">Savings Accounts</a>
					 | <a href="https://www.loanbaba.com/credit-card/17-credit-cards-with-no-fees-india.html"title="Credit Cards">Credit Cards</a>| <a href="https://www.loanbaba.com/fixed-deposit/"title="Fixed Deposit">Fixed Deposit</a> </div>
                </div>
     </section>
    </div>
    <div class="col m12 text-center ">
      <ul class="social-link tt-animate ltr mt-20 pb10">
        <li class="mr5">Join Us</li>
        <li><a href="https://www.facebook.com/theloanbaba" title="facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
        <li><a href="https://twitter.com/@LoanBaba" title="twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://www.linkedin.com/company/loanbaba-com" title="linkedin" target="_blank"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="https://www.instagram.com/theloanbaba/" title="instagram" target="_blank"><i class="fa fa-instagram"></i></a></li>
        <li class="mr5 pl20">Mobile Apps</li>
        <li><a href="https://play.google.com/store/apps/details?id=com.loanbaba.android&hl=en" title="Google Play" target="_blank"><img src="https://www.loanbaba.com/assets/images/googleplayfooter.png" alt="googleplay-loanbaba.com"></a></li>
      </ul>
      <ul class="footer-nav pb30">
        <li> <a href="https://www.loanbaba.com/about-us.html">About</a> </li>
        <li> <a href="https://www.loanbaba.com/contact-us.html">Contact Us</a> </li>
        <li> <a href="https://www.loanbaba.com/terms-of-use.html">Terms of Use</a> </li>
        <li> <a href="https://www.loanbaba.com/privacy-policy.html">Privacy Policy</a> </li>
        <li> <a href="https://www.loanbaba.com/sitemap.html">Sitemap</a> </li>
      </ul>
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
                        <p class="footer-copy"><span><i class="fa fa-copyright" aria-hidden="true"></i></span>Copyright 2018 loanbaba.com. All Rights Reserved. &nbsp; &nbsp; Crafted with <span><i class="fa fa-heart-o" aria-hidden="true"></i></span> by Sahas Technologies Pvt Ltd</p>
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
        <script type="text/javascript">
            function alertMessage() {
                alert('submitted successfully.');
            }
        </script>
        <script type="text/javascript">
            //Function to allow only numbers to textbox
            function validate(key) {
                //getting key code of pressed key
                var keycode = (key.which) ? key.which : key.keyCode;
                var phn = document.getElementById('txtPhn');
                //comparing pressed keycodes
                if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
                    return false;
                }
                else {
                    //Condition to check textbox contains ten numbers or not
                    if (phn.value.length < 10) {
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            }
        </script>
        <script language="Javascript" type="text/javascript">
            function onlyAlphabets(e, t) {
                try {
                    if (window.event) {
                        var charCode = window.event.keyCode;
                    }
                    else if (e) {
                        var charCode = e.which;
                    }
                    else { return true; }
                    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123 || charCode == 32))
                        return true;
                    else
                        return false;
                }
                catch (err) {
                    alert(err.Description);
                }
            }
        </script>
        <a href="#0" class="cd-top">Top</a>
        </div>
    </form>
</body>
</html>
