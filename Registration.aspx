<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

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
            <h3 class="mb-30 title_color">Form Element</h3>
		<div class="mt-4">
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="single-input"></asp:TextBox>
                        </div>
            <div class="mt-4">
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" class="single-input"></asp:TextBox>
                        </div>
            <div class="mt-4">
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server" class="single-input"></asp:TextBox>
                        </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12">
                <div class="mt-4">
       
       <div class="single-element-widget">
                    <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
                    <div class="default-select">
                    <asp:DropDownList ID="ddlCity" runat="server">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>Bharuch</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Vadodara</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        </div>
                        </div>
               
            <div class="mt-4">
        
       <div class="single-element-widget">
                    <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
                    <div class="default-select" >
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Utterpradesh</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        </div>
                        </div>
            <div class="mt-4">
                    <div class="single-element-widget">
                    <asp:Label ID="Label5" runat="server" Text="Country"></asp:Label>
                    <div class="default-select" id="default-select">
                    <asp:DropDownList ID="ddlCountry" runat="server">
                        <asp:ListItem>Select Item</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Unitaed State</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        </div>
                </div>
                <div class="mt-4">
                    <div class="single-element-widget">							
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
							<div class="switch-wrap d-flex justify-content-between">								
								<div class="primary-radio">									
                                   <asp:RadioButton ID="RadioButton1" runat="server" value="Male" ClientIDMode ="Static" GroupName="gender" Checked ="true" />
									<label for="RadioButton1"></label>                                    
								</div>
                                <p>Male</p>
							</div>
                            <div class="switch-wrap d-flex justify-content-between">								
								<div class="primary-radio">		
                                    <asp:RadioButton ID="RadioButton2" runat="server" value="Female" ClientIDMode ="Static" GroupName="gender"/>							
                                   
									<label for="RadioButton2"></label>                                    
								</div>
                                <p>Female</p>
							</div>
                        </div>
                </div>
                </div>
                </div>
    <div class ="row">
                      <div class="col-lg-12 col-md-12">          
                <div class="mt-4">
                     <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" class="single-input"></asp:TextBox>
                    </div>
         <div class="mt-4">
                     <asp:Label ID="Label7" runat="server" Text="Contact"></asp:Label>
        <asp:TextBox ID="txtContact" runat="server" class="single-input"></asp:TextBox>
                    </div>
                          </div>
            </div>
            <div class="row">
                 <div class="col-lg-12 col-md-6">      
                <div class="mt-6">
                    <asp:Label ID="Label10" runat="server" Text="Photo"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />

                </div>
                     <div class="mt-6">
                         <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" class="single-input" TextMode ="Password" ></asp:TextBox>
                     </div>
                     </div>
            </div>
            <div class="row">
                <div class="mt-10">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="genric-btn success" />
                   

                </div>
            </div>
        </div>
	</section>
</asp:Content>

