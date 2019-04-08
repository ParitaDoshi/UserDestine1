
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile">
			<div class="nav-link">
				<div class="profile-image">
					<%--  <img src="${pageContext.request.contextPath}/adminResources/images/faces/face5.jpg" alt="image"/> --%>
				</div>
				<div class="profile-name">
					<p class="name">ADMIN</p>
					<p class="designation"></p>
				</div>
			</div>
		</li>

		<li class="nav-item"><a class="nav-link" href="index"> <i
				class="fa fa-home menu-icon"></i> <span class="menu-title">DashBoard</span>
		</a></li>

		
		
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#page-layouts" aria-expanded="false"
			aria-controls="page-layouts"> <i class="fab fa-trello menu-icon"></i>
				<span class="menu-title">Manage Category</span> <i
				class="menu-arrow"></i>
		</a>
			<div class="collapse" id="page-layouts">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="categorypage">Add
							Category</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewcategorypage">View Category</a></li>

				</ul>
			</div></li>

		<li class="nav-item d-none d-lg-block"><a class="nav-link"
			data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false"
			aria-controls="sidebar-layouts"> <i
				class="fas fa-columns menu-icon"></i> <span class="menu-title">Manage
					SubCategory</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="sidebar-layouts">
				<ul class="nav flex-column sub-menu">


					<li class="nav-item"><a class="nav-link"
						href="subcategorypage">Add SubCategory</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewsubcategorypage">View SubCategory</a></li>

				</ul>
			</div></li>
			
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#charts" aria-expanded="false" aria-controls="charts"> <i
				class="fas fa-chart-pie menu-icon"></i> <span class="menu-title">Manage
					Restaurant</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="charts">
				<ul class="nav flex-column sub-menu">
				<li class="nav-item d-none d-lg-block"><a class="nav-link"
						href="shoppage">Add Restaurant</a></li>
					<li class="nav-item"><a class="nav-link" href="viewshoppage">View
							Restaurant</a></li>

				</ul>
			</div></li>
			
<!-- 
		<li class="nav-item d-none d-lg-block"><a class="nav-link"
			data-toggle="collapse1" href="#sidebar-layouts" aria-expanded="false"
			aria-controls="sidebar-layouts1"> <i
				class="fas fa-compass menu-icon"></i> <span class="menu-title">Manage
					Shop</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="sidebar-layouts">
				<ul class="nav flex-column sub-menu">

					<li class="nav-item d-none d-lg-block"><a class="nav-link"
						href="shoppage">Add Shop</a></li>
					<li class="nav-item"><a class="nav-link" href="viewshoppage">View
							Shop</a></li>
							
					</ul>
				</div>
			</li>
 -->
	
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced">
				<i class="fas fa-clipboard-list menu-icon"></i> <span
				class="menu-title">Manage City</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-advanced">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="citypage">Add
							City</a></li>
					<li class="nav-item"><a class="nav-link" href="viewcitypage">View
							City</a></li>

				</ul>
			</div></li>
			
			
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#form-elements" aria-expanded="false"
			aria-controls="form-elements"> <i
				class="fab fa-wpforms menu-icon"></i> <span class="menu-title">Manage
					Area</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="form-elements">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="areapage">Add
							Area</a></li>
					<li class="nav-item"><a class="nav-link" href="viewareapage">View
							Area</a></li>

				</ul>
			</div></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#error" aria-expanded="false" aria-controls="error"> <i
				class="fas fa-exclamation-circle menu-icon"></i> <span
				class="menu-title">Manage Offer</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="error">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="offerpage">
							Add Offer</a></li>
					<li class="nav-item"><a class="nav-link" href="viewofferpage">
							View Offer</a></li>
				</ul>
			</div></li>


		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#editors" aria-expanded="false" aria-controls="editors"> <i
				class="fas fa-pen-square menu-icon"></i> <span class="menu-title">Manage
					Complain</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="editors">
				<ul class="nav flex-column sub-menu">

					<li class="nav-item"><a class="nav-link"
						href="viewadmincomplainpage">View Complain</a></li>
				</ul>
			</div></li>


		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#charts" aria-expanded="false" aria-controls="charts"> <i
				class="fas fa-chart-pie menu-icon"></i> <span class="menu-title">Manage
					Feedback</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="charts">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="viewfeedbackadmin">View Feedback</a></li>

				</ul>
			</div></li>
			
			
	<li class="nav-item"><a class="nav-link" href="../logout"><span class="menu-title"  class="btn btn-primary">Logout</span>
		</a></li>
		
</nav>