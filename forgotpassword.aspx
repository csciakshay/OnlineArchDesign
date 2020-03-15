<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forgotpassword.aspx.vb" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/work-2.jpg" alt="" >
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
                            Forgot password
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
                                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textmail" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="Textmail" runat="server" class="single-input"></asp:TextBox>
                        </div>
                    
                    <div class="col-md-4"></div>
                    </div><br />
        <div class="row">
                    <div class="col-md-4"></div>
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <asp:Button ID="Button1" runat="server" Text="submit" class="btn btn-info"/>
                </div> 
            <div class="col-md-1"></div>
                    <div class="col-md-4"></div>
                    </div>
    </div>

        </section> 
</asp:content>