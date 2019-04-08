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
					<div class="blog-comments">
						<h4>Comments</h4>
						
						<c:forEach items="${viewdata}" var="i">
						
						
						<div class="single-blog-comment">
							<div class="blog-comment-img">
								<img src="${pageContext.request.contextPath}/userResources/images/comment/1.jpg"
									alt="">
							</div>
							<div class="blog-comment-text-wrapper">
								<div class="blog-comment-text">
									<div class="comment-title">
										<h4>
											RESTAURANT : ${i.toId.username} <br><br>
											USER : ${i.fromId.username} 
										</h4>
										<span>${i.feedback}</span>
									</div>
									<div class="comment-reply">
										<span><i class=""></i></span>
										<span><button type="button">
												<i class="zmdi zmdi-mail-reply"></i>
											</button></span>
									</div>
								</div>
								<p>
									${i.feedbackmessage}
								</p>
							</div>
						</div>
						
						</c:forEach>
						
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