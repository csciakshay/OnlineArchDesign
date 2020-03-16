<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login2.aspx.vb" Inherits="login2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/work-2.jpg" alt="" style="height: 450px">
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							login
						</h1>
						<p class="pt-20">
							If you are looking at best interior please login here.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="register.aspx">login</a>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->
    <section class="sample-text-area">
    <div class="container">
        <div class="section-top-border">
				<div class="row">
					 <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <h2>
                            Sign In
                        </h2>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
    <div class="row">
        <div class="col-md-4"></div>
            <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="username "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textname" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textname" runat="server" class="single-input"></asp:TextBox>
                         </div>
        <div class="col-md-4"></div>
        </div>
                <div class="row">
                    <div class="col-md-4"></div>
                        <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textpass" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="Textpass" runat="server" class="single-input" TextMode="Password"></asp:TextBox>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
                <div class="row">
                    <div class="col-md-4"></div>
            <div class="col-md-4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="forgotpassword.aspx">Forgot Password?</asp:HyperLink>
                </div> 
                    <div class="col-md-4"></div>
                    </div>
            <div class="row">
                    <div class="col-md-4"></div>
            <div class="col-md-4">
               <center> <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info"/></center>
                </div> 
                    <div class="col-md-4"></div>
                    </div>
  </section> 
</asp:content>
