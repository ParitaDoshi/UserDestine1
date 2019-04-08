<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>User Destine</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/userResources/images/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/meanmenu.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/reset.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/userResources/css/color-switcher.css">
		
        <script src="${pageContext.request.contextPath}/userResources/js/modernizr-3.5.0.min.js"></script>
    </head>
    <body>
        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
	    
        <!-- Header Area Start -->
      <jsp:include page="header.jsp"></jsp:include>
        <!-- Header Area End -->
		<!-- Background Area Start -->
		  <div class="background-area image-1 js-ripples height-100vh">
            <div class="single-slide height-100vh pt-60">
                <div class="container text-center">
                    <div class="slider-banner">
                        <h3>USER DESTINE</h3>
                        <h4>Perfect Dish for You</h4>
                        <h5>Fall in love with our food</h5>
                       <!--  <h1>USER DESTINE</h1> -->
                        <div class="banner-btn">
                          	 <!--  <a href="#" class="default-btn"><span>Reservation</span></a>  -->
                        </div>
                    </div>
                </div>
		    </div>
		</div> 
		<!-- Background Area End -->
        <!-- About Area Start -->
        <div class="about-area ptb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-flex">
                        <div class="about-text">
                            <h2>About UserDestine</h2>
                            <p>In user destine application,if any person travels to metro city which is new for him,then that person find difficulty to get good restaurants in near by location.Our application will suggest the hotels like Honest,McDonals etc. with so many discount coupons by which they will get quality food at a discounted price in the unknown city. </p>
                            <p>This user destine application will get the user's location via GPS if he travels from his hometown to any other city. </p>
                            <!-- <a href="aboutpage" class="link">Read More.....</a> -->
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-banner-image-wrapper">
                            <div class="about-banner-image mb-30">
                                <img src="${pageContext.request.contextPath}/userResources/images/51.jpg" alt="">
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="about-banner-image">
                                        <img src="${pageContext.request.contextPath}/userResources/images/21.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="about-banner-image">
                                        <img src="${pageContext.request.contextPath}/userResources/images/31.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About Area End -->
        <!-- Menu Area Start -->
        <%-- <div class="menu-area bg-light-1 pt-120 pb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Food Menu</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
                <div class="row">
                    <div class="col-lg-2 col-md-3">
						<div class="menu-list">
							<button class="active" data-filter="*">ALL <i class="zmdi zmdi-caret-right"></i></button>
							<button data-filter=".breakfast">breakfast</button>
							<button data-filter=".lunch">Lunch</button>
							<button data-filter=".dinner">Dinner</button>
							<button data-filter=".snacks">snacks</button>
							<button data-filter=".party">party</button>
						</div>	
                    </div>
                    <div class="col-lg-10 col-md-9">
                        <div class="custom-row">
                            <div class="grid">
                                <div class="col-lg-6 grid-item breakfast dinner party">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/1d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item lunch dinner party">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/2d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item snacks breakfast">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/8.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item party dinner lunch">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/1d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item party dinner breakfast">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/4d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item snacks lunch">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/2d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item snacks breakfast">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/5d.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item party dinner">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/6.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item lunch party">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/7.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item snacks breakfast">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/8.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item dinner lunch party">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/7.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 grid-item snacks lunch breakfast">
                                    <div class="menu-item">
                                        <div class="menu-image">
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/9.jpg" alt=""></a>
                                        </div>
                                        <div class="menu-text">
                                            <h4><a href="menu.html">Duck confit crepes</a><span>$25</span></h4>
                                            <span>Lorem Ipsum is simply dummy industry.</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 pt-60 menu-link text-center">
                        <a href="menu" class="default-btn"><span>See Full Menu</span></a>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Menu Area End -->
        <!-- Special Menu Area Start -->
        <%-- <div class="special-menu-area ptb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Today's Special</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
                <div class="row">
                    <div class="col-lg-4 d-flex col-md-4">
                        <div class="special-wrapper">
                            <div class="special-item">
                                <div class="special-img">
                                    <a href="menu.html">
                                        <img src="${pageContext.request.contextPath}/userResources/images/11.jpg" alt="" class="main-img">
                                        <img src="${pageContext.request.contextPath}/userResources/images/15.jpg" alt="" class="hover-img">
                                    </a>
                                </div>
                                <div class="special-text">
                                    <h4><a href="menu.html">Chicken Licken</a></h4>
                                    <span>Mushroom / Chicken</span>
                                    <span class="menu-price">$50</span>
                                </div>
                            </div>
                            <div class="special-item">
                                <div class="special-img">
                                    <a href="menu.html">
                                        <img src="${pageContext.request.contextPath}/userResources/images/12.jpg" alt="" class="main-img">
                                        <img src="${pageContext.request.contextPath}/userResources/images/16.jpg" alt="" class="hover-img">
                                    </a>
                                </div>
                                <div class="special-text">
                                    <h4><a href="menu.html">Chicken Licken</a></h4>
                                    <span>Mushroom / Chicken</span>
                                    <span class="menu-price">$50</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 special-banner-img">
                        <div class="special-banner">
                            <img src="${pageContext.request.contextPath}/userResources/images/4.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 d-flex col-md-4">
                        <div class="special-wrapper">
                            <div class="special-item">
                                <div class="special-text">
                                    <h4><a href="menu.html">Chicken Licken</a></h4>
                                    <span>Mushroom / Chicken</span>
                                    <span class="menu-price">$50</span>
                                </div>
                                <div class="special-img">
                                    <a href="menu.html">
                                        <img src="${pageContext.request.contextPath}/userResources/images/13.jpg" alt="" class="main-img">
                                        <img src="${pageContext.request.contextPath}/userResources/images/7.jpg" alt="" class="hover-img">
                                    </a>
                                </div>
                            </div>
                            <div class="special-item">
                                <div class="special-text">
                                    <h4><a href="menu.html">Chicken Licken</a></h4>
                                    <span>Mushroom / Chicken</span>
                                    <span class="menu-price">$50</span>
                                </div>
                                <div class="special-img">
                                    <a href="menu.html">
                                        <img src="${pageContext.request.contextPath}/userResources/images/14.jpg" alt="" class="main-img">
                                        <img src="${pageContext.request.contextPath}/userResources/images/16.jpg" alt="" class="hover-img">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Special Menu Area End -->
        <!-- Reservation Area Start -->
        <%-- <div class="reservation-area bg-1 ptb-120 dark-overlay-78">
            <div class="container">
                <div class="section-title text-center text-white">
                    <h2>Reservation Form</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
                <div class="reservation-container">
                    <div class="reservation-img">
                        <img src="${pageContext.request.contextPath}/userResources/images/5.jpg" alt="">
                    </div><br/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
                    
                    <div class="reservation-content">
                        <h3>Reservation Form</h3>
                        <form action="#" method="post" class="reservation-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-box">
                                        <input type="text" placeholder="First Name" name="f_name">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-box required">
                                        <input type="text" placeholder="Last Name" name="l_name">
                                    </div>
                                </div>
                            </div>
                            <div class="form-box required">
                                <input type="text" placeholder="Email Address" name="r_email">
                            </div>
                            <div class="form-box required">
                                <input type="text" placeholder="Mobile Number" name="r_mobile">
                            </div>
                            <div class="form-box">
                                <input type="text" class="datepicker" placeholder="Select Date And Time" name="r_date">
                            </div>
                            <div class="form-box select_event">
                                <select name="r_event" id="r_event">
                                    <option value="select">Select Event</option>
                                    <option value="party">party</option>
                                    <option value="birthday">birthday</option>
                                    <option value="wedding">wedding</option>
                                    <option value="annivarsary">annivarsary</option>
                                </select>
                            </div>
                            <div class="reservation-btn text-center">
                                <button type="button" class="default-btn"><span>Submit</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Reservation Area End -->
        <!-- Blog Area Start -->
        
        
        <div class="blog-area ptb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Blog</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-blog">
                            <h4><a href="blog-details-left-sidebar.html">Lorem ipsum dolor sit amet lorem ipsu.</a></h4>
                            <div class="blog-image">
                                <a href="blog-details-left-sidebar.html">
                                    <img src="${pageContext.request.contextPath}/userResources/images/1.jpg" alt="">
                                    <span class="blog-date">13<span>MAR</span></span>
                                </a>
                            </div>
                            <div class="blog-post-meta">
                                <span><i class="zmdi zmdi-account"></i>By Reema</span>
                                <div class="blog-meta-info">
                                    <span><i class="zmdi zmdi-favorite-outline"></i>( 500 )</span>
                                    <span><i class="zmdi zmdi-comments"></i>( 100 )</span>
                                </div>
                            </div>
                            <div class="blog-text">
                                <p>Lorem ipsum dolor sit amet, consectetur is adip  loremis isicingelit, sed do eiusmod tempor incidi aliqua.</p>
                               <!--  <a href="blog-details-left-sidebar.html">Read more....</a> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-blog">
                            <h4><a href="blog-details-left-sidebar.html">Lorem ipsum dolor sit amet lorem ipsu.</a></h4>
                            <div class="blog-image">
                                <a href="blog-details-left-sidebar.html">
                                    <img src="${pageContext.request.contextPath}/userResources/images/2m.jpg" alt="">
                                    <span class="blog-date">23<span>APR</span></span>
                                </a>
                            </div>
                            <div class="blog-post-meta">
                                <span><i class="zmdi zmdi-account"></i>By Sathie</span>
                                <div class="blog-meta-info">
                                    <span><i class="zmdi zmdi-favorite-outline"></i>( 200 )</span>
                                    <span><i class="zmdi zmdi-comments"></i>( 50 )</span>
                                </div>
                            </div>
                            <div class="blog-text">
                                <p>Lorem ipsum dolor sit amet, consectetur is adip  loremis isicingelit, sed do eiusmod tempor incidi aliqua.</p>
                               <!--  <a href="blog-details-left-sidebar.html">Read more....</a> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-blog">
                            <h4><a href="blog-details-left-sidebar.html">Lorem ipsum dolor sit amet lorem ipsu.</a></h4>
                            <div class="blog-image">
                                <a href="blog-details-left-sidebar.html">
                                    <img src="${pageContext.request.contextPath}/userResources/images/31.jpg" alt="">
                                    <span class="blog-date">30<span>JUN</span></span>
                                </a>
                            </div>
                            <div class="blog-post-meta">
                                <span><i class="zmdi zmdi-account"></i>By Jhon</span>
                                <div class="blog-meta-info">
                                    <span><i class="zmdi zmdi-favorite-outline"></i>( 300 )</span>
                                    <span><i class="zmdi zmdi-comments"></i>( 99 )</span>
                                </div>
                            </div>
                            <div class="blog-text">
                                <p>Lorem ipsum dolor sit amet, consectetur is adip  loremis isicingelit, sed do eiusmod tempor incidi aliqua.</p>
                               <!--  <a href="blog-details-left-sidebar.html">Read more....</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Area End -->
        <!-- Footer Area Start -->
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- <footer class="footer-area">
            <div class="footer-top footer-text-white bg-2 ptb-120 dark-overlay-78">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-footer-widget">
                                <h4>Opening Hour</h4>
                                <div class="footer-widget-text">
                                    <span>Monday - Friday : <span><span class="dot">. . . . .</span> 8.00am - 9.00pm</span></span>
                                    <span>Saturday : <span><span class="dot">. . . . . . . . . . .</span> 2.00pm - 9.00pm</span></span>
                                    <span>Sunday : <span><span class="dot">. . . . . . . . . . . .</span></span><span class="text-color"> Close</span></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-footer-widget">
                                <h4>Contact Us</h4>
                                <div class="footer-widget-text address">
                                    <span><span>Location :</span> 124/201 West Street, South<br>Shajahanpur, 1000 New Zealand.</span>
                                    <span><span>Phone :</span> +8804 222 789</span>
                                    <span><span>Email :</span> info@admin.com</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-footer-widget">
                                <h4>Stay Updated</h4>
                                <form action="https://superbcoder.us17.list-manage.com/subscribe/post?u=53d660b97ee6d0d0edf33c405&amp;id=7a20bda443" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll" class="mc-form">
                                        <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Put Your Email" required>
                                        real people should not fill this in and expect good things - do not remove this or risk form bot signups
                                        <div class="mc-news" aria-hidden="true">
                                            <input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value="">
                                        </div>
                                        <button id="mc-embedded-subscribe" type="submit" name="subscribe" class="default-btn"><span>Subscribe</span></button>
                                    </div>
                                </form>
                                <div class="social-icons">
                                    <a href="#"><span class="zmdi zmdi-facebook"></span></a>
                                    <a href="#"><span class="zmdi zmdi-twitter"></span></a>
                                    <a href="#"><span class="zmdi zmdi-pinterest"></span></a>
                                    <a href="#"><span class="zmdi zmdi-dribbble"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom bg-color text-center">
                <div class="container">
                    <span class="footer-text">&copy; <a href="http://superbcoder.com/" target="_blank">SuperbTemplate</a> 2018. All Rights Reserved.</span>
                </div>
            </div>
        </footer> -->
        <!-- Footer Area End -->
	    
		<!-- all js here -->
        <script src="${pageContext.request.contextPath}/userResources/js/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/popper_1.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.auderoSmokeEffect.min_1.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.meanmenu.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/color-switcher.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.magnific-popup.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/ajax-mail.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/plugins_1.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/main_1.js"></script>
    </body>
</html>