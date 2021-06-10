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
    <title>D'Genious Solutions - </title>
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
	<body class="preloader cursor-anim-enable dark-nav">
	
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N3C3NGL"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
	
		<!-- preloader-loading start -->
		<div class="preloader__logoload-box">
			<img class="preloader__logo vertical" src="assets/images/logo/logo-white-vertical.png" alt="logo">
			<div class="preloader__pulse"></div>
		</div><!-- preloader-loading end -->

		<!-- pointer start -->
		<div class="pointer js-pointer" id="js-pointer">
			<i class="pointer__inner fas fa-long-arrow-alt-right"></i>
			<i class="pointer__inner fas fa-search"></i>
			<i class="pointer__inner fas fa-link"></i>
		</div><!-- pointer end -->
		
		<?php include("includes/header.php"); ?>
		
		<!-- main start -->
		<main class="js-animsition-overlay" data-animsition-overlay="true">
			<!-- page head start -->
			<section class="pos-rel section-bg-dark-2">
				<!-- pos-rel start -->
				<div class="pos-rel flex-min-height-100vh after-preloader-anim">
					<div class="padding-top-bottom-120 container text-center">
						<!-- title start -->
						<h2 class="headline-xxxxl">
							<span class="anim-text-fill text-color-red" data-text="404!">404!</span>
						</h2><!-- title end -->
						<p class="subhead-m anim-fade tr-delay-02">Page not found</p>
					</div>
					<div class="pos-abs pos-bottom-center width-100perc text-center">
						<div class="anim-fade tr-delay-04">
							<a href="index.html" class="border-btn js-pointer-large js-animsition-link">
								<span class="border-btn__inner">Back to home</span>
								<span class="border-btn__lines-1"></span>
								<span class="border-btn__lines-2"></span>
							</a>
						</div>
					</div>
				</div><!-- pos-rel end -->
			</section><!-- page head end -->
		</main><!-- main end -->

		<!-- scripts -->
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/main.js"></script>
	</body>
</html>