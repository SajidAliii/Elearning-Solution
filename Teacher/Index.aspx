<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>SJ International - Dashboard</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
               <div class="header-left">
                    <a href="index.aspx" class="logo">
						<img src="assets/img/logo-white.png" alt="Logo">
					</a>
					<a href="index.aspx" class="logo logo-small">
						<img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
					</a>
                </div>
				<!-- /Logo -->
				
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="fas fa-align-left"></i>
				</a>
				
				<!-- Search Bar -->
				<div class="top-nav-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fas fa-search"></i></button>
					</form>
				</div>
				<!-- /Search Bar -->
				
				<!-- Mobile Menu Toggle -->
				<a class="mobile_btn" id="mobile_btn">
					<i class="fas fa-bars"></i>
				</a>
				<!-- /Mobile Menu Toggle -->
				
				<!-- Header Right Menu -->
				<ul class="nav user-menu">

					<!-- Notifications -->
					<li class="nav-item dropdown noti-dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<i class="far fa-bell"></i> <span class="badge badge-pill">1</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Notifications</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-02.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Carlson Tech</span> has approved <span class="noti-title">your estimate</span></p>
													<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
								
								
								</ul>
							</div>
							
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="assets/img/profiles/sajid.jpg" width="31" alt="Ryan Taylor"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="assets/img/profiles/sajid.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									<h6>Ryan Taylor</h6>
									<asp:Label ID="namee" runat="server" Text="Label"></asp:Label></h6><asp:Label ID="rolee" runat="server" Text="Label" CssClass="text-muted mb-0"></asp:Label>
								</div>
							</div>
							<a class="dropdown-item" href="profile.aspx">My Profile</a>
							<a class="dropdown-item" href="inbox.aspx">Inbox</a>
							<a class="dropdown-item" href="../../Login.aspx">Logout</a>
						</div>
					</li>
					<!-- /User Menu -->
					
				</ul>
				<!-- /Header Right Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Main Menu</span>
							</li>
							<li class="active"> 
								<a href="index.aspx"><i class="fas fa-th-large"></i> <span>Dashboard</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> Students</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="students.aspx">Student in Courses</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> Quiz</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="quiz.aspx">Quiz Summary</a></li>
									<li><a href="addquiz.aspx">Add Quiz</a></li>
								</ul>
							</li>
							
							<li class="submenu">
							</li>

							<li class="menu-title"> 
								<span>Management</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="leave.aspx">Leave Application</a></li>
								
								</ul>
							</li>
							<li> 
								&nbsp;</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
                <div class="content container-fluid">
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome Teacher!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">Dashboard</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<!-- Overview Section -->
					
					<!-- /Overview Section -->				

					<div class="row">
						<div class="col-md-12 col-lg-6">
						
							<!-- Revenue Chart -->
							
							<!-- /Revenue Chart -->
							
						</div>
						
						<div class="col-md-12 col-lg-6">
						
							<!-- Student Chart -->
						
							<!-- /Student Chart -->							
						</div>	
					</div>
						<div class="row">
					
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title">Courses</h5>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center">
											<thead class="thead-light">
												<tr>
													<th>Course ID</th>
													<th>Course Name</th>
													<th class="text-center">Course Credit Hours</th>
																									</tr>
											</thead>
											<tbody>
                                               <tbody>
												<tr>
													<td class="text-nowrap">
														<div>ITM4202</div>
													</td>
													<td class="text-nowrap">IT Project Management</td>
													<td class="text-center">4</td>
											
													
												</tr>
												   <tr>
													<td class="text-nowrap">
														<div>INT4202</div>
													</td>
													<td class="text-nowrap">Intelligent system</td>
													<td class="text-center">4</td>
											
													
												</tr>

											</tbody>
										</table>
									</div>
								
							</div>
					<div class="row">
						<div class="col-md-6 d-flex">						
							<!-- Star Students -->
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title">Students in course</h5>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center">
											<thead class="thead-light">
												<tr>
													<th>ID</th>
													<th>Name</th>
													<th>Section</th>
													<th>DOB</th>
													
													<th>Mobile Number</th>
													<th>Address</th>
												</tr>
											</thead>
											<tbody>
                                                	<tr>
													<td class="text-nowrap">
														<div>1</div>
													</td>
													<td class="text-nowrap">Sajid Ali</td>
													<td class="text-center">18b</td>
													<td class="text-center">28/Sep/1998</td>
														<td class="text-center">30927717</td>
													<td class="text-center">Doha Qatar</td>
												</tr>
													<tr>
													<td class="text-nowrap">
														<div>2</div>
													</td>
													<td class="text-nowrap">Muaz Mazher</td>
													<td class="text-center">18b</td>
													<td class="text-center">1/Jan/1885</td>
														<td class="text-center">33445566</td>
													<td class="text-center">Nilai, Negeri Sembilan</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Star Students -->							
						</div>

						<div class="col-md-6 d-flex">						
							<!-- Feed Activity -->
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title">Student Activity</h5>
								</div>
								<div class="card-body">
									<ul class="activity-feed">
										<li class="feed-item">
											<div class="feed-date">July 22</div>
											<span class="feed-text"><strong>Sajid Ali</strong> Finished Intelligent Quiz 1 </span>
										</li>
										
									</ul>
								</div>
							</div>
							<!-- /Feed Activity -->							
						</div>
					</div>

					<!-- Socail Media Follows -->
					<div class="row">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card flex-fill fb sm-box">
								<i class="fab fa-facebook"></i>
								<h6>1023</h6>
								<p>Followers</p>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card flex-fill twitter sm-box">
								<i class="fab fa-twitter"></i>
								<h6>1232</h6>
								<p>Followers</p>
							</div>
						</div>
	
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card flex-fill insta sm-box">
								<i class="fab fa-instagram"></i>
								<h6>3432</h6>
								<p>Followers</p>
							</div>
						</div>
	
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card flex-fill linkedin sm-box">
								<i class="fab fa-linkedin-in"></i>
								<h6>321</h6>
								<p>Followers</p>
							</div>
						</div>
					</div>
					<!-- /Socail Media Follows -->
				</div>
				
				<!-- Footer -->
				<footer>
					<p>Created by Sajid Ali i17013658</p>					
				</footer>
				<!-- /Footer -->

			</div>
			<!-- /Page Wrapper -->

			
		
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Chart JS -->
		<script src="assets/plugins/apexchart/apexcharts.min.js"></script>
		<script src="assets/plugins/apexchart/chart-data.js"></script>
		
		<!-- Custom JS -->
		<script  src="assets/js/script.js"></script>
		
    </body>
</html>