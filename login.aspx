<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="/loaft/img/banner/common-banner.jpg" alt="">
					</div>
				</div>

				<div class="header-right col-lg-4">
					<h1>
						Registration
					</h1>
					<p class="pt-20">
						If you are looking for attractive interior design please register here.
					</p>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="Registration.aspx">Registration</a>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

<section class="sample-text-area">
		<div class="container">
             <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h3 class="mb-30 title_color">Design Registration Form</h3>
                </div>
             </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                    <asp:TextBox ID="txtuserName" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password" Class="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
              </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="Button1" runat="server" Text="Login" class="genric-btn primary"/>
                </div>
                <div class="col-md-4"></div>
              </div>
          </div>
    </section>
</asp:Content>

