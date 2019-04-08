<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
	
	<script type="text/javascript">
	function areaChange() 
	{
		var cityId = document.getElementById("cityId");
		var areaId = document.getElementById("areaId");
		
		areaId.innerHTML = "<option value='' selected='selected'>Choose Area</option>";
		areaId.innerHTML = "";
		
		var htp = new XMLHttpRequest();
		
		htp.onreadystatechange = function () 
		{
			/* alert("AJAX Call"); */
		   if(htp.readyState == 4)
			   {
			       var JSN = JSON.parse(htp.responseText);
			       
			       for (var i = 0; i < JSN.length; i++) {

			    	   var opt=document.createElement("option");
   					
   					opt.value=JSN[i].areaid;
   					opt.text=JSN[i].areaname;
   					
   					areaId.options.add(opt);
  
			    	   
					
						
					}
			       
			   }
		  }
		
		htp.open("get","loadAreaByCity?cityId="+cityId.value,true);
		htp.send();
		
	}
	
	
	</script>
	
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<!-- Header Area Start -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Header Area End -->
	<!-- Banner Title Area Start -->
	<div class="banner-title-area bg-4 text-center ptb-100 dark-overlay-7">
		<div class="container">
			<h1>Search Your Area</h1>
		</div>
	</div>
	<!-- Banner Title Area End -->
	<!-- Blog Details Area Start -->
	<div class="blog-details-area ptb-120">
		<div class="contact-area pb-105" align="center">
            <div class="container" align="center">
                
                    <div class="col-xl-7 col-lg-6" align="center">
                    
                    <h4>Select Your Area</h4>
                        <div class="contact-form-wrapper">
                         
                            <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                            
                            
                 	 <f:form class="cmxform"  method="get" action="showlocation" modelAttribute="x" name="city">
                          
                      <div class="form-box required">
                      
                          <f:select path="cityforeignkeyvo.cityid" class="form-control" id="cityId"  onchange="areaChange()" required="required">
                        			<option>---select---</option>
                        			<f:options items="${cityls}" itemLabel="cityname"  itemValue="cityid" />
                        </f:select>
                        
                        
                      </div>
                      
                      <div class="form-box required">
                           <f:select class="form-control" path="areaid" id="areaId" required="required">
                       				<option>---select---</option>
						   </f:select>
                       </div>
                       
                       
             <button type="submit" class="default-btn submit-btn"><span>SEND Message</span></button>
             
                                <p class="form-message"></p>
                            </f:form>
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