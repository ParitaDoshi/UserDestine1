<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
  
  <script type="text/javascript">



function checkPwd()
{
	var pwd = document.getElementById("pwd");
	var cnfpwd = document.getElementById("cnfPwd");
	if(pwd.value!=cnfpwd.value)
	{
		alert("password and confirm password should be same");
		cnfpwd.value="";
	}
	
}


</script>
  
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
               
           <h5>ONE TIME PASSWORD</h5>
              </div>
              
              <form action="updatePassword" method="post" class="pt-3"  >
              <section>
                <div class="form-group">
                <label>OTP</label>
                  <input id="otp" type="text" class="form-control form-control-lg"  required="required"/>
                </div>
                                 	<span id="otpSpn"></span>       
                 <div class="form-group">
                  <label>Password</label>
                   <input type="password" class="form-control form-control-lg" id="pwd" name="password"  required="required"/>
                   </div>
                   
                   <div class="form-group">
                    <label>Confirm Password</label>
                     <input type="password" class="form-control form-control-lg" id="cnfPwd" onchange="checkPwd()"  required="required">
                        </div>
              </section>
																				
                <div class="mt-3">
                   <input class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit" value="submit">
                </div>
                
                
               
                
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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
 
 		<script type="text/javascript">
		
		var generatedOTP = <%=session.getAttribute("generatedOTP")%>;
		
		$("#otp").keyup(function(){
			
			
			
			if(generatedOTP == $("#otp").val()){
				$("#otpSpn").html("OTP Matched.");
				$("#otpSpn").css("color" , "green");
				$("#otpSpn").css("font-weight" , "bold");
			}
			else{
				$("#otpSpn").html("Wrong OTP.");
				$("#otpSpn").css("color" , "red");
				$("#otpSpn").css("font-weight" , "bold");
			}
			
		});

</script>
 
  <!-- endinject -->
</body>

</html>
