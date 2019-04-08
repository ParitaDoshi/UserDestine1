
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
                <h1>Restaurant</h1>
            </div>
        </div>
        <!-- Banner Title Area End -->


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
                 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                 
                 
                   <c:forEach items="${viewdata1}" var="s">
                   
                   
                    <div class="single-upcoming-event grid-item birthday events">
                        <div class="row">
                        
                        
                        
                            <div class="col-xl-5 col-lg-6">
                                <div class="upcoming-event-img">
                                  
                                  <img src="${pageContext.request.contextPath}/document/${s.shopProfilePhotoName}" alt="" height="200" width="400">
                                    
                                  <%--  <a href="restaurantdetailswithitem?ownerregistrationid=${s.ownerregistrationid}"> <span class="up-event-date">Detail</span></a> --%> 
                                  
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
                 
        <!-- Upcoming Event Area End -->
      
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