<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

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
                    <h3 class="mb-30 title_color">Designs</h3>
                </div>
             </div>
            <div class="row">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" BorderColor="Blue" RepeatColumns="4" 
                            GridLines="Both" CellPadding="4">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("images") %>' Width ="100px" Height="100px" />
                        Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Category:
                        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                        <br />
                        title:
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                        <br />
                        description:
                        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        astimate:
                        <asp:Label ID="astimateLabel" runat="server" Text='<%# Eval("astimate") %>' />
                        <br />
                        designBy:
                        <asp:Label ID="designByLabel" runat="server" Text='<%# Eval("designBy") %>' />
                        <br />
                        publishDate:
                        <asp:Label ID="publishDateLabel" runat="server" Text='<%# Eval("publishDate") %>' />
                        <br />
                        materialUsed:
                        <asp:Label ID="materialUsedLabel" runat="server" Text='<%# Eval("materialUsed") %>' />
                        <br />
                        addBy:
                        <asp:Label ID="addByLabel" runat="server" Text='<%# Eval("addBy") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ardesignMaster]"></asp:SqlDataSource>
                </div>
            </div>
    </section>
</asp:Content>

