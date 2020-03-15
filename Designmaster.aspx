<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Designmaster.aspx.vb" Inherits="Design2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/home_details.png" alt="" >
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							DESIGN
						</h1>
						<p class="pt-20">
							choose the Design.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="Designdetail.aspx">Designdetail</a>
				</div>
			</div>
		</div>
	</section>
	
    <section class="sample-text-area">
		<div class="container">
    <div class="section-top-border">
				<div class="row">
					<div class="col-md-4"></div>
                    <div class="col-md-4">
                            <h1>
                                Designs Master
                            </h1>
        </div>
                    <div class="col-md-4"></div>
             </div>       
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="Label0" runat="server" Text="ID "></asp:Label></div>
                            <div class="col-md-4"> 
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
    
                            </div>
                            <div class="col-md-4"></div>
                            </div>
            <hr />
    
                       
<div class="row">
            <div class="col-md-6">
        <asp:Label ID="Label2" runat="server" Text="Design Name "></asp:Label>
        <asp:TextBox ID="Textdesign" runat="server" class="single-input"></asp:TextBox>
                </div> 
    <div class="col-md-6 ">
    <asp:Label ID="Label1" runat="server" Text="Specification "></asp:Label>
        <asp:TextBox ID="Textspe" runat="server" class="single-input" Rows="3"></asp:TextBox>
    </div> 
                            </div>
                        
                         </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <div class="row">
                 <div class="col-md-4"></div>
                            <div class="col-md-4">
                       <div class="button-group-area mt-40">
    <asp:Button ID="Button2" runat="server"  class="genric-btn success circle" Text="Update" />
    <asp:Button ID="Button3" runat="server"  class="genric-btn danger circle" Text="Delete" />
    <asp:Button ID="Button1" runat="server"  class="genric-btn primary circle" Text="Submit" />
                            </div>
                        
                            </div> 
                <div class="col-md-4"></div>
                         </div>
                        </div> 
                     
        </div> 
            
     </section>

</asp:Content>

