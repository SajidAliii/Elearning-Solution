<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add-student.aspx.cs" Inherits="Admin_add_student" %>

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
                    <a href="index.html" class="logo">
						<img src="assets/img/logo-white.png" alt="logo" >
					</a>
					<a href="index.html" class="logo logo-small">
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
							<i class="far fa-bell"></i> <span class="badge badge-pill">3</span>
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
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-11.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">International Software Inc</span> has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
													<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-17.jpg">
												</span>
												<div class="media-body">
												<p class="noti-details"><span class="noti-title">John Hendry</span> sent a cancellation request <span class="noti-title">Apple iPhone XR</span></p>
												<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="assets/img/profiles/avatar-13.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Mercury Software Inc</span> added a new product <span class="noti-title">Apple MacBook Pro</span></p>
													<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#">View all Notifications</a>
							</div>
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Sajid Ali"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									
									<h6><asp:Label ID="namee" runat="server" Text="Label"></asp:Label></h6><asp:Label ID="rolee" runat="server" Text="Label" CssClass="text-muted mb-0"></asp:Label>
								</div>
							</div>
							<a class="dropdown-item" href="profile.aspx">My Profile</a>
							<a class="dropdown-item" href="inbox.aspx">Inbox</a>
							<a class="dropdown-item" href="../Login.aspx">Logout</a>
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
							<li> 
								<a href="index.aspx"><i class="fas fa-th-large"></i> <span>Dashboard</span></a>
							</li>
							<li class="submenu active">
								<a href="#"><i class="fas fa-user-graduate"></i> <span> Students</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="students.aspx">Student List</a></li>
									<li><a href="add-student.aspx" class="active">Student Add</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-chalkboard-teacher"></i> <span> Teachers</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="teachers.aspx">Teacher List</a></li>
									<li><a href="add-teacher.aspx">Teacher Add</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-building"></i> <span> Departments</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="departments.aspx">Department List</a></li>
									<li><a href="add-department.aspx">Department Add</a></li>
								</ul>
							</li>

							<li class="menu-title"> 
								<span>Management</span>
							</li>

							<li class="submenu">
								<a href="#"><i class="fas fa-file-invoice-dollar"></i> <span> Accounts</span> <span class="menu-arrow"></span></a>
								<ul>
									<li><a href="fees-collections.aspx">Fees Collection</a></li>
									
									<li><a href="salary.aspx">Salary</a></li>
									<li><a href="add-fees-collection.aspx">Add Fees</a></li>
									
									<li><a href="add-salary.aspx">Add Salary</a></li>
								</ul>
							</li>
							
								</ul>
							</li>
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
								<h3 class="page-title">Add Students</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="students.aspx">Students</a></li>
									<li class="breadcrumb-item active">Add Students</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						<form runat="server"  class="needs-validation" novalidate>
							<div class="card">
								<div class="card-body">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>Student Information</span></h5>
											</div>
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>Full Name</label>
                                                    <asp:TextBox ID="fullname" runat="server" CssClass="form-control" ></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fullname" runat="server" ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-12 col-sm-6">  
												<div class="form-group">
													<label>Student Id</label>
                                                    <asp:TextBox ID="id" runat="server" CssClass="form-control" placeholder="Choose custom ID or Leave it blank" ></asp:TextBox>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Gender</label>
                                                    <asp:DropDownList ID="gender" runat="server" CssClass="form-control" >
														<asp:ListItem Text="Select Gender" Value="" />
														<asp:ListItem Text="Female" Value="0" />
														<asp:ListItem Text="Male" Value="1" />
                                                    </asp:DropDownList>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="gender" runat="server" ErrorMessage="Please choose the gender" ForeColor="Red"></asp:RequiredFieldValidator>

												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Date of Birth</label>
													<div>
                                                        <asp:TextBox ID="dob" runat="server" type="date" CssClass="form-control" ></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="dob" runat="server"  ErrorMessage="Please choose data" ForeColor="Red"></asp:RequiredFieldValidator>

													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													Department
													 <asp:TextBox ID="department" runat="server" CssClass="form-control" ></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="department" runat="server"  ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Joining Date</label>
													<div>
														  <asp:TextBox ID="joindate" runat="server" type="date" CssClass="form-control" ></asp:TextBox>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="joindate" runat="server"  ErrorMessage="Please choose join date" ForeColor="Red"></asp:RequiredFieldValidator>
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Mobile Number</label>
													 <asp:TextBox ID="number" runat="server" CssClass="form-control" ></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="number" runat="server"  ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Address</label>
													 <asp:TextBox ID="address" runat="server" CssClass="form-control" ></asp:TextBox>
														<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="address" runat="server"  ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Student Image</label> 
                                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"  />
														<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="FileUpload1" runat="server"  ErrorMessage="Please choose Image" ForeColor="Red"></asp:RequiredFieldValidator>
											</div></div>
											
											<div class="col-12">
												<h5 class="form-title"><span>Parent Information</span></h5>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Parent Name</label>
													 <asp:TextBox ID="pname" runat="server" CssClass="form-control" ></asp:TextBox>
												<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="pname" runat="server"  ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>


												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Parent Mobile</label>
													 <asp:TextBox ID="pmobile" runat="server" CssClass="form-control" ></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="pmobile" runat="server"  ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>

												</div>
											</div>
											<div class="col-12">
                                                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_Click" />

											</div>
									</form>
								</div>
							</div>							
						</div>					
					</div>					
				</div>				
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
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
    </body>
</html>