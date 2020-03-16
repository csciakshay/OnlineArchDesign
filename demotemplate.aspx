﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="demotemplate.aspx.vb" Inherits="demotemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Loaft Interior</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="loaft/css/bootstrap.css">
	<link rel="stylesheet" href="loaft/vendors/linericon/style.css">
	<link rel="stylesheet" href="loaft/css/font-awesome.min.css">
	<link rel="stylesheet" href="loaft/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="loaft/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="loaft/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="loaft/vendors/popup/magnific-popup.css">
	<link rel="stylesheet" href="loaft/vendors/swiper/css/swiper.min.css">
	<link rel="stylesheet" href="loaft/vendors/scroll/jquery.mCustomScrollbar.css">
	<!-- main css -->
	<link rel="stylesheet" href="loaft/css/style.css">
</head>
<body>
    <!-- ================Offcanvus Menu Area =================-->
	<div class="side_menu">
		<ul class="list menu_right">
			<li>
				<a href="index.html">Home</a>
			</li>
			<li>
				<a href="about-us.html">About</a>
			</li>
			<li>
				<a href="#">Works</a>
				<ul class="list">
					<li>
						<a href="project.html">Project</a>
					</li>
					<li>
						<a href="project-details.html">Project Details</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="service.html">Service</a>
			</li>
			<li>
				<a href="#">Pages</a>
				<ul class="list">
					<li>
						<a href="elements.html">Elements</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">Blog</a>
				<ul class="list">
					<li>
						<a href="blog.html">Blog</a>
					</li>
					<li>
						<a href="single-blog.html">Blog Details</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="contact.html">Contact</a>
			</li>
		</ul>
	</div>
	<!--================End Offcanvus Menu Area =================-->

	<!--================Header Menu Area =================-->
	<header class="header_area home_menu">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active">
								<a class="nav-link" href="index.html">Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="about-us.html">About</a>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item">
										<a class="nav-link" href="elements.html">Elements</a>
									</li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item">
										<a class="nav-link" href="blog.html">Blog</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="single-blog.html">Blog Details</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="contact.html">Contact</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->

	<!--================Canvus Menu Area =================-->
	<div class="canvus_menu">
		<div class="container">
			<div class="float-right">
				<div class="toggle_icon" title="Menu Bar">
					<span></span>
				</div>
			</div>
		</div>
	</div>
	<!--================End Canvus Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						
        <img class="img-fluid w-100" src="/loaft/img/banner/common-banner.jpg" alt="" style="height: 450px">
					</div>
				</div>

				<div class="header-right col-lg-4">
					<h1>
						Element
					</h1>
					<p class="pt-20">
						If you are looking at blank cassettes on the web, you may be very confused at the difference in price.
					</p>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="elements.html">Element</a>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

<section class="sample-text-area">
		<div class="container">
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12 col-md-12">
            <h3 class="mb-30 title_color">Form Element</h3>
		<div class="mt-4">
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="single-input"></asp:TextBox>
                        </div>
            <div class="mt-4">
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" class="single-input"></asp:TextBox>
                        </div>
            <div class="mt-4">
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" class="single-input"></asp:TextBox>
                        </div>
                </div>
            </div>
    </form>
            </div>
	</section>
    <!--================ start footer Area  =================-->
	<footer class="footer_area section_gap">
		<div class="container">
			<div class="row footer_inner">
				<div class="col-lg-5 col-sm-6">
					<aside class="f_widget ab_widget">
						<div class="f_title">
							<h3>About Me</h3>
						</div>
						<p>Do you want to be even more successful? Learn to love learning and growth. The more effort you put into
							improving your skills,</p>
						<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
					</aside>
				</div>
				<div class="col-lg-5 col-sm-6">
					<aside class="f_widget news_widget">
						<div class="f_title">
							<h3>Newsletter</h3>
						</div>
						<p>Stay updated with our latest trends</p>
						<div id="mc_embed_signup">
							<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="subscribe_form relative">
								<div class="input-group d-flex flex-row">
									<input name="EMAIL" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '"
									 required="" type="email">
									<button class="btn sub-btn"><span class="lnr lnr-arrow-right"></span></button>
								</div>
								<div class="mt-10 info"></div>
							</form>
						</div>
					</aside>
				</div>
				<div class="col-lg-2">
					<aside class="f_widget social_widget">
						<div class="f_title">
							<h3>Follow Me</h3>
						</div>
						<p>Let us be social</p>
						<ul class="list">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</aside>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="loaft/js/jquery-3.2.1.min.js"></script>
	<script src="loaft/js/popper.js"></script>
	<script src="loaft/js/bootstrap.min.js"></script>
	<script src="loaft/js/stellar.js"></script>
	<script src="loaft/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="loaft/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="loaft/vendors/isotope/isotope-min.js"></script>
	<script src="loaft/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="loaft/js/jquery.ajaxchimp.min.js"></script>
	<script src="loaft/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="loaft/vendors/counter-up/jquery.counterup.js"></script>
	<script src="loaft/js/mail-script.js"></script>
	<script src="loaft/vendors/popup/jquery.magnific-popup.min.js"></script>
	<script src="loaft/vendors/swiper/js/swiper.min.js"></script>
	<script src="loaft/vendors/scroll/jquery.mCustomScrollbar.js"></script>
	<script src="loaft/js/theme.js"></script>
</body>
</html>
