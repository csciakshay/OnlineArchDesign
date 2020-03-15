<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Designdetail.aspx.vb" Inherits="Designdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/sofa2.jpg"  alt="" >
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
					 <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <h2>
                          Design Information
                        </h2>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <div class="row">
                <div class="col-md-2"></div>
                        <div class="col-md-2">
                            <asp:Label ID="Label0" runat="server" Text="ID "></asp:Label></div>
                            <div class="col-md-4"> 
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" AutoPostBack="True"></asp:DropDownList>
    
                            </div>
                            <div class="col-md-4"></div>
                            </div>
            <hr />
            <div class="row">
            <div class="col-md-4 ">
                            <asp:Label ID="Label1" runat="server" Text="InteriorName "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textname" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textname" runat="server" class="single-input" ClientIDMode="Static" ></asp:TextBox>
                         </div> 
                        <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="InteriorType"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Dropdownlist1" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div class="default-select">                            
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control ">   
                                    </asp:DropDownList>
                                </div>
                        </div>
                 <div class="col-md-4">
                            <asp:Label ID="Label14" runat="server" Text="Size"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textsize" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textsize" runat="server"  class="single-input" ClientIDMode="Static"></asp:TextBox>
                            </div>
                </div> 
          

                <div class="row">
                      <div class="col-md-3">
                            <asp:Label ID="Label11" runat="server" Text="Image"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:FileUpload ID="FileUpload1"  runat="server"  class="single-input" AllowMultiple="True" />
                          </div>
                    <div class="col-md-3">
                          <asp:Image ID="Image1" runat="server" width="70" Height="50" Visible ="false" />
                            </div>
                    
                        <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" Text="Color"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textcolor" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textcolor" runat="server"  class="single-input" TextMode="singleLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class ="row">
                 <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textprice" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textprice" runat="server"  class="single-input" TextMode ="Number"></asp:TextBox>
                            </div>
                 <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textdes" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textdes" runat="server"  class="single-input" ></asp:TextBox>
                            </div>
                             </div>
         </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <div class="row">
                 <div class="col-md-4"></div>
                            <div class="col-md-4">
                            <asp:Button ID="Button1" runat="server" Text="Submit" class="genric-btn primary circle" />
			 <asp:Button ID="Button2" runat="server"  class="genric-btn success circle" Text="Update" />
    <asp:Button ID="Button3" runat="server"  class="genric-btn danger circle" Text="Delete" />
                    </div>
                 <div class="col-md-4"></div>       
                </div>
                    </div>
        </div>
                </section> 
        
</asp:Content>

