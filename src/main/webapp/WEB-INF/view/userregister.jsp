<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>User Registration</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResources/images/favicon.png" />
</head>

<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
                <%-- <img src="${pageContext.request.contextPath}/adminResources/images/logo.svg" alt="logo"> --%>
              </div>
              <h4 align="center">User Registration</h4>
              <!-- <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6> -->
                <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
              <f:form class="pt-3" id="signupForm" method="get" action="addregisterdatauser" modelAttribute="x">
              
              
                <div class="form-group">
             
                  <f:input path="firstname" class="form-control form-control-lg"  placeholder="Firstname" required="required"/>
                 
                </div>
                
                <div class="form-group">
                  <f:input path="lastname" class="form-control form-control-lg"  placeholder="Lastname" required="required"/>
                
                </div>
                
                <div class="form-group">
                  <f:input path="loginfvo.username" class="form-control form-control-lg"  placeholder="Username (Enter Email)" required="required"/>
                
                </div>
                
                 <div class="form-group">
                  <f:input path="mobileno" class="form-control form-control-lg"  placeholder="Mobile No" required="required"/>
                 
                </div>
                
                
                <div class="form-group">
                  <f:input path="emailid" class="form-control form-control-lg"  placeholder="Email Id" required="required"/>
                 
                </div>
                
                
               
                
                <div class="form-group">
                  <f:password path="loginfvo.password" class="form-control form-control-lg"  placeholder="Password" required="required"/>
                
                </div>
                
                 
                <div class="form-group">
                  <f:textarea path="address" rows="5" cols="30" class="form-control form-control-lg"  placeholder="Address" required="required"/>
                 
                </div>
                
                  <div class="form-group">
                  
                  <f:radiobutton path="gender"  value="Male"/>Male&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                  <f:radiobutton path="gender"  value="Female"/>Female
                 
                 </div>
                
                
                
                
                 <div class="form-group">
                  <f:select path="cityfVO.cityid" class="form-control form-control-lg" placeholder="City" required="required">
                        <c:forEach  items="${ cityls}"  var="y">
								<option value="${y.cityid}">${y.cityname}</option>
						</c:forEach>
                        </f:select>
                </div>
                
                
                <div class="form-group">
                 <f:select path="areafVO.areaid" class="form-control form-control-lg" placeholder="Area"  required="required">
                        <c:forEach  items="${areals}"  var="y">
								<option value="${y.areaid}">${y. areaname}</option>
						</c:forEach>
                        </f:select>
                </div>
               
                <div class="mt-3">
               
                  <input class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit" value="SIGN UP"  required="required">
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="loginpage" class="text-primary">Login</a>
                </div>
              </f:form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath}/adminResources/js/vendor.bundle.base.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath}/adminResources/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/misc.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/settings.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
