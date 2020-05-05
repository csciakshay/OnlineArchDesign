<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Ardtlview.aspx.vb" Inherits="Ardtlview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <!-- demo.css contains additional styles used to set up this demo page - not required for the slider -->
    <link rel="stylesheet" href="css/slider/demo.css">
     <link rel="stylesheet" href="css/slider/bjqs.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/slider/bjqs-1.3.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/bg_2.jpg" alt="" >
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							Design
						</h1>
						<p class="pt-20">
							If you are looking at best interior please choose perfect design here.
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
	<!--================End Banner Area =================-->
    <section class="sample-text-area">
        
    <div class="container">
        <div class="section-top-border">
				<div class="row">
					 <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <h2>
                          Design Detail View
                        </h2>
                        </div>
                    <div class="col-md-1"></div>
                    </div>
            </div>
        <div id="container">
       <!--  Outer wrapper for presentation only, this can be anything you like -->
    <div id="banner-fade">

        <!-- start Basic Jquery Slider -->
        <ul class="bjqs">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <li>
                        <img src='<%# DataBinder.Eval(Container.DataItem,"Value") %>' title='<%# (DataBinder.Eval(Container.DataItem, "Text").ToString())%>'
                            alt=""></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <!-- end Basic jQuery Slider -->

    </div>
    <!-- End outer wrapper -->

    <script class="secret-source" style="display: none;">
        jQuery(document).ready(function ($) {

            $('#banner-fade').bjqs({
                height: 420,
                width: 820,
                responsive: true
            });

        });
      </script>
        </div>
    <script src="js/slider/libs/jquery.secret-source.min.js"></script>
    <script>
        jQuery(function ($) {

            $('.secret-source').secretSource({
                includeTag: false
            });

        });
    </script>
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
           <div class="row">
                        <div class="col-md-4">
                           <b> <asp:Label ID="Label0" runat="server" Text="InteriorName:"></asp:Label>   </b>                         
                            &nbsp;&nbsp; <asp:Label ID="namelbl" runat="server" Text=""></asp:Label>
                            </div>
                 <div class="col-md-4">
                           <b> <asp:Label ID="Label1" runat="server" Text="Price: "></asp:Label></b>
                               &nbsp;&nbsp; <asp:Label ID="pricelbl" runat="server" Text=""></asp:Label>  
                            </div>
                     <div class="col-md-4">
                            <b><asp:Label ID="Label4" runat="server" Text="InteriorType: "></asp:Label></b>
                           &nbsp;&nbsp; <asp:Label ID="typelbl" runat="server" Text=""></asp:Label>  
                         
                            </div>
               </div>
                    <div class="row">
                     <div class="col-md-4">
                           <b> <asp:Label ID="Label5" runat="server" Text="Color:"></asp:Label></b> 
                               &nbsp;&nbsp; <asp:Label ID="colorlbl" runat="server" Text=""></asp:Label>  
                            </div>
                     <div class="col-md-4">
                            <b><asp:Label ID="Label6" runat="server" Text="Size: "></asp:Label></b>
                                &nbsp;&nbsp; <asp:Label ID="sizelbl" runat="server" Text="InteriorName"></asp:Label>  
                            </div>
                     <div class="col-md-4">
                           <b> <asp:Label ID="Label7" runat="server" Text="RegisterBy: "></asp:Label> </b>
                                  &nbsp;&nbsp; <asp:Label ID="reglbl" runat="server" Text=""></asp:Label>  
                            </div>
                        </div>
                    <div class="row">
                 <div class="col-md-12">
                          <b> <asp:Label ID="Label2" runat="server" Text="Description: "></asp:Label></b> 
                               &nbsp;&nbsp; <asp:Label ID="deslbl" runat="server" Text=""></asp:Label>     
                            </div>
                    </div>
                    <br />
                    
                   <div class="row">
                       <div class="col-md-2"><b> <asp:Label ID="Label3" runat="server" Text="Material: "></asp:Label></b></div>
                 <div class="col-md-9">
                     <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                         <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                         <EditRowStyle BackColor="#999999"></EditRowStyle>

                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                         <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                         <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                         <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                         <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                         <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                     </asp:GridView>
                     </div>
                       <div class="col-md-1"></div>
                       </div>

                    </div>
                    <br>
                    </br>
                     </ContentTemplate>
                </asp:UpdatePanel>
           <div class="row">
                 <div class="col-md-4"></div>
                            <div class="col-md-4">
                            <asp:Button ID="Button1" runat="server" Text="Back" class="genric-btn primary circle" />
			 <asp:Button ID="Button2" runat="server"  class="genric-btn success circle" Text="Like" />
    <asp:Button ID="Button3" runat="server"  class="genric-btn primary circle" Text="Payment" />
                    </div>
                 <div class="col-md-4"></div>       
                </div>
                    </div>
        </section>



</asp:Content>

