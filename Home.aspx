<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/maxresdefault.jpg" alt="" style="height: 450px">
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							Home
						</h1>
						<p class="pt-20">
							If you are looking at best interior please choose perfect design here.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="Designdetail.aspx">About</a>
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
                        <h2 >
                            Designs
                        </h2>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
            
                     <div class="row">
                        <div class="col-md-3">
                            <div class="single-element-widget">
                                <asp:Label ID="Label10" runat="server" Text="Interior Type"></asp:Label>
                                <div class="default-select">
                                 <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control">
                                </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                         <div class="col-md-3">
<div class="single-element-widget">
                                <asp:Label ID="Label1" runat="server" Text="Architect Name"></asp:Label>
                               
                            <div class="default-select">
 <asp:DropDownList ID="DropDownList2" runat="server"  class="form-control">
                             
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                         <div class="col-md-3">
<div class="single-element-widget">
                                <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                                
                            <div class="default-select">
 <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                             
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                        
                    
                            <div class="col-md-3">
                            <asp:Button ID="Submit" runat="server" Text="Search" class="genric-btn primary circle" />
			  </div>
                         
                    </div>
                    <hr />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <center><h2>Attractive Interior Designs</h2></center>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                    <div class="row" aria-orientation="horizontal">
                        <div class="col-md-12">
                            
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="100%" RepeatDirection="Horizontal">
                        <ItemTemplate>
                           <center> <asp:Image ID="Image1" runat="server" ImageUrl ='<%# Eval("Image") %>' Width ="400" Height ="300"/></center>
                            <br />
                             
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                            <br />
                            <%--Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />--%>
                            <b>Interior Name:</b>
                            <asp:Label ID="InteriorNameLabel" runat="server" Text='<%# Eval("InteriorName") %>' />
                            <br />
                            <%--Size:
                            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                            <br />
                            Color:
                            <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                            <br />--%>
                            <b>Price:</b>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                            <br />
                            <b>Interior Type:</b>
                            <asp:Label ID="InteriorTypeLabel" runat="server" Text='<%# Eval("design_nm") %>' />
                            <br />
                           
                            <asp:LinkButton ID="LinkButton1" runat="server" href='<%# Eval("id", "Ardtlview.aspx?id={0}") %>'>View</asp:LinkButton>
                            <br />
                        </ItemTemplate>
                     </asp:DataList>

                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT a.id,a.InteriorName,a.Price,a.Description,b.design_nm,a.Image FROM Interior a left join Design b on b.id=a.InteriorType"></asp:SqlDataSource>
                        </div>
                         </div>
                    
                     <hr />
                    
                    
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <center><h2>Our Architects</h2></center>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                    <div class ="row">
                         <div class="col-md-12">
                             <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2" RepeatColumns="3" Width="100%" RepeatDirection="Horizontal">
                                 <ItemTemplate>
                                 <center>   <asp:Image Id="Image2" ImageUrl='<%# Eval("Image") %>' runat="server" Width ="100" Height ="100" style="border-radius :50%" /></center> <br />
                                      <%--Id:
                                     '<asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />--%>
                                    <%--  FirstName:--%>
                                   <center>  <asp:Label Text='<%# Eval("FirstName ")%>' runat="server" ID="FirstNameLabel" />
                                   <%-- LastName:--%>
                                     <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></center><br />
                                     <%-- Birthdate:
                                     <asp:Label Text='<%# Eval("Birthdate") %>' runat="server" ID="BirthdateLabel" /><br />
                                     City:
                                     <asp:Label Text='<%# Eval("City") %>' runat="server" ID="CityLabel" /><br />
                                     address:
                                     <asp:Label Text='<%# Eval("address") %>' runat="server" ID="addressLabel" /><br />
                                     State:
                                     <asp:Label Text='<%# Eval("State") %>' runat="server" ID="StateLabel" /><br />
                                     Country:
                                     <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="CountryLabel" /><br />
                                     Gender:
                                     <asp:Label Text='<%# Eval("Gender") %>' runat="server" ID="GenderLabel" /><br />
                                     Email:
                                     <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /><br />
                                     Password:
                                     <asp:Label Text='<%# Eval("Password") %>' runat="server" ID="PasswordLabel" /><br />--%>
                                    <%--  Image:--%>
                                    
                                      <%--ContactNo:
                                     <asp:Label Text='<%# Eval("ContactNo") %>' runat="server" ID="ContactNoLabel" /><br />
                                     UserType:
                                     <asp:Label Text='<%# Eval("UserType") %>' runat="server" ID="UserTypeLabel" />
                                     <br />
                                     UserRole: 
                            <asp:Label ID="UserRoleLabel" runat="server" Text='<%# Eval("UserRole") %>' />--%>
                                     <br />
                                     <br />
                                 </ItemTemplate>
                             </asp:DataList>
                             <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [register] where usertype='Architech'"></asp:SqlDataSource>
                         </div>
            </div>
                   
                </ContentTemplate>
            </asp:UpdatePanel>
            </div>
        </div>
        <div class="row">
            <div class ="col-md-4"></div>
            <div class="col-md-4">
                <div class="counter_area" id="project_counter">
                    <!-- single counter -->
                    <div class="single_counter">
                        <div class="thumb">
                            <img src="img/project/count1.png" alt="">
                        </div>
                        <div class="info-content">
                            <h4><span class="counter">1990</span></h4>
                            <p>Projects done</p>
                        </div>
                    </div>
                    <!-- single counter -->
                    <div class="single_counter">
                        <div class="thumb">
                            <img src="img/project/count2.png" alt="">
                        </div>
                        <div class="info-content">
                            <h4><span class="counter">50</span>+</h4>
                            <p>Expert Members</p>
                        </div>
                    </div>
                    <!-- single counter -->
                    <div class="single_counter">
                        <div class="thumb">
                            <img src="img/project/count3.png" alt="">
                        </div>
                        <div class="info-content">
                            <h4><span class="counter">25</span>+</h4>
                            <p>Achievements</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
      
        
           </section> 
                          


</asp:Content>

