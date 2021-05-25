<?php $active ='Home'; 
// print_r($_GET);
//$msg = '';
//if (isset($_GET['msg']) && !empty($_GET['msg'])) {
//	$msg = $_GET['msg'];
//}
 
?>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Application Form</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta property="og:type" content="website" />
    <meta content="INDEX,FOLLOW" name="Robots" />
    <meta content="All, FOLLOW" name="GOOGLEBOTS" />
    <meta content="All, FOLLOW" name="YAHOOBOTS" />
    <meta content="All, FOLLOW" name="MSNBOTS" />
    <meta content="All, FOLLOW" name="BINGBOTS" />   
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="canonical" href="https://www.dgeniussolutions.com/index.html" />
	<link rel="amphtml" href="http://dgeniussolutions.com/amp/index.html" />
	<link rel="preconnect" href="https://www.dgeniussolutions.com" />
    <link rel="preconnect" href="https://www.facebook.com" />
    <link rel="preconnect" href="https://connect.facebook.net" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="shortcut icon" href="assets/images/favicon.png">
	<link rel="apple-touch-icon" href="assets/images/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114.png">
	<!-- fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
	<!-- styles -->
	<link href="assets/css/dgs-plugins.css" rel="stylesheet" type="text/css">
	<link href="assets/css/dgs-style.css" rel="stylesheet" type="text/css">
	<script>
	window.onload = () => {
  var date = new Date();
  var dt = 
    date.toLocaleString("default", { month: "long" }) +
    " " +
    date.getFullYear().toString();
  var docTitle = document.title + "  " + dt;
  document.querySelector("title").textContent = docTitle;
  //document.querySelector("#currentdate").textContent = dt
};
	</script>	
	
	<script>(function(w, d) { w.CollectId = "60923e127a73a543539f1ad6"; var h = d.head || d.getElementsByTagName("head")[0]; var s = d.createElement("script"); s.setAttribute("type", "text/javascript"); s.async=true; s.setAttribute("src", "https://collectcdn.com/launcher.js"); h.appendChild(s); })(window, document);</script>	
	<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-N3C3NGL');</script>
<!-- End Google Tag Manager -->
	</head>
	<body class="preloader cursor-anim-enable">
	
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N3C3NGL"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
	
		
		<!-- preloader-loading start -->
		<div class="preloader__logoload-box">
			<img class="preloader__logo" src="assets/images/logo/logo-white.png" alt="logo">
			<div class="preloader__pulse"></div>
		</div><!-- preloader-loading end -->

		<!-- pointer start -->
		<div class="pointer js-pointer" id="js-pointer">
			<i class="pointer__inner fas fa-long-arrow-alt-right"></i>
			<i class="pointer__inner fas fa-search"></i>
			<i class="pointer__inner fas fa-link"></i>
		</div><!-- pointer end -->

		<!-- to top btn start -->
		<a href="#up" class="scroll-to-btn js-headroom js-midnight-color js-smooth-scroll js-pointer-large">
			<span class="scroll-to-btn__box">
				<span class="scroll-to-btn__arrow"></span>
			</span>
		</a><!-- to top btn end -->

		<!-- scroll down btn start -->
		<a href="#down" class="scroll-to-btn to-down js-headroom js-midnight-color js-smooth-scroll js-pointer-large js-scroll-btn">
			<span class="scroll-to-btn__box">
				<span class="scroll-to-btn__arrow"></span>
			</span>
		</a><!-- scroll down btn end -->

		<?php include("includes/header.php"); ?>
                <main class="js-animsition-overlay" data-animsition-overlay="true">
               <!-- form section start -->
			<section class="pos-rel bg-img-cover" style="background-image:url(assets/images/backgrounds/architecture-buildings-city-fog-373965.jpg)">
				<!-- bg-overlay -->
				<div class="bg-overlay-black"></div>
				<!-- pos-rel start -->
				<div class="pos-rel flex-min-height-100vh">
					<!-- container start -->
					<div class="container small padding-top-bottom-120 form-box">
						<h4 class="headline-xxxxs text-center">Application Form</h4>
						<!-- flex-container start -->
						<form action="" method="post" name="" id="" class="flex-container padding-top-90">
							<!-- column start -->
							<div class="six-columns">
								<div class="column-r-margin-10">
									<input type="text" name="first_name" placeholder="Enter Your Name" id="first_name" required class="form-input js-pointer-small">
								</div>
							</div><!-- column end -->
							<!-- column start -->
							<div class="six-columns">
								<div class="column-l-r-margin-5">
									<input type="text" name="last_name" placeholder="Enter Your Last Name" id="last_name" required class="form-input js-pointer-small">
								</div>
							</div><!-- column end -->
							<!-- column start -->
							<div class="six-columns">
								<div class="column-l-margin-10">
									<input type="email" name="email" placeholder="Enter Your Email Address" id="email" required class="form-input js-pointer-small">
								</div>
							</div><!-- column end -->
                                                        <!-- column start -->
							<div class="six-columns">
								<div class="column-l-margin-10">
									<input type="tel" name="tel" placeholder="Enter Your Phone No" id="tel" required class="form-input js-pointer-small">
								</div>
							</div><!-- column end -->
                                                         <!-- column start -->
							<div class="six-columns">
								<div class="column-l-margin-10">
									<select id="positions" name="positions" class="positions">
                                                                           <option>Select Position</option>
                                                                           <option value="position1">positions1</option>
                                                                           <option value="position2">positions2</option>
                                                                           <option value="position3">positions3</option>
                                                                        </select>
 								</div>
							</div><!-- column end -->
                                                        <!-- column start -->
							<div class="six-columns">
								<div class="column-l-margin-10">
									<input type="file" name="file" id="file" required class="form-input js-pointer-small">
								</div>
							</div><!-- column end -->
                                                        
							<!-- column start -->
							<div class="twelve-columns text-center padding-top-90">
								<button id="send" class="border-btn js-pointer-large">
									<span class="border-btn__inner">submit</span>
									<span class="btn-wait">Wait</span>
									<span class="border-btn__lines-1"></span>
									<span class="border-btn__lines-2"></span>
								</button>
							</div><!-- column end -->
						</form><!-- flex-container end -->
					</div><!-- container end -->

					<!-- alert start -->
					<div class="js-popup-fade" id="m_sent">
						<div class="js-popup">
							<div class="popup-icon">
								<i class="fas fa-check"></i>
							</div>
							<p class="popup-alert headline-xs">
								Thank you!<br>
								Your submission<br>
								has been received!
							</p>
							<div class="js-popup-close js-pointer-large">
								<div class="flip-btn" data-text="Close">Close</div>
							</div>
						</div>
					</div><!-- alert end -->

					<!-- alert start -->
					<div class="js-popup-fade" id="m_err">
						<div class="js-popup">
							<div class="popup-icon">
								<i class="fas fa-times"></i>
							</div>
							<p class="popup-alert headline-xs">Error</p>
							<div class="js-popup-close js-pointer-large">
								<div class="flip-btn" data-text="Close">Close</div>
							</div>
						</div>
					</div><!-- alert end -->
				</div><!-- pos-rel end -->
			</section><!-- form section end -->
                      </main>
<?php include("includes/footer.php"); ?>
		
		<!-- scripts -->
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/footer-reveal.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/footer-reveal_init.js"></script>
	</body>
</html>