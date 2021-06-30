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
    <title>Portfolio- Digital Marketing Services | D'genius Solutions</title>
    <meta name="description" content="Are you looking for a Digital Marketing Services? View our Portfolio! " />
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

		<!-- main start -->
		<main class="js-animsition-overlay" data-animsition-overlay="true">

			<!-- portfolio start -->
			<section class="pos-rel section-bg-light-2" data-midnight="black">
				<!-- pos-rel start -->
				<div class="pos-rel padding-top-bottom-120">
					<!-- title start -->
					<h2 class="headline-xxxl text-color-black text-center hidden-box js-scrollanim">
						<span class="anim-slide">
							A Glimpse of our <span class="">Works</span>
						</span>
					</h2><!-- title end -->

					<!-- filter-buttons start -->
					<div class="list list_row list_center list_margin-30px padding-top-90 js-filter-button-box js-scrollanim">
						<button class="list__item js-filter-button anim-fade js-pointer-small js-filter-button-active" data-filter="*">
							<h2 class="portfolio-selected-indicator" id="portfolio-everything" onclick='selectPortfolioCategory("portfolio-everything")'><span class="flip-btn text-color-black" data-text="EVERYTHING">EVERYTHING</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-01 js-pointer-small" data-filter=".branding">
							<h2 id="portfolio-branding" onclick='selectPortfolioCategory("portfolio-branding")'><span class="flip-btn text-color-black" data-text="BRANDING">BRANDING</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-02 js-pointer-small" data-filter=".social">
							<h2 id="portfolio-social-media-marketing" onclick='selectPortfolioCategory("portfolio-social-media-marketing")'><span class="flip-btn text-color-black" data-text="SOCIAL MEDIA MARKETING">SOCIAL MEDIA MARKETING</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-03 js-pointer-small" data-filter=".video">
							<h2 id="portfolio-music-video" onclick='selectPortfolioCategory("portfolio-music-video")'><span class="flip-btn text-color-black" data-text="MUSIC VIDEO">Music Video</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-03 js-pointer-small" data-filter=".tvc">
							<h2 id="portfolio-tvc" onclick='selectPortfolioCategory("portfolio-tvc")'><span class="flip-btn text-color-black" data-text="TVC">TVC</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-03 js-pointer-small" data-filter=".email">
							<h2 id="portfolio-email-marketing" onclick='selectPortfolioCategory("portfolio-email-marketing")'><span class="flip-btn text-color-black" data-text="EMAIL MARKETING">Email Marketing</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-03 js-pointer-small" data-filter=".linkedin">
							<h2 id="portfolio-linkedin-marketing" onclick='selectPortfolioCategory("portfolio-linkedin-marketing")'><span class="flip-btn text-color-black" data-text="LINKEDIN B2B">Linkedin B2B</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-03 js-pointer-small" data-filter=".website">
							<h2 id="portfolio-website" onclick='selectPortfolioCategory("portfolio-website")'><span class="flip-btn text-color-black" data-text="WEBSITE">Website</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-04 js-pointer-small" data-filter=".video">
							<h2><span class="flip-btn text-color-black" data-text="VIDEO PRODUCTION">Music Video</span></h2>
						</button>
						<button class="list__item js-filter-button anim-fade tr-delay-05 js-pointer-small" data-filter=".tvc">
							<h2><span class="flip-btn text-color-black" data-text="TVC">TVC</span></h2>

					</div><!-- filter-buttons end -->
					<!-- js-isotope-filter-grid-box start -->
					<div class="js-isotope-filter-grid-box container full">
						<!-- empty grid -->
						<div class="js-isotope-filter-grid-item empty-grid-1px-33-50-none"></div>
						<div class="js-isotope-filter-grid-item empty-grid-200px-33-none"></div>
						<div class="js-isotope-filter-grid-item empty-grid-100px-33-50-none"></div>




						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item branding">
							<div class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/EQM7u8yXVMM?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-01" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-01">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Branding</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">SSPL</span>
									</h3>
								</div>
								</div>
						</div>


						<!-- Branding -->
						<!-- grid-item start -->

						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item branding">
							<div class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">

								<img id="myImg" onclick='showImageModal("myModal-02", "img-02", "assets/images/projects/branding/SSPL.jpg")' src="assets/images/projects/branding/SSPL.jpg" alt="Structural Specialities & Projects">

								</div>
								<div id="myModal-02" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-02">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Branding</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">SSPL</span>
									</h3>
								</div>
								</div>
						</div>




						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item branding">
							<a href="https://youtu.be/tlBYHH4wCJs" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/tlBYHH4wCJs?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-03" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-03">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Branding</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">MKA&CO</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item branding">
							<a href="https://youtu.be/Lgy0l7qsMtg" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/Lgy0l7qsMtg?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-04" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-04">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Branding</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">DGS</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item branding">
							<a href="https://youtu.be/0NagHNal_Rc" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/0NagHNal_Rc?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-05" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-05">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Branding</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">YIMT</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- Branding End -->

						<!-- Social Media Marketing -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item social">
							<a href="https://youtu.be/VoaDOBN37lI" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/VoaDOBN37lI?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-06" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="im-06">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">SOCIAL MEDIA MARKETING</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Aertrip</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item social">
							<a href="https://youtu.be/LwM_8Z-jQHs" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/LwM_8Z-jQHs?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-07" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-07">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">SOCIAL MEDIA MARKETING</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Aertrip</span>
									</h3>
								</div>
							</a>
						</div>




						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item social">
							<a href="https://youtu.be/B2vJ3lnT69s" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/B2vJ3lnT69s?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-08" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-08">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">SOCIAL MEDIA MARKETING</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Aertrip</span>
									</h3>
								</div>
							</a>
						</div>

						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item social">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-09", "img-09", "assets/images/projects/social-media-marketing/Camoupage1.png")' src="assets/images/projects/social-media-marketing/Camoupage1.png" alt="Compuage">
								</div>
								<div id="myModal-09" class="modal">
								<span class="close" onclick='closeImageModal("myModal-09")'>&times;</span>
									<img class="modal-content" id="img-09">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">SOCIAL MEDIA MARKETING</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->




						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item social">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-10", "img-10", "assets/images/projects/social-media-marketing/Fundenable3.jpg")' src="assets/images/projects/social-media-marketing/Fundenable3.jpg" alt="Fundenable">
								</div>
								<div id="myModal-10" class="modal">
								<span class="close" onclick='closeImageModal("myModal-10")'>&times;</span>

									<img class="modal-content" id="img-10">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">SOCIAL MEDIA MARKETING</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Fundenable</span>
									</h3>
								</div>
							</a>
						</div>

						<!-- grid-item end -->
						<!-- Social Media Marketing End -->

						<!-- Music Video -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item video">
							<a href="https://www.youtube.com/watch?v=vUejS-Loe4w" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="560" height="315" src="https://www.youtube.com/embed/vUejS-Loe4w?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>								</div>
								<div id="myModal-11" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-11">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Music Video</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Kailasa Music Video</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- Music Video End -->

						<!-- TVC -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item tvc">
							<a href="https://www.youtube.com/watch?v=8Ca5PIxaohY" target="_blank" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<iframe width="315" height="315" src="https://www.youtube.com/embed/8Ca5PIxaohY?controls=0&autoplay=0&rel=0" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</div>
								<div id="myModal-12" class="modal">
								<span class="close">&times;</span>

									<img class="modal-content" id="img-12">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">TVC</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Welspun</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- TVC End -->

						<!-- Email Marketing -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-13", "img-13", "assets/images/projects/email-marketing/Compuage1.jpg")' src="assets/images/projects/email-marketing/Compuage1.jpg" alt="Compuage">
								</div>
								<div id="myModal-13" class="modal">
								<span class="close" onclick='closeImageModal("myModal-13")'>&times;</span>

									<img class="modal-content" id="img-13">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-14", "img-14", "assets/images/projects/email-marketing/Compuage2.jpg")' src="assets/images/projects/email-marketing/Compuage2.jpg" alt="Compuage">
								</div>
								<div id="myModal-14" class="modal">
								<span class="close" onclick='closeImageModal("myModal-14")'>&times;</span>

									<img class="modal-content" id="img-14">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-15", "img-15", "assets/images/projects/email-marketing/Compuage3.png")' src="assets/images/projects/email-marketing/Compuage3.png" alt="Compuage">
								</div>
								<div id="myModal-15" class="modal">
								<span class="close" onclick='closeImageModal("myModal-15")'>&times;</span>

									<img class="modal-content" id="img-15">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-16", "img-16", "assets/images/projects/email-marketing/Compuage4.jpg")' src="assets/images/projects/email-marketing/Compuage4.jpg" alt="Compuage">
								</div>
								<div id="myModal-16" class="modal">
								<span class="close" onclick='closeImageModal("myModal-16")'>&times;</span>

									<img class="modal-content" id="img-16">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- Email Marketing End -->

						<!-- LinkedIn B2B -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item linkedin">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-17", "img-17", "assets/images/projects/linkedin-b2b/Aertrip1.jpg")' src="assets/images/projects/linkedin-b2b/Aertrip1.jpg" alt="Aertrip">
								</div>
								<div id="myModal-17" class="modal">
								<span class="close" onclick='closeImageModal("myModal-17")'>&times;</span>

									<img class="modal-content" id="img-17">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">LinkedIn B2B</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Aertrip</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item linkedin">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-18", "img-18", "assets/images/projects/linkedin-b2b/Aertrip2.jpg")' src="assets/images/projects/linkedin-b2b/Aertrip2.jpg" alt="Aertrip ">
								</div>
								<div id="myModal-18" class="modal">
								<span class="close" onclick='closeImageModal("myModal-18")'>&times;</span>

									<img class="modal-content" id="img-18">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">LinkedIn B2B</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Aertrip</span>
									</h3>
								</div>
							</a>
						</div>
						<!-- grid-item end -->
						<!-- LinkedIn B2B End -->

						<!-- Website -->
						<!-- grid-item start -->
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item website">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-19", "img-19", "assets/images/projects/website/website.jpg")' src="assets/images/projects/website/website.jpg" alt="Structural Specialities & Projects">
								</div>
								<div id="myModal-19" class="modal">
								<span class="close" onclick='closeImageModal("myModal-19")'>&times;</span>

									<img class="modal-content" id="img-19">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Website</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Structural Specialities & Projects</span>
									</h3>
								</div>
							</a>
						</div>



						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale portfolio-content-center-align-mobile">
								<img id="myImg" onclick='showImageModal("myModal-20", "img-20", "assets/images/projects/email-marketing/c6.jpg")' src="assets/images/projects/email-marketing/c6.jpg" alt="Compuage">
								</div>
								<div id="myModal-20" class="modal">
								<span class="close" onclick='closeImageModal("myModal-20")'>&times;</span>

									<img class="modal-content" id="img-20">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>
						<div class="padding-top-60 grid-item-33-50-100 js-isotope-filter-grid-item email">
							<a href="javascript:void(0)" class="grid-margin-box hover-box  js-pointer-large portfolio-content-center-align-mobile">
								<div class="anim-img-scale anim-img-scale_hover js-img-scale">
								<img id="myImg" onclick='showImageModal("myModal-21", "img-21", "assets/images/projects/email-marketing/c5.jpg")' src="assets/images/projects/email-marketing/c5.jpg" alt="Compuage">
								</div>
								<div id="myModal-21" class="modal">
								<span class="close" onclick='closeImageModal("myModal-21")'>&times;</span>

									<img class="modal-content" id="img-21">
								</div>
								<div class="margin-top-10 js-scrollanim portfolio-content-center-align-mobile">
									<span class="hidden-box d-block">
										<span class="subhead-xxs anim-slide">Email Marketing</span>
									</span>
									<h3 class="hidden-box">
										<span class="headline-xxxs text-color-black anim-slide tr-delay-02">Compuage</span>
									</h3>
								</div>
							</a>
						</div>

						<!-- grid-item end -->
						<!-- Website End -->

	

						</div><!-- js-isotope-filter-grid-box end -->
				</div><!-- pos-rel end -->
			</section><!-- portfolio end -->

			
		</main><!-- main end -->

	<?php include("includes/footer.php"); ?>
		

		<!-- scripts -->
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/footer-reveal.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="assets/js/footer-reveal_init.js"></script>
	</body>
</html>