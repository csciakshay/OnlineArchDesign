<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="customise.aspx.vb" Inherits="costmize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/bed7.jpg"  alt="" >
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							Design
						</h1>
						<p class="pt-20">
							If you are looking at best interior please customise perfect design here.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="home.aspx">Home</a>
					<a href="customise.aspx">customise</a>
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
                          customise Design
                        </h2>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
           <div class="row">
                <div class="col-md-4 ">
                    <asp:Label ID="Label1" runat="server" Text="InteriorName "></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textname" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textname" runat="server" class="single-input" ClientIDMode="Static" ></asp:TextBox>
                    </div>
               <div class="col-md-4">
                            <asp:Label ID="Label14" runat="server" Text="Size"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textsize" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textsize" runat="server" class="single-input" ClientIDMode="Static" ></asp:TextBox>
                            
                            </div>
               <div class="col-md-4">
                             <asp:Label ID="Label3" runat="server" Text="material"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textmat" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textmat" runat="server"  class="single-input" TextMode ="singleline"></asp:TextBox>
                            </div>
           </div>
             <div class="row">
                 <div class="col-md-6">
                             <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textprice" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textprice" runat="server"  class="single-input" TextMode ="Number"></asp:TextBox>
                            </div>
                   
                  <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Color"></asp:Label>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                       <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                       <asp:ListItem>Brown</asp:ListItem>
                       <asp:ListItem>Grey</asp:ListItem>
                       <asp:ListItem>Green</asp:ListItem>
                       <asp:ListItem>Blue</asp:ListItem>
                       <asp:ListItem>Yellow</asp:ListItem>
                       <asp:ListItem>Pink</asp:ListItem>
                       <asp:ListItem>White</asp:ListItem>
                       <asp:ListItem>OliveGreen</asp:ListItem>
                       <asp:ListItem>Orange</asp:ListItem>
                   </asp:CheckBoxList>
                        </div>
                 </div>
             <div class="row">
                 <div class="col-md-4"></div>
                            <div class="col-md-4">
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="genric-btn primary circle" />
                                </div>
                 </div>

</div>
        </div>
        </section>
</asp:Content>

