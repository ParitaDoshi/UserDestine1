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
                <h1>Food Menu</h1>
            </div>
        </div>
        <!-- Banner Title Area End -->
        <!-- Menu Area Start -->
        <div class="menu-area bg-light-1 pt-120 pb-120">
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/1.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/2.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/3.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/1.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/4.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/2.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/5.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/6.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/7.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/8.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/7.jpg" alt=""></a>
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
                                            <a href="menu.html"><img src="${pageContext.request.contextPath}/userResources/images/menu/9.jpg" alt=""></a>
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
            </div>
        </div>
        <!-- Menu Area End -->
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