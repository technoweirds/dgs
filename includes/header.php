<script>
	window.onload = () => {
  var date = new Date();
  var dt = 
    date.toLocaleString("default", { month: "long" }) +
    " " +
    date.getFullYear().toString();
  var docTitle = document.title + "  " + dt;
  document.querySelector("title").textContent = docTitle;
};
	</script>
<!-- header start -->
		<header class="fixed-header">
			<!-- logo start -->
			<div class="header-logo js-midnight-color js-headroom">
				<div class="hidden-box">
					<a href="index.php" class="header-logo__box js-pointer-large js-animsition-link">
						<img class="header-logo__img white" src="assets/images/logo/logo-white.png" alt="logo">
						<img class="header-logo__img black" src="assets/images/logo/logo-black.png" alt="logo">
					</a>
				</div>
			</div><!-- logo end -->

			<!-- menu-icon start -->
			<div class="menu-icon js-menu-open-close js-pointer-large js-midnight-color js-headroom">
				<div class="menu-icon__box">
					<span class="menu-icon__inner"></span>
					<span class="menu-icon__close"></span>
				</div>
			</div><!-- menu-icon end -->

			<!-- header-contact start -->
			<div class="header-contact js-midnight-color js-headroom">
				<div class="header-contact__flex">
					<div class="header-contact__anim">
						<a href="https://wa.me/9167350238?text=Thank%20You%20!!!%20Our%20support%20team%20will%20get%20in%20touch%20with%20you%20shortly.%0AWe%20are%20glad%20to%20receive%20a%20Query%20from%20you.%0A%0ACall%20us%20%3A%20%2B91%209167350238" target="_blank" class="header-contact__btn vertical-text center js-pointer-large">
						<span class="vertical-text__inner"><i class="far fa-comment-dots"></i> Get in touch</span>
						</a>
					</div>
				</div>
			</div><!-- header-contact end -->

			<!-- header-social start -->
			<div class="header-social after-preloader-anim js-midnight-color js-headroom">
				<ul class="list list_center list_margin-20px hidden-box">
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide js-pointer-small">
								<i class="fab fa-facebook-f"></i>
							</a>
						</div>
					</li>
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-04 js-pointer-small">
								<i class="fab fa-instagram"></i>
							</a>
						</div>
					</li>
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-04 js-pointer-small">
								<i class="fab fa-linkedin-in"></i>
							</a>
						</div>
					</li>
					<!--<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-02 js-pointer-small">
								<i class="fab fa-twitter"></i>
							</a>
						</div>
					</li>					
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-06 js-pointer-small">
								<i class="fab fa-behance"></i>
							</a>
						</div>
					</li>
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-08 js-pointer-small">
								<i class="fab fa-dribbble"></i>
							</a>
						</div>
					</li>
					<li class="list__item">
						<div class="hidden-box d-inline-block">
							<a href="#" class="anim-slide tr-delay-10 js-pointer-small">
								<i class="fab fa-youtube"></i>
							</a>
						</div>
					</li>-->
				</ul>
			</div><!-- header-social end -->
		</header><!-- header end -->
		
<!-- navigation start -->
		<nav class="nav-container pos-rel js-dropdown-active-box">
			<!-- pos-rel start -->
			<div class="pos-rel height-100perc">
				<!-- dropdown close btn start -->
				<div class="dropdown-close">
					<div class="dropdown-close__inner js-dropdown-close js-pointer-large">
						<span class="dropdown-close__arrow"></span>
					</div>
				</div><!-- dropdown close btn end -->

				<!-- js-nav-slider-bg start -->
				<div class="js-nav-slider-bg">
					<!-- swiper-wrapper start -->
					<div class="swiper-wrapper">
						<!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/speakers/revolt-BMest61rcqs-unsplash.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
                                                <!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/sneakers/revolt-164_6wVEHfI-unsplash.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
						<!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/sneakers/revolt-164_6wVEHfI-unsplash.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
						<!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/black-bike/josh-nuttall-pIwu5XNvXpk-unsplash.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
						<!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/pexels/woman-in-black-sexy-top-2825034.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
						<!-- swiper-slide start -->
						<div class="swiper-slide">
							<div class="nav-slide-bg" style="background-image:url(assets/images/projects/furniture/goashape-RvyJGaoaWrs-unsplash.jpg)"></div>
							<div class="bg-overlay-black"></div>
						</div><!-- swiper-slide end -->
					</div><!-- swiper-wrapper end -->
				</div><!-- js-nav-slider-bg end -->

				<!-- menu-box start -->
				<ul class="menu-box">
					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="index.php" class="nav-btn large dropdown-hidden-btn js-pointer-large">
							<span class="nav-btn__inner" data-text="Home">Home</span>
						</a>

					</li><!-- nav-btn-box end -->

					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="who-we-are.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="Who we are">Who we are</span>
						</a>						
					</li><!-- nav-btn-box end -->

					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="what-we-do.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="What We Do">What We Do</span>
						</a>
					</li><!-- nav-btn-box end -->

					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-slider-open">
						<a class="nav-btn large dropdown-hidden-btn js-pointer-large">
							<span class="nav-btn__inner" data-text="Services">Services</span>
						</a>

						<!-- dropdown start -->
						<div class="dropdown js-dropdown">
							<!-- js-nav-slider start -->
							<div class="js-nav-slider">
								<!-- swiper-wrapper start -->
								<ul class="swiper-wrapper">
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="social_media_marketing.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="Social Media Marketing">Social Media Marketing</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
                                                                       <!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="content_marketing_strategy.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="Content Marketing Strategy">Content Marketing Strategy</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="video_production.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="Video Production">Video Production</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="brand_marketing.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="Brand Marketing">Brand Marketing</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="website_design_development.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="Website Design & Development">Website Design & Development</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="seo.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="SEO">SEO</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
									<!-- swiper-slide start -->
									<li class="nav-btn-box swiper-slide">
										<div class="hidden-box">
											<a href="sem.php" class="nav-btn small js-animsition-link js-pointer-large">
												<span class="nav-btn__inner" data-text="SeM">SeM</span>
											</a>
										</div>
									</li><!-- swiper-slide end -->
								</ul><!-- swiper-wrapper end -->

								<!-- swiper-button-prev start -->
								<div class="swiper-button-prev-box">
									<div class="dropdown-slider-controls">
										<div class="swiper-button-prev"></div>
									</div>
								</div><!-- swiper-button-prev end -->
								<!-- swiper-button-next start -->
								<div class="swiper-button-next-box">
									<div class="dropdown-slider-controls">
										<div class="swiper-button-next"></div>
									</div>
								</div><!-- swiper-button-next end -->

								<!-- swiper-pagination start -->
								<div class="pagination-box">
									<div class="dropdown-slider-controls">
										<div class="swiper-pagination counter-pagination"></div>
									</div>
								</div><!-- swiper-pagination end -->
							</div><!-- js-nav-slider end -->
						</div><!-- dropdown end -->
					</li><!-- nav-btn-box end -->

					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="portfolio_freemode.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="Portfolio">Portfolio</span>
						</a>
					</li><!-- nav-btn-box end -->
					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="blog_filter.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="Blog">Blog</span>
						</a>
					</li><!-- nav-btn-box end -->

					<!-- nav-btn-box start -->
					<li class="nav-btn-box">
						<a href="contact.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="Contact Us">Contact Us</span>
						</a>
					</li><!-- nav-btn-box end -->
					<!-- nav-btn-box start -->
					<li class="nav-btn-box js-dropdown-open">
						<a href="career.php" class="nav-btn large dropdown-hidden-btn js-animsition-link js-pointer-large">
							<span class="nav-btn__inner" data-text="Career">Career</span>
						</a>
					</li><!-- nav-btn-box end -->
				</ul><!-- menu-box end -->

				<!-- nav-information start -->
				<div class="nav-information">
					<!-- nav-email start -->
					<div>
						<div class="hidden-box d-inline-block">
							<div class="headline-xxxxs nav-title-color nav-reveal-anim js-nav-anim">Email</div>
						</div>
						<div class="nav-fade-anim js-nav-anim margin-top-10">
							<a href="#" class="subhead-xxs nav-text-color text-hover-to-red js-pointer-small">business@dgeniussolutions.com</a><br>
							</div>
					</div><!-- nav-email end -->

					<!-- nav-address start -->
					<div>
						<div class="hidden-box d-inline-block">
							<div class="headline-xxxxs nav-title-color nav-reveal-anim js-nav-anim">Address</div>
						</div>
						<div class="nav-fade-anim js-nav-anim margin-top-10">
							<a href="#" class="subhead-xxs nav-text-color text-hover-to-red js-pointer-small">
								PO Box 223158 Oliver Street<br>
								East Victoria 2006 UK
							</a>
						</div>
					</div><!-- nav-address end -->

					<!-- nav-phone start -->
					<div>
						<div class="hidden-box d-inline-block">
							<div class="headline-xxxxs nav-title-color nav-reveal-anim js-nav-anim">Phone</div>
						</div>
						<div class="nav-fade-anim js-nav-anim margin-top-10">
							<a href="tel:+91 9167350238" class="subhead-xxs nav-text-color text-hover-to-red js-pointer-small">+91 9167350238</a><br>
							</div>
					</div><!-- nav-phone end -->
				</div><!-- nav-information end -->

				<!-- nav-copyright start -->
				<div class="nav-copyright text-right">
					<p class="copyright-style nav-fade-anim js-nav-anim">
						&copy; Copyright 2020 D'Genious Solutions.
					</p>
				</div><!-- nav-copyright end -->
			</div><!-- pos-rel end -->
		</nav><!-- navigation end -->		