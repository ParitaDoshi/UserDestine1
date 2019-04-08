
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
                <h1>Contact Us</h1>
            </div>
        </div>
        <!-- Banner Title Area End -->
        <!-- Map Area Start -->
        <div id="contacts" class="map-area ptb-120">
            <div id="googleMap"></div>
        </div>
        <!-- Map Area End -->
        <!-- Contact Area Start -->
        <div class="contact-area pb-105">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-6">
                        <div class="contact-info">
                            <h4>Contact Address</h4>
                            <div class="c-address-wrapper">
                                <div class="c-item d-flex">
                                    <div class="c-icon">
                                        <i class="zmdi zmdi-pin"></i>
                                    </div>
                                    <span class="c-text">124/201 West Street, South Shajahanpur,<br>1000 New Zealand.</span>
                                </div>
                                <div class="c-item d-flex">
                                    <div class="c-icon">
                                        <i class="zmdi zmdi-phone-in-talk"></i>
                                    </div>
                                    <span class="c-text">
                                        <span>Phone :</span> +8804 222 789<br>
                                        <span>Tel :</span>+8804 222 789
                                    </span>
                                </div>
                                <div class="c-item d-flex">
                                    <div class="c-icon">
                                        <i class="zmdi zmdi-email"></i>
                                    </div>
                                    <span class="c-text">info@admin.com<br>makaw@yahoo.com</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-6">
                        <div class="contact-form-wrapper">
                            <h4>Contact Form</h4>
                            <form id="contact-form" action="mail.php" method="post">
                                <div class="form-box required">
                                    <input type="text" name="name" id="name" placeholder="Name" required="required">
                                </div>
                                <div class="form-box required">
                                    <input type="text" name="email" id="email" placeholder="E-mail" required="required">
                                </div>
                                <div class="form-box required">
                                    <input type="text" name="subject" id="subject" placeholder="Subject" required="required">
                                </div>
                                <div class="form-box required textarea">
                                    <textarea name="message" id="message" cols="30" rows="10" placeholder="Message" required="required"></textarea>
                                </div>
                                <button type="submit" class="default-btn submit-btn"><span>SEND Message</span></button>
                                <p class="form-message"></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact Area End -->
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyClpvcUyl31wMd7DJZQnnzI006S99u9nnM"></script>
        <script>
            function init() {
                var mapOptions = {
                    zoom: 11,
                    scrollwheel: false,
                    center: new google.maps.LatLng(23.746465, 90.376013),
                    styles: [{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"administrative.province","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.locality","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"lightness":"23"}]},{"featureType":"administrative.neighborhood","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.neighborhood","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2e5d4"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"lightness":"31"},{"weight":"1.00"}]},{"featureType":"poi.attraction","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"poi.attraction","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"on"}]},{"featureType":"poi.government","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"},{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"saturation":"15"},{"hue":"#7eff00"},{"lightness":"1"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"off"},{"lightness":20}]},{"featureType":"poi.park","elementType":"labels.icon","stylers":[{"visibility":"on"},{"saturation":"-50"}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20},{"visibility":"off"}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#d8d8d8"},{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"geometry.stroke","stylers":[{"invert_lightness":true}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"lightness":"9"},{"saturation":"-92"},{"hue":"#00daff"}]}]
                };
                var mapElement = document.getElementById('googleMap');
                var map = new google.maps.Map(mapElement, mapOptions);
                var marker = new google.maps.Marker({
                    position: map.getCenter(),
                    icon: '${pageContext.request.contextPath}/userResources/images/map-marker.png',
                    map: map
                });
            }
            google.maps.event.addDomListener(window, 'load', init);
        </script>
        <script src="${pageContext.request.contextPath}/userResources/js/main.js"></script>
    </body>
</html>