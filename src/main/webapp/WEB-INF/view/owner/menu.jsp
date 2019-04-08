 <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="profile-image">
                <%-- <img src="${pageContext.request.contextPath}/adminResources/images/faces/face5.jpg" alt="image"/> --%>
              </div>
              <div class="profile-name">
                <p class="name">
                  OWNER
                </p>
                <p class="designation">
              
                </p>
              </div>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="fa fa-home menu-icon"></i>
              <span class="menu-title">Menu</span>
            </a>
          </li>
         
           <li class="nav-item">
         
            <a class="nav-link" href="profile">
              <i class="fas fa-exclamation-circle menu-icon"></i>
              <span class="menu-title">Manage Profile</span>
         
            </a>
           
          </li>
        
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#page-layouts" aria-expanded="false" aria-controls="page-layouts">
              <i class="fab fa-trello menu-icon"></i>
              <span class="menu-title">Item</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="page-layouts">
              <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="itempage">Add Item</a></li>
                <li class="nav-item"> <a class="nav-link" href="viewitempage">View Item</a></li>
                
              </ul>
            </div>
          </li>
          
            <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
              <i class="fas fa-exclamation-circle menu-icon"></i>
              <span class="menu-title">Offer</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="error">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="offerpage"> Add Offer</a></li>
                <li class="nav-item"> <a class="nav-link" href="viewofferpage"> View Offer</a></li>
              </ul>
            </div>
          </li>
          
          <li class="nav-item d-none d-lg-block">
            <a class="nav-link" data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false" aria-controls="sidebar-layouts">
              <i class="fas fa-columns menu-icon"></i>
              <span class="menu-title">Complain</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="sidebar-layouts">
              <ul class="nav flex-column sub-menu">
             
                
                 <li class="nav-item"> <a class="nav-link" href="ownercomplainpage">Post Complain</a></li>
                <li class="nav-item"> <a class="nav-link" href="viewownercomplainpage">View Complain</a></li>
                
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="fas fa-exclamation-circle menu-icon"></i>
              <span class="menu-title">Feedback</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
              
                <li class="nav-item d-none d-lg-block"> <a class="nav-link" href="feedbackpageowner">Post Feedback</a></li>
                  <li class="nav-item d-none d-lg-block"> <a class="nav-link" href="viewfeedbackowner">View Feedback</a></li>
            
                
               	
              </ul>
              </div>
          </li>
         
        
	<li class="nav-item"><a class="nav-link" href="../logout"><span class="menu-title"  class="btn btn-primary">Logout</span>
		</a></li>
			
          
        
         
      </nav>