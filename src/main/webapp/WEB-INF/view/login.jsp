<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Melody Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="adminResources/css/all.min.css">
  <link rel="stylesheet" href="adminResources/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="adminResources/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="adminResources/images/favicon.png" />
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
                <!-- <img src="adminResources/images/logo.svg" alt="logo"> -->
                <h4 align="center">Login</h4>
              </div>
              
             <!--  <h6 class="font-weight-light">Login</h6> -->
               <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
        	<form action="j_spring_security_check" method="post">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg"  placeholder="Username" name="username"  required="required"/>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg"  placeholder="Password" name="password"  required="required"/>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"  required="required"/>
                <div class="mt-3">
                  <input class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit" value="SIGN IN">
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <!-- <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label> -->
                  </div>
                  <a href="forgotpwd" >Forgot password?</a>
                   
                 
                </div>
                 <div class="text-center mt-4 font-weight-light">
                 <a href="registrationpage" class="text-primary">Owner Registration</a></br>
                  <a href="registrationpageuser" class="text-primary">User Registration</a>
                </div>
               
                
               
              </form>
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
  <script src="adminResources/js/vendor.bundle.base.js"></script>
  <script src="adminResources/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="adminResources/js/off-canvas.js"></script>
  <script src="adminResources/js/hoverable-collapse.js"></script>
  <script src="adminResources/js/misc.js"></script>
  <script src="adminResources/js/settings.js"></script>
  <script src="adminResources/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
