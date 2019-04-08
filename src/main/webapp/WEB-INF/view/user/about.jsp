<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Makaw - Premium Restaurant Template</title>
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
        <!-- Banner Title Area Start -->
        <div class="banner-title-area bg-4 text-center ptb-100 dark-overlay-7">
            <div class="container">
                <h1>About Us</h1>
            </div>
        </div>
        <!-- Banner Title Area End -->
        <!-- About Service Area Start -->
        <div class="about-service-area ptb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="service-image-slider">
                            <div class="p-image"><img src="${pageContext.request.contextPath}/userResources/images/service/1.jpg" alt=""></div>
                            <div class="p-image"><img src="${pageContext.request.contextPath}/userResources/images/service/2.jpg" alt=""></div>
                            <div class="p-image"><img src="${pageContext.request.contextPath}/userResources/images/service/3.jpg" alt=""></div>
                            <div class="p-image"><img src="${pageContext.request.contextPath}/userResources/images/service/4.jpg" alt=""></div>
                        </div>
                        <div class="service-thumbnail-slider row">
                            <div class="col"><img src="${pageContext.request.contextPath}/userResources/images/service/s-1.jpg" alt=""></div>
                            <div class="col"><img src="${pageContext.request.contextPath}/userResources/images/service/s-2.jpg" alt=""></div>
                            <div class="col"><img src="${pageContext.request.contextPath}/userResources/images/service/s-3.jpg" alt=""></div>
                            <div class="col"><img src="${pageContext.request.contextPath}/userResources/images/service/s-4.jpg" alt=""></div>
                        </div>
                    </div>
                    <div class="col-lg-6 d-flex">
                        <div class="about-service-text align-self-center">
                            <div class="section-title">
                                <h2>Our Story</h2>
                            </div>
                            <p>In user destine application,if any person travels to metro city which is new for him,then that person find difficulty to get good restaurants in near by location.Our application will suggest the hotels like Honest,McDonals etc. with so many discount coupons by which they will get quality food at a discounted price in the unknown city.</p>
                            <div class="about-text-list">
                                <span>Lorem Ipsum is simply dummy text printing and typesetting industry.</span>
                                <span>Ipsum is simply dummy text printing and typesetting industry. Lorem.</span>
                                <span>Simply dummy text printing and typesetting industry. Lorem.</span>
                                <span>Dummy text printing and typesetting industry. Lorem.</span>
                               <!--  <a href="#" class="default-btn"><span>Read Full Story</span></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About Service Area End --> 
        <!-- Service Area Start -->
        <div class="service-area bg-light-1 ptb-120 fix">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Services Style</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
            </div>
            <div class="service-container">
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/userResources/images/service/5.jpg" alt="">
                    <div class="service-image-hover">
                        <h4>Fast Food</h4>
                        <p>Lorem Ipsum simply dummy text of the printing typese tting industry Lorem Ipsum.</p>
                    </div>
                </div>
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/userResources/images/service/6.jpg" alt="">
                    <div class="service-image-hover">
                        <h4>Fast Casual</h4>
                        <p>Lorem Ipsum simply dummy text the printing typese tting industry Lorem Ipsum has.</p>
                    </div>
                </div>
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/userResources/images/service/7.jpg" alt="">
                    <div class="service-image-hover">
                        <h4>Casual Dining</h4>
                        <p>Ipsum simply dummy text printing typesetting toindustry Lorem Ipsum has been the industry</p>
                    </div>
                </div>
                <div class="service-item">
                    <img src="${pageContext.request.contextPath}/userResources/images/service/8.jpg" alt="">
                    <div class="service-image-hover">
                        <h4>Fine Dining</h4>
                        <p>Lorem Ipsum simply the printing typesetting industry Lorem Ipsum has been the industry.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Area End -->
        <!-- Upcoming Event Area Start -->
        <%-- <div class="upcoming-event-area pt-120 pb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Upcoming Events</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xm-8 col-lg-10">
                        <div class="menu-list event-list">
                            <button class="active" data-filter="*">ALL</button>
                            <button data-filter=".marriage">Marriage</button>
                            <button data-filter=".birthday">Birthday</button>
                            <button data-filter=".annivarsery">Anniversery</button>
                            <button data-filter=".events">Events</button>        
                        </div>	
                    </div> 
                </div>
                <div class="grid">
                    <div class="single-upcoming-event grid-item marriage annivarsery events">
                        <div class="row">
                            <div class="col-xl-5 col-lg-6">
                                <div class="upcoming-event-img">
                                    <img src="${pageContext.request.contextPath}/userResources/images/event/1.jpg" alt="">
                                    <span class="up-event-date">13<span>March</span></span>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-6">
                                <div class="up-event-text">
                                    <h4>Marriage</h4>
                                    <span>5.00 pm - 11.00 pm</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard y's standard dummy text ever since printing and typesetting industry. Lorem Ipsum has been the industry has been the industry.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-upcoming-event grid-item birthday events">
                        <div class="row">
                            <div class="col-xl-5 col-lg-6">
                                <div class="upcoming-event-img">
                                    <img src="${pageContext.request.contextPath}/userResources/images/event/2.jpg" alt="">
                                    <span class="up-event-date">16<span>March</span></span>
                                </div>
                            </div>
                            <div class="col-xl-7 col-lg-6">
                                <div class="up-event-text">
                                    <h4>Birthday</h4>
                                    <span>8.00 pm - 10.00 pm</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. simply dummy text of the printing and typesetting industry. ndustry's standard dummy .</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Upcoming Event Area End -->
        <!-- Team Area Start -->
        <%-- <div class="team-area pb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Chefs</h2>
                    <p>There are many variations of passages of Lorem Ipsum available.</p>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-team">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/1.jpg" alt="" class="p-img">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/hover.jpg" alt="" class="s-img">
                            <div class="team-hover">
                                <h4>Reema Bhuiyan</h4>
                                <span>Chief Chef</span>
                                <div class="team-link">
                                    <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                                    <a href="#"><i class="zmdi zmdi-pinterest"></i></a>
                                    <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                                    <a href="#"><i class="zmdi zmdi-google-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-team">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/2.jpg" alt="" class="p-img">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/hover.jpg" alt="" class="s-img">
                            <div class="team-hover">
                                <h4>Maria Martin</h4>
                                <span>Head Chef</span>
                                <div class="team-link">
                                    <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                                    <a href="#"><i class="zmdi zmdi-pinterest"></i></a>
                                    <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                                    <a href="#"><i class="zmdi zmdi-google-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-team">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/3.jpg" alt="" class="p-img">
                            <img src="${pageContext.request.contextPath}/userResources/images/team/hover.jpg" alt="" class="s-img">
                            <div class="team-hover">
                                <h4>Julia Blossom</h4>
                                <span>Sous Chef</span>
                                <div class="team-link">
                                    <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                                    <a href="#"><i class="zmdi zmdi-pinterest"></i></a>
                                    <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                                    <a href="#"><i class="zmdi zmdi-google-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        <!-- Team Area End -->
        <!-- Footer Area Start -->
        
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Footer Area End -->
	    
		<!-- all js here -->
        <script src="${pageContext.request.contextPath}/userResources/js/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/popper.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.auderoSmokeEffect.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.meanmenu.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/color-switcher.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/jquery.magnific-popup.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/ajax-mail.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/userResources/js/main.js"></script>
    </body>
</html>