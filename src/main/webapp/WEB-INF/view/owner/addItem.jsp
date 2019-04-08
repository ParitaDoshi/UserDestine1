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
                 Add Item
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> Manage Item</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Add Item</li>
                </ol>
            </nav>
          </div>
          
         
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
              <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                  <f:form class="cmxform" id="signupForm" method="POST" action="additem" modelAttribute="x" enctype="multipart/form-data">
                    <fieldset>
                    
                    
                    
                    
                  
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
                      
                      
                   <%-- <div class="form-group">
                        <label for="Sub Category Name">Shop Name</label><br/>
                        <f:select path="shopforeignkeyvo.shopid" class="form-control">
                        <c:forEach  items="${shopls}"  var="y">
								<option value="${y.shopid}">${y.shoptype}</option>
						</c:forEach>
                        </f:select>
                      </div>  --%>
                      
                   
                      
                    
                    
                       <div class="form-group">
                        <label for="Item Name">Item Name</label>
                        <f:input path="itemname" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Item Price">Item Price</label>
                        <f:input path="itemprice" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="form-group">
                        <label for="Item Size">Item Size</label>
                        <f:input path="itemsize" class="form-control" required="required"></f:input>
                      </div>
                      
                       <div class="col-lg-6 grid-margin stretch-card">
						<label for="shop profile">Item Profile Photo</label>
						<input type="file" name="file" value="file" class="dropify" required="required"/>
						</div>
                      
                      
                      
                       <div class="form-group">
                        <label for="Sub Category Name">Item type</label><br/>
                        <f:select path="itemtype" class="form-control" required="required">
                       
								<option>All</option>
								<option>breakfast</option>
								<option>lunch</option>
								<option>dinner</option>
								<option>snacks</option>
					
                        </f:select>
                      </div> 
                        
                      
                      
                      
                      
                      
                      <div class="form-group">
                        <label for="Item Description">Item Description</label><br/>
                       <f:textarea path="itemdescription" rows="5" cols="30" class="form-control" required="required"></f:textarea>
                      </div>
                      
                     
                      
                      
                      <input class="btn btn-primary" type="submit" value="Add">
                    </fieldset>
                  </f:form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        
         <jsp:include page="footer.jsp"></jsp:include><!-- partial -->
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
  
  
   <script src="${pageContext.request.contextPath}/adminResources/js/dropify.js"></script>
   <script src="${pageContext.request.contextPath}/adminResources/js/dropzone.js"></script>
   <script src="${pageContext.request.contextPath}/adminResources/js/form-addons.js"></script>
   <script src="${pageContext.request.contextPath}/adminResources/js/form-repeater.js"></script>
   <script src="${pageContext.request.contextPath}/adminResources/js/formpickers.js"></script>
    <script src="${pageContext.request.contextPath}/adminResources/js/x-editable.js"></script>
   <script src="${pageContext.request.contextPath}/adminResources/js/jquery-file-upload.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
