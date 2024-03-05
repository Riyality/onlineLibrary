<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Library - Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>

<!-- Favicon -->
<link rel="shortcut icon"
	href="<c:url value='/resources/assets/img/favicon.png'/>">


<!-- Fontfamily -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">

<!-- Feathericon CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/plugins/feather/feather.css"/>">

<!-- Pe7 CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/plugins/icons/flags/flags.css"/>">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/plugins/fontawesome/css/fontawesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/plugins/fontawesome/css/all.min.css"/>">

<!-- Main CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/style.css"/>">

</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header">

			<!-- Logo -->
			<div class="header-left">
				<a href="index.jsp" class="logo"> <h2> Online <span style="color: #3636abf0;">Library</span></h2>
				</a> <a href="index.html" class="logo logo-small"> <img
					src="<c:url value='/resources/assets/img/logo-small.png'/>"
					height="30" width="30" alt="Logo" />
				</a>
			</div>
			<!-- /Logo -->

			<div class="menu-toggle">
				<a href="javascript:void(0);" id="toggle_btn"> <i
					class="fas fa-bars"></i>
				</a>
			</div>

	
			<!-- Mobile Menu Toggle -->
			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i>
			</a>
			<!-- /Mobile Menu Toggle -->

			<!-- Header Right Menu -->
			<ul class="nav user-menu">
				<li class="nav-item dropdown noti-dropdown language-drop me-2">
					
					<div class="dropdown-menu">
						<a class="dropdown-item" href="javascript:;"><i
							class="flag flag-lr me-2"></i>English</a> <a class="dropdown-item"
							href="javascript:;"><i class="flag flag-bl me-2"></i>Francais</a>
						<a class="dropdown-item" href="javascript:;"><i
							class="flag flag-cn me-2"></i>Turkce</a>
					</div>
				</li>

				<!-- Notifications -->
				<li class="nav-item dropdown noti-dropdown me-2">
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="<c:url value='/resources/assets/img/profiles/avatar-02.jpg' />" />

											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Carlson Tech</span> has approved <span
														class="noti-title">your estimate</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
											</div>
										</div>
								</a>
								</li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="<c:url value='/resources/assets/img/profiles/avatar-11.jpg' />" />

											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">International Software Inc</span>
													has sent you a invoice in the amount of <span
														class="noti-title">$218</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="<c:url value='/resources/assets/img/profiles/avatar-17.jpg' />" />

											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">John Hendry</span> sent a
													cancellation request <span class="noti-title">Apple
														iPhone XR</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="media d-flex">
											<span class="avatar avatar-sm flex-shrink-0"> <img
												class="avatar-img rounded-circle" alt="User Image"
												src="<c:url value='/resources/assets/img/profiles/avatar-13.jpg' />" />

											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Mercury Software Inc</span> added
													a new product <span class="noti-title">Apple MacBook
														Pro</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="#">View all Notifications</a>
						</div>
					</div></li>
				<li class="nav-item zoom-screen me-2"><a href="#"
					class="nav-link header-nav-list win-maximize"
					onclick="maximizeWindow()"> <img
						src="<c:url value='/resources/assets/img/icons/header-icon-04.svg' />"
						alt="" />

				</a></li>



				<script>
					function maximizeWindow() {
						// You can add the logic here to maximize the window
						// For example, in pure JavaScript:
						if (document.body.requestFullscreen) {
							document.body.requestFullscreen();
						} else if (document.body.mozRequestFullScreen) {
							document.body.mozRequestFullScreen();
						} else if (document.body.webkitRequestFullscreen) {
							document.body.webkitRequestFullscreen();
						} else if (document.body.msRequestFullscreen) {
							document.body.msRequestFullscreen();
						}
					}
				</script>



				<!-- User Menu -->
				<li class="nav-item dropdown has-arrow new-user-menus"><a
					href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<div class="user-img">
							<img class="rounded-circle"
								src="<c:url value='/resources/assets/img/profiles/avatar-01.jpg' />"
								width="31" alt="Ryan Taylor">

							<div class="user-text">
								<h6>Admin</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div>
				</a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm">
								<img
									src="<c:url value='/resources/assets/img/profiles/avatar-01.jpg' />"
									alt="User Image" class="avatar-img rounded-circle" />

							</div>
							<div class="user-text">
								<h6>Ryan Taylor</h6>
								<p class="text-muted mb-0">Administrator</p>
							</div>
						</div class="dropdown-menu">
						<a class="dropdown-item" href="profile.jsp">My Profile</a> <a
							class="dropdown-item" href="inbox.jsp">Inbox</a> <a
							class="dropdown-item" href="/">Logout</a>
					</div></li>
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
						<li class="menu-title"><span>Main Menu</span></li>
						<li class="submenu active"><a href="login"><i
								class="feather-grid"></i> <span> Dashboard</span> </span></a></li>
						<li class="submenu dropdown"><a data-bs-toggle="dropdown"
							href="#"> <i class="fas fa-graduation-cap"></i> <span>
									Students</span> <span class="menu-arrow"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="students/list">List</a></li>
								<li><a href="students/add-form">Add</a></li>
								

							</ul></li>

						<li class="submenu dropdown"><a data-bs-toggle="dropdown"
							href="#"><i class="fas fa-chalkboard-teacher"></i> <span>
									Teachers</span> <span class="menu-arrow"></span></a>
							<ul class="dropdown-menu">
								<li><a href="teachers/list">List</a></li>
								<li><a href="teachers/add-form">Add</a></li>
								
							</ul></li>
						<li class="submenu dropdown"><a data-bs-toggle="dropdown"
							href="#"><i class="fas fa-book"></i> <span>Books</span>
								<span class="menu-arrow"></span></a>
							<ul class="dropdown-menu">
								<li><a href="books/add-form">Add Book</a></li>
								<li><a href="books/list"> View Books</a></li>
                                <li><a href="books/History">Book History</a></li>
							</ul></li>
								<li><a href="books/addBorrowForm"><i class="fas fa-book"></i> <span>Borrow Book</span></a>
						</li>
							
						<!-- <li class="submenu dropdown"><a data-bs-toggle="dropdown"
							href="#"><i class="fas fa-graduation-cap"></i> <span>BorrowBook</span>
							 <span class="menu-arrow"></span></a>
							<ul class="dropdown-menu">
								<li><a href="books/addBorrowForm">Add</a></li>

							</ul></li>
 -->						<li class="menu-title"><span>Management</span></li>


						<li><a href="library.jsp"><i class="fas fa-book"></i> <span>Library</span></a>
						</li>

						<li><a href="settings.jsp"><i class="fas fa-cog"></i> <span>Settings</span></a>
						</li>
						<li class="menu-title"><span>Pages</span></li>
						<li class="submenu"><a href="#" data-bs-toggle="dropdown">
								<i class="fas fa-shield-alt"></i> <span> Authentication </span>
								<span class="menu-arrow"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="/">Login</a></li>
								<li><a href="register.jsp">Register</a></li>
								<li><a href="forgot-password.jsp">Forgot Password</a></li>
								<li><a href="error-404.jsp">Error Page</a></li>
							</ul></li>


					</ul>
				</div>
			</div>
		</div>
		<!-- /Sidebar -->