<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="DesignRegister.aspx.vb" Inherits="DesignRegister" %>

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
                <div class="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem>Home</asp:ListItem>
                        <asp:ListItem>BedRoom</asp:ListItem>
                        <asp:ListItem>Kitchen</asp:ListItem>
                        <asp:ListItem>WashArea</asp:ListItem>
                        <asp:ListItem>Saloon</asp:ListItem>
                        <asp:ListItem>Office</asp:ListItem>
                        <asp:ListItem>Gym</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                    <asp:TextBox ID="TxtTitle" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                    <asp:TextBox ID="TxtDesc" runat="server" Class="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="DesignBy"></asp:Label>
                    <asp:TextBox ID="TxtDesignBy" runat="server" Class="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-4">
                    <asp:Label ID="Label5" runat="server" Text="Estimate Amount"></asp:Label>
                    <asp:TextBox ID="TxtEstimateAmt" runat="server" Class="form-control" TextMode="Number"></asp:TextBox>
                </div>
                <div class="col-md-4">
                    <asp:Label ID="Label6" runat="server" Text="Material Required"></asp:Label>
                    <asp:TextBox ID="TxtMaterialUsed" runat="server" Class="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    Upload Images
                </div>
                <div class="col-md-4">
                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" class="genric-btn info"/>
                </div>
                <div class="col-md-4">
                    
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="genric-btn success" />
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </section>
</asp:Content>

