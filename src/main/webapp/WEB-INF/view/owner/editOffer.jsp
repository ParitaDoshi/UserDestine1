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
  
  <script>
	function fn() {
		var x = document.getElementById("category_id").value;
		console.log("category_id>>>>>" + x);
		removeAllSubcategory();
		removeAllItem();

		var http_request = new XMLHttpRequest();

		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//var a=1;
				console.log(http_request.responseText);
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				//alert(jsonObj);

				for (var i = 0; i < jsonObj.length; i++) {

					var create = document.createElement("option");

					create.value = jsonObj[i].category_id;
					create.text = jsonObj[i].category_name;

					document.category.subcategoryname.options.add(create);
				}
			}
		}

		console.log(x);
		http_request.open("get","loadcategory?category_id=" + x, true);
		http_request.send();
	}
	function removeAllSubcategory() {
		var removeCity = document.category.subcategoryname.options.length;
		for (i = removeCity; i > 0; i--) {
			document.category.subcategoryname.remove(i);
		}
	}
	function fn1() {
		var x = document.getElementById("subcategoryname").value;
		console.log("subCategoryId>>>>>" + x);
		removeAllItem();

		var http_request = new XMLHttpRequest();

		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//var a=1;
				console.log(http_request.responseText);
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				//alert(jsonObj);

				for (var i = 0; i < jsonObj.length; i++) {

					var create = document.createElement("option");

					create.value = jsonObj[i].itemid;
					create.text = jsonObj[i].itemname;

					document.category.itemid.options.add(create);
				}
			}
		}

		console.log(x);
		http_request.open("get", "loadsubcategory?subcategoryid=" + x,
				true);
		http_request.send();
	}
	function removeAllItem() {
		var removeCity = document.category.itemid.options.length;
		for (i = removeCity; i > 0; i--) {
			document.category.itemid.remove(i);
		}
	}
	function fn2() {
		var x = document.getElementById("itemid").value;
		console.log("itemId>>>>>" + x);

		var http_request = new XMLHttpRequest();

		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
				//var a=1;
				console.log(http_request.responseText);
				//alert(http_request.responseText);
				var jsonObj = JSON.parse(http_request.responseText);
				//alert(jsonObj);

				for (var i = 0; i < jsonObj.length; i++) {

					var create = document.createElement("option");

					var itemprice = jsonObj[i].itemprice;

				}
				document.getElementById("itemprice").value = itemprice;
			}
		}

		console.log(x);
		http_request.open("get", "loaditemprice?itemid=" + x, true);
		http_request.send();
	}
	function fn3() {
		var itemDiscountPrice = document.getElementById("offerDiscountPrice").value;

		var itemprice = document.getElementById("itemprice").value;
		
		var itemdiscountprice=(itemprice*itemDiscountPrice/100);

		var itemFinalPrice = itemprice-itemdiscountprice;

		document.getElementById("itemFinalPrice").value = itemFinalPrice;

	}
</script>
  
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
                 Edit Offer
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Manage Offer</a></li>
                <li class="breadcrumb-item active" aria-current="page"> Edit Offer</li>
                </ol>
            </nav>
          </div>
          
         
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
              <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                  <f:form class="cmxform" id="signupForm" method="get" action="addoffer" modelAttribute="x" name="category">
                    <fieldset>
                    
                    
                    
                    
                  
                   <div class="form-group">
                <label for="Category Name">Category Name</label><br/>
              <f:select path="categoryforeignkeyvo.category_id" class="form-control" id="category_id"  onchange="fn()" required="required">
                        
                        <option>---select---</option>
                        
                        <f:options items="${categoryls}" itemLabel="category_name"  itemValue="category_id" />
                        
                        </f:select>
                      </div> 
                      
                      
                      
                      
                     <div class="form-group">
                        <label for="Sub Category Name">Sub Category</label><br/>
                        <f:select path="subcategoryfVO.subcategoryid" class="form-control"
                        
                         id="subcategoryname"  onchange="fn1()" required="required">
                      
                      	<option>---select---</option>
                        </f:select>
                      </div> 
                      
                      
                      
                       <div class="form-group">
                        <label for="item">Item</label><br/>
                        <f:select path="itemfvo.itemid" class="form-control"
                        	id="itemid" onchange="fn2()" required="required">
													<option>---select---</option>
                        </f:select>
                      </div> 
                      
	                   	<div class="form-group">
	  							<label for="Offer Name"><b>Item Price</b></label> 
	  							<f:input path="itemfvo.itemprice" class="form-control" id="itemprice"
														 readonly="true" required="required"></f:input>
												</div>
                      
                      
                  
                   
                      
                    
                    
                       <div class="form-group">
                        <label for="Offer Name">Offer Name</label>
                        <f:input path="offername" class="form-control" required="required"></f:input>
                      </div>
                      
                      
                         <div class="form-group">
                      	<label for="Offer Name">Offer Date To</label>
                      	<div id="datepicker-popup" class="input-group date datepicker">
                      	 <f:input path="offerdateto" class="form-control" required="required"></f:input>
                       		<span class="input-group-addon input-group-append border-left">
                       			<span class="far fa-calendar input-group-text"></span>
                       		</span>
                      	</div>
                      </div>
                      
                      
                      <div class="form-group">
                      	<label for="Offer Name">Offer Date From</label>
                      	<div id="datepicker-popup1" class="input-group date datepicker">
                      		 <f:input path="offerdatefrom" class="form-control" required="required"></f:input>
                       		<span class="input-group-addon input-group-append border-left">
                       			<span class="far fa-calendar input-group-text"></span>
                       		</span>
                      	</div>
                      </div>
                      
                      
                      
                        <div class="form-group">
                        <label for="Offer Name">Offer Time To</label>
                     <div class="input-group date" id="timepicker-example" data-target-input="nearest">
                        <div class="input-group" data-target="#timepicker-example" data-toggle="datetimepicker">
                          <f:input path="offertimeto" class="form-control datetimepicker-input" data-target="#timepicker-example" required="required"/>
                          <div class="input-group-addon input-group-append"><i class="far fa-clock input-group-text"></i></div>
                        </div>
                      </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <label for="Offer Name">Offer Time From</label>
                    
                    <div class="input-group date" id="timepicker-example1" data-target-input="nearest">
                        <div class="input-group" data-target="#timepicker-example1" data-toggle="datetimepicker">
                          <f:input path="offertimefrom" class="form-control datetimepicker-input" data-target="#timepicker-example1" required="required"/>
                          <div class="input-group-addon input-group-append"><i class="far fa-clock input-group-text"></i></div>
                        </div>
                      </div>
                      </div>
                      
                    			  <div class="form-group">
												<label for="Offer Name"><b>Offer Discount Price</b></label>
												<f:input path="offerDiscountPrice" class="form-control"
													id="offerDiscountPrice" onblur="fn3()" required="required"></f:input>
											</div>

											<div class="form-group">
												<label for="Offer Name"><b>Offer Final Price</b></label> <f:input
													path="offerFinalPrice" class="form-control"
													 id="itemFinalPrice" readonly="true" required="required"></f:input>
											</div>
                      
                      
                      
                      <div class="form-group">
                        <label for="Offer Description">Offer Description</label><br/>
                       <f:textarea path="offerdescription" rows="5" cols="30" class="form-control" required="required"></f:textarea>
                      </div>
                      
                      <f:hidden path="offerid"/>
                      
                      
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
        
         <jsp:include page="footer.jsp"></jsp:include>
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
