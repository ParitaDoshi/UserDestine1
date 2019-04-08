<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        
        <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAE8yc7xLuJUHBPZCdyCWCFNSfaVZTURnU"></script>
    <script>
      // In this example, we center the map, and add a marker, using a LatLng object
      // literal instead of a google.maps.LatLng object. LatLng object literals are
      // a convenient way to add a LatLng coordinate and, in most cases, can be used
      // in place of a google.maps.LatLng object.

      var map;
      function initialize() {
    	  var lat = document.getElementById("lat");
    	  var lng = document.getElementById("long");
        var mapOptions = {
          zoom: 8,
          center: {lat: parseFloat(lat.value), lng: parseFloat(lng.value)}
        };
        map = new google.maps.Map(document.getElementById('map'),
            mapOptions);

        var marker = new google.maps.Marker({
          // The below line is equivalent to writing:
          // position: new google.maps.LatLng(-34.397, 150.644)
          position: {lat: parseFloat(lat.value), lng: parseFloat(lng.value)},
          map: map
        });

        // You can use a LatLng literal in place of a google.maps.LatLng object when
        // creating the Marker object. Once the Marker object is instantiated, its
        // position will be available as a google.maps.LatLng object. In this case,
        // we retrieve the marker's position using the
        // google.maps.LatLng.getPosition() method.
        var infowindow = new google.maps.InfoWindow({
          content: '<p>Marker Location:' + marker.getPosition() + '</p>'
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map, marker);
        });
      }

      google.maps.event.addDomListener(window, 'load', initialize);
    </script>  
        
        
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
    <body onload="initialize()">
        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
	    
        <!-- Header Area Start -->
		<jsp:include page="header.jsp"></jsp:include>
        <!-- Header Area End -->
        <!-- Banner Title Area Start -->
        <div class="banner-title-area bg-4 text-center ptb-100 dark-overlay-7">
            <div class="container">
                <h1>Restaurant</h1>
            </div>
        </div>
        <!-- Banner Title Area End -->

   <c:forEach items="${areaList}" var="i">
  <input type="hidden" id="lat" value="${i.arealatitude }">
  <input type="hidden" id="long" value="${i.arealongitude }">
 </c:forEach>
<!--   <input type="button" value="search" onclick="initialize()"> -->
    <div id="map" style=""></div>



        <!-- Upcoming Event Area Start -->
        <div class="upcoming-event-area pt-120 pb-120">
            <div class="container">
                <div class="section-title text-center">
                    <h2>Our Restaurant</h2>
                  <!--   <p>There are many variations of passages of Lorem Ipsum available.</p> -->
                </div>
            </div>
            <!-- <div class="container">
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
                </div> -->
                <div class="grid">
                 
                 
                   <c:forEach items="${viewdata}" var="s">
                   
                   
                    <div class="single-upcoming-event grid-item birthday events">
                        <div class="row">
                        
                        
                        
                            <div class="col-xl-5 col-lg-6">
                                <div class="upcoming-event-img">
                                  
                                  <img src="${pageContext.request.contextPath}/document/${s.shopProfilePhotoName}" alt="" height="200" width="400">
                                    
                                   <a href="editrestaurantdetails?ownerregistrationid=${s.ownerregistrationid}"> <span class="up-event-date">Detail</span></a> 
                                  
                                </div>
                            </div>
                            
                            
                            <div class="col-xl-7 col-lg-6">
                                <div class="up-event-text">
                                     <h4>  ${s.ownershopname}</h4>
                                    <span>5.00 pm - 11.00 pm</span><br/>
                                    <p>${s.shopdescription}</p>
                                 </div>   
                                   
                             </div> 
                                 
                                   
                                   
                     	
                     	

                      		
                      	
                                </div>
                             
                            </div>
                                   </c:forEach>                  	
                        </div>
                 </div>
        <!-- Upcoming Event Area End -->
      
        <!-- Footer Area Start -->
        <footer class="footer-area">
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
                                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
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
        </footer>
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