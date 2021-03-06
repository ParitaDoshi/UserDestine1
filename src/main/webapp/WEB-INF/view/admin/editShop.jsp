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
    <!-- partial:../../partials/_navbar.html -->
   <jsp:include page="header.jsp"></jsp:include>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="fas fa-fill-drip"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close fa fa-times"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles primary"></div>
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close fa fa-times"></i>
        <ul class="nav nav-tabs" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
          </li>
        </ul>
        <div class="tab-content" id="setting-content">
          <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
            <div class="add-items d-flex px-3 mb-0">
              <form class="form w-100">
                <div class="form-group d-flex">
                  <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                  <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task-todo">Add</button>
                </div>
              </form>
            </div>
            <div class="list-wrapper px-3">
              <ul class="d-flex flex-column-reverse todo-list">
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Team review meeting at 3.00 PM
                    </label>
                  </div>
                  <i class="remove fa fa-times-circle"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Prepare for presentation
                    </label>
                  </div>
                  <i class="remove fa fa-times-circle"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Resolve all the low priority tickets due today
                    </label>
                  </div>
                  <i class="remove fa fa-times-circle"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Schedule meeting for next week
                    </label>
                  </div>
                  <i class="remove fa fa-times-circle"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Project review
                    </label>
                  </div>
                  <i class="remove fa fa-times-circle"></i>
                </li>
              </ul>
            </div>
            <div class="events py-4 border-bottom px-3">
              <div class="wrapper d-flex mb-2">
                <i class="fa fa-times-circle text-primary mr-2"></i>
                <span>Feb 11 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
              <p class="text-gray mb-0">build a js based app</p>
            </div>
            <div class="events pt-4 px-3">
              <div class="wrapper d-flex mb-2">
                <i class="fa fa-times-circle text-primary mr-2"></i>
                <span>Feb 7 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
              <p class="text-gray mb-0 ">Call Sarah Graves</p>
            </div>
          </div>
          <!-- To do section tab ends -->
          <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
            <div class="d-flex align-items-center justify-content-between border-bottom">
              <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
              <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
            </div>
            <ul class="chat-list">
              <li class="list active">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Thomas Douglas</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">19 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <div class="wrapper d-flex">
                    <p>Catherine</p>
                  </div>
                  <p>Away</p>
                </div>
                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                <small class="text-muted my-auto">23 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Daniel Russell</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">14 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <p>James Richardson</p>
                  <p>Away</p>
                </div>
                <small class="text-muted my-auto">2 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Madeline Kennedy</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">5 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="${pageContext.request.contextPath}/adminResources/images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Sarah Graves</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">47 min</small>
              </li>
            </ul>
          </div>
          <!-- chat tab ends -->
        </div>
      </div>
      <!-- partial -->
      <!-- partial:../../partials/_sidebar.html -->
      <jsp:include page="menu.jsp"></jsp:include>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
                Edit Shop
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Manage Shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit Shop</li>
                </ol>
            </nav>
          </div>
          
         
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
              <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                  <f:form class="cmxform" id="signupForm" method="post" action="addshop" modelAttribute="x" enctype="multipart/form-data">
                    <fieldset>
                    
                    
                     <div class="form-group">
                        <label for="Shop Type">First Name</label>
                        <f:input path="firstname" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Last Name</label>
                        <f:input path="lastname" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">User Name</label>
                        <f:input path="loginfvo.username" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Mobile Number</label>
                        <f:input path="mobileno" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Address</label>
                        <f:input path="address" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Email Id</label>
                        <f:input path="emailid" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Password</label>
                        <f:input path="loginfvo.password" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Shop Type">Gender</label>
                        <f:radiobutton path="gender" class="form-control form-control-lg" value="Male" required="required"/>Male
                 	 <f:radiobutton path="gender" class="form-control form-control-lg" value="Female" required="required"/>Female
                      </div>
                    
                    
                    
                    
                    
                    
                   <div class="form-group">
                        <label for="Category Name">Category Name</label><br/>
                        <f:select path="categoryforeignkeyvo.category_id" class="form-control" required="required">
                        <c:forEach  items="${ categoryls}"  var="y">
								<option value="${y.category_id}">${y.category_name}</option>
						</c:forEach>
                        </f:select>
                      </div> 
                      
                     <div class="form-group">
                        <label for="Sub Category Name">Sub Category</label><br/>
                        <f:select path="subcategoryfVO.subcategoryid" class="form-control" required="required">
                        <c:forEach  items="${subcategoryls}"  var="y">
								<option value="${y.subcategoryid}">${y.subcategoryname}</option>
						</c:forEach>
                        </f:select>
                      </div> 
                      
                      
                     <div class="form-group">
                        <label for="City Name">City Name</label><br/>
                        <f:select path="cityfVO.cityid" class="form-control" required="required">
                        <c:forEach  items="${ cityls}"  var="y">
								<option value="${y.cityid}">${y.cityname}</option>
						</c:forEach>
                        </f:select>
                      </div> 
                      
                     
                     <div class="form-group">
                        <label for="Area Name">Area</label><br/>
                        <f:select path="areafVO.areaid" class="form-control" required="required">
                        <c:forEach  items="${areals}"  var="y">
								<option value="${y.areaid}">${y. areaname}</option>
						</c:forEach>
                        </f:select>
                      </div> 
                      
                    
                    
                       <div class="form-group">
                        <label for="Shop Type">Shop Name</label>
                        <f:input path="ownershopname" class="form-control" required="required"></f:input>
                      </div>
                      
                        <div class="col-lg-6 grid-margin stretch-card">
						<label for="shop profile">Shop Profile Photo</label>
						<input type="file" name="file" value="file" class="dropify" required="required" />
						</div>
					
                      
                      <div class="form-group">
                        <label for="Shop Description">Shop Description</label><br/>
                       <f:textarea path="shopdescription" rows="5" cols="30" class="form-control" required="required"></f:textarea>
                      </div>
                      
                      <f:hidden path="ownerregistrationid" required="required"></f:hidden>
                      
                      <input class="btn btn-primary" type="submit" value="Update">
                    </fieldset>
                  </f:form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright � 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="far fa-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
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
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath}/adminResources/js/form-validation.js"></script>
  <script src="${pageContext.request.contextPath}/adminResources/js/bt-maxLength.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
