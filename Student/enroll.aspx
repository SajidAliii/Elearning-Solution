﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="Student_courses" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>SJ International - Students</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png">
	
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&display=swap">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

		<!-- Datatables CSS -->
		<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <style type="text/css">
            .auto-style1 {
                height: 34px;
            }
            .auto-style2 {
                white-space: nowrap;
                height: 32px;
            }
            .auto-style3 {
                text-align: center;
                height: 32px;
            }
        </style>
    </head>
    <body>
		
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
                <div class="header-left">
                    <a href="index.aspx" class="logo">
						<img src="assets/img/logo-white.png">
					</a>
					<a href="index.aspx" class="logo logo-small">
						<img src="assets/img/logo-small.png">
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
								<a href="javascript:void(0)" class="clear-noti" > Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/stagg-1.jpg">
												</span>
												<div class="media-body">
													<p  class="noti-details"><span class="noti-title">Jamal</span> has added a new Quiz <span class="noti-title">Data Structure</span></p>
													<p class="noti-time"><span class="notification-time">1 day ago</span></p>
												</div>
											</div>
										</a>
									</li></ul>
								
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="avatar-img rounded-circle" src="assets/img/profiles/sajid.jpg" width="31" alt="Ryan Taylor"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="assets/img/profiles/sajid.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
								<h6><asp:Label ID="namee" runat="server" Text="Label"></asp:Label></h6>
									<asp:Label ID="rolee" runat="server" Text="Label" CssClass="text-muted mb-0"></asp:Label>
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
							<li class="submenu" > 
								<a href="Index.aspx"><i class="fas fa-th-large"></i> <span>Dashboard</span></a>
							</li>
							<li class="submenu active">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> Courses</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="courses.aspx"  >Current Courses</a></li>
									<li><a href="enroll.aspx" class="active">Enroll Into courses</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> Quiz</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="quiz.aspx">Quiz</a></li>
									<li><a href="result.aspx">Result</a></li>
								</ul>
							</li>
							
							
							<li class="menu-title"> 
								<span>Management</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="enroll.aspx">Enrollment</a></li>
									<li><a href="fees.aspx">Fees</a></li>

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
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Courses</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item">Courses</li>
									<li class="breadcrumb-item active">Current Available Courses</li>
								</ul>
							</div>
							<div class="col-auto text-right float-right ml-auto">
							<form runat="server">
								<a 
								
									
					
								
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<div class="row">
						<div class="col-sm-12">
							<div  class="card card-table">
								<div class="card-body">
									<div class="table-responsive" >

										<table class="table table-hover table-center mb-0 datatable" >
											<thead>
												<tr>
													<th class="auto-style1">ID</th>
													<th class="auto-style1">Course Name</th>
													<th class="auto-style1">Course Teacher</th>
													<th class="auto-style1">Course Credit Hours</th>
													<th class="auto-style1">Enroll</th>
													 
												</tr>
											</thead>
												<tbody>
														 <tr>
													<td class="auto-style2">
														<div>ITM325</div>
													</td>
													<td class="auto-style2">Database System Concepts</td>
													<td class="auto-style3">Jamal Mohammed</td>
													<td class="auto-style3">3</td>
																										<td class="text-center">
														<div>
                                                           <a> <a href="fake.aspx" class="btn btn-sm bg-success-light mr-2">Enroll</a>
															</a>
															
														</div>
													</td>

												</tr>
														 <tr>
													<td class="text-nowrap">
														<div>HCI3202</div>
													</td>
													<td class="text-nowrap">Human Computer Interface</td>
													<td class="text-center">Andrew</td>
													<td class="text-center">3</td>
															 <td class="text-center">
													<div class="actions">
                                                           <a> <a href="fake.aspx" class="btn btn-sm bg-success-light mr-2">Enroll</a>
															 <td>
													             <div>
															</a>
															
														         </div>
                                                             </td>

												</tr>
												</tbody>
										</table>
									</div>
								</div></div></div>
							</div></div>							
					</form>

				<!-- Footer -->
				<footer>
					<p>Created by Sajid Ali i17013658
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Datatables JS -->
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
    </body>
</html>