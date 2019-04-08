<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Makaw - Premium Restaurant Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/userResources/images/favicon.png">

<!-- all css here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/meanmenu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/responsive.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/userResources/css/color-switcher.css">
<script
	src="${pageContext.request.contextPath}/userResources/js/modernizr-3.5.0.min.js"></script>
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
			<h1>Restaurant Details</h1>
		</div>
	</div>
	<!-- Banner Title Area End -->
	<!-- Blog Details Area Start -->
	<div class="blog-details-area ptb-120">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-3" style="float: left">
						<div class="single-sidebar-widget widget-search">
							<form action="#" class="sidebar-search-form">
								<input type="text" placeholder="Search here . . . .">
								<button type="button">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
						</div>
						<div class="single-sidebar-widget">
							<h4>Categories</h4>
							<ul class="widget-list">
								<li><a href="#"><i class="fa fa-caret-left"></i>
										Vegetarian</a></li>
								<li><a href="#"><i class="fa fa-caret-left"></i>Non-Vegetarian
										</a></li>
								<li><a href="#"><i class="fa fa-caret-left"></i>Desserts</a></li>
								<li><a href="#"><i class="fa fa-caret-left"></i>Vegetarian And Non-Vegetrain
										</a></li>
								<li><a href="#"><i class="fa fa-caret-left"></i>Drinks</a></li>
							</ul>
						</div>
						<div class="single-sidebar-widget widget-calender">
							<div data-date="12/03/2012" class="datepicker"></div>
						</div>


					</div>
					<div class="order-xl-2 order-lg-2 col-lg-9" style="float: left">
						<div class="blog-image">
						<c:forEach items="${x}" var="i">
							<a href="blog.html"> 
						
							<img
								src="${pageContext.request.contextPath}/document/${i.shopProfilePhotoName}"
								alt="" > <!-- <span class="blog-date">13<span>MAR</span></span> -->
							</a>
							
							</c:forEach>
							
						</div>
						<div class="blog-text-container">
							<c:forEach items="${x}" var="i">
								<h4>${i.ownershopname}</h4>
								<span>5.00 pm - 11.00 pm</span>
								<br />
								<p>${i.shopdescription}</p>
								<div class="blog-meta-info">
									<span><i class="zmdi zmdi-favorite-outline"></i>( 500 )</span>
									<span><i class="zmdi zmdi-comments"></i>( 100 )</span> <span><i
										class="zmdi zmdi-share"></i>( 100 )</span>
								</div>
							</c:forEach>
						</div>
					</div>

					<div class="menu-area pt-120 pb-120">
						<div class="container">
							<div class="section-title text-center">
								<h2>Our Food Menu</h2>
								<p>There are many variations of passages of Lorem Ipsum
									available.</p>
							</div>
							<div class="row">
								<div class="col-lg-2 col-md-3">
									<div class="menu-list">
										<button class="active" data-filter="*">
											ALL <i class="zmdi zmdi-caret-right"></i>
										</button>
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
											
											<c:forEach items="${itemList}" var="j">
<!-- 											<div class="col-lg-6 grid-item breakfast dinner party"> -->
											<div class="col-lg-6 grid-item ${j.itemfvo.itemtype}">
												<div class="menu-item">
													<div class="menu-image">
														<a href="menu.html"><img
															src="${pageContext.request.contextPath}/item/${j.itemfvo.itemProfilePhotoName}"
															alt=""></a>
													</div>
													<div class="menu-text">
														<h4>
															<a href="menu.html">${j.itemfvo.itemname}</a><span>${j.itemfvo.itemprice}</span>
														</h4>
														<span>${j.itemfvo.itemdescription}</span>
														<span>Offer Price:- ${j.offerFinalPrice}</span>
													</div>
												</div>
											</div>
											</c:forEach>
											
											
											
											
											
									
											
											
											
											
											
											
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="blog-comments">
						<h4>Comments</h4>
						<div class="single-blog-comment">
							<div class="blog-comment-img">
								<img
									src="${pageContext.request.contextPath}/userResources/images/comment/1.jpg"
									alt="">
							</div>
							<div class="blog-comment-text-wrapper">
								<div class="blog-comment-text">
									<div class="comment-title">
										<h4>Maria Bhuiyan</h4>
										<span>15 Min ago</span>
									</div>
									<div class="comment-reply">
										<span><i class="zmdi zmdi-favorite-outline"></i>( 500 )</span>
										<span><button type="button">
												<i class="zmdi zmdi-mail-reply"></i>
											</button>( 100 )</span>
									</div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Cras aliquam, quam congue dictum luctus, lacus magna con
									suscipit erat, nec laoreet ipsum vestibulum sed.</p>
							</div>
						</div>
						<div class="single-blog-comment reply-comment">
							<div class="blog-comment-img">
								<img
									src="${pageContext.request.contextPath}/userResources/images/comment/2.jpg"
									alt="">
							</div>
							<div class="blog-comment-text-wrapper">
								<div class="blog-comment-text">
									<div class="comment-title">
										<h4>Katie Petel</h4>
										<span>1 Hour ago</span>
									</div>
									<div class="comment-reply">
										<span><i class="zmdi zmdi-favorite-outline"></i>( 100 )</span>
										<span><button type="button">
												<i class="zmdi zmdi-mail-reply"></i>
											</button>( 300 )</span>
									</div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Cras aliquam, quam congue dictum luctus, lacus magna con
									suscipit erat, nec laoreet ipsum vestibulum sed.</p>
							</div>
						</div>
						<div class="single-blog-comment">
							<div class="blog-comment-img">
								<img
									src="${pageContext.request.contextPath}/userResources/images/comment/3.jpg"
									alt="">
							</div>
							<div class="blog-comment-text-wrapper">
								<div class="blog-comment-text">
									<div class="comment-title">
										<h4>Rose Marry</h4>
										<span>45 Min ago</span>
									</div>
									<div class="comment-reply">
										<span><i class="zmdi zmdi-favorite-outline"></i>( 341 )</span>
										<span><button type="button">
												<i class="zmdi zmdi-mail-reply"></i>
											</button>( 79 )</span>
									</div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Cras aliquam, quam congue dictum luctus, lacus magna con
									suscipit erat, nec laoreet ipsum vestibulum sed.</p>
							</div>
						</div>
					</div>
					<div class="comment-form-container">
						<h4>leave a comment</h4>
						<form action="#" class="comment-form text-center">
							<div class="row">
								<div class="col-lg-6">
									<div class="form-box required">
										<input placeholder="Name" name="name" type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-box required">
										<input placeholder="E-mail" name="email" type="email">
									</div>
								</div>
							</div>
							<div class="form-box required textarea">
								<textarea name="message" cols="30" rows="10"
									placeholder="Message"></textarea>
							</div>
							<button type="button" class="default-btn">
								<span>Send Comment</span>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Blog Details Area End -->
	<!-- Footer Area Start -->
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- Footer Area End -->

	<!-- all js here -->
	<script
		src="${pageContext.request.contextPath}/userResources/js/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/jquery.auderoSmokeEffect.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/jquery.meanmenu.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/color-switcher.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/jquery.magnific-popup.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/ajax-mail.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/userResources/js/main.js"></script>
</body>
</html>