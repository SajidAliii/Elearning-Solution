<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fingerprint.aspx.cs" Inherits="fingerprint" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>SJ International - Login</title>
		
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
    <body><form runat="server">
	
                                            <asp:Button  ID="Button1" runat="server"  OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" />
	
		<!-- Main Wrapper -->
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
            	<div class="container">
                	<div class="loginbox">
                    	<div class="login-left">
							<img class="img-fluid" src="assets/img/logo-small.png" alt="Logo"></div>
                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>Fingerprint Login</h1>
								<p class="account-subtitle">Please place your fingerprint</p>
								
								<!-- Form -->
								
									<div class="form-group">

                                        <asp:TextBox CssClass="form-control" ID="Name" placeholder="Email" runat="server" ></asp:TextBox>
									</div>
									<div class="form-group">
                                        <asp:TextBox ID="Password" type="password" runat="server" class="form-control" placeholder="Password"></asp:TextBox></div>
									 <div>&nbsp;</div>
									<div class="form-group">
									    <div class="form-group">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label>
                                        </div>
									</div>

                                    </form>
								<!-- /Form -->
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.5.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
		
    </body>
</html>