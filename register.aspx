<%@ Page Language="VB"  MasterPageFile="~/MasterPage.master" AutoEventWireup="false"   CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="datepiker/css/foopicker.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<!--================ Banner Area =================-->
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
							Registration
						</h1>
						<p class="pt-20">
							If you are looking at best interior please register here.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="register.aspx">register</a>
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
                            Registration Form
                        </h2>
                        </div>
                    <div class="col-md-4"></div>
                    </div>
            <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="FirstName "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textname" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textname" runat="server" class="single-input"></asp:TextBox>
                         </div>
                        <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textlname" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="Textlname" runat="server" class="single-input"></asp:TextBox>
                        </div>
                 <div class="col-md-4">
                            <asp:Label ID="Label14" runat="server" Text="Birthdate"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbday" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textbday" runat="server"  class="single-input" ClientIDMode="Static"></asp:TextBox>
                            </div>
                </div> 
                <div class="row">
                        <div class="col-md-4">
                            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textcity" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textcity" runat="server"  class="single-input" TextMode="MultiLine"></asp:TextBox>
                        </div>
                 <div class="col-md-4">
                            <asp:Label ID="Label4" runat="server" Text="ContactNo"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textcontact" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textcontact" runat="server"  class="single-input" ></asp:TextBox>
                            </div>
                
             <div class="col-md-4">
                            <div class="single-element-widget">							
                        <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
							<div class="switch-wrap d-flex justify-content-between">
                                <asp:Label ID="Label15" runat="server" Text="Male"></asp:Label>								
								<div class="primary-radio">									
                                   <asp:RadioButton ID="Radiobtn1" runat="server" value="Male" ClientIDMode ="Static" GroupName="gender" Checked ="true" />
									<label for="Radiobtn1"></label>                                    
								</div>
                                
							</div>
                            <div class="switch-wrap d-flex justify-content-between">
                                <asp:Label ID="Label16" runat="server" Text="Female"></asp:Label>								
								<div class="primary-radio">		
                                    <asp:RadioButton ID="Radiobtn2" runat="server" value="Female" ClientIDMode ="Static" GroupName="gender"/>							
                                   	<label for="Radiobtn2"></label>                                    
								</div>
                                
							</div>
                        </div>
                              </div>
            </div> 
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <div class="row">
                 <div class="col-md-4">
                            <div class="single-element-widget">
                                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList3" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="default-select">
                            
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack ="true" class="form-control">
                             
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                <div class="col-md-4">
                            <div class="single-element-widget">
                                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="default-select">
                            
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack ="true" class="form-control">
                                
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                        <div class="col-md-4">
                            <div class="single-element-widget">
                                <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <div class="default-select">                            
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >   
                                    </asp:DropDownList>
                                </div>
                            </div>
                       </div>
                        
                       
                </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="row">
                        
                      <div class="col-md-6">
                            <asp:Label ID="Label11" runat="server" Text="Image"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:FileUpload ID="FileUpload1"  runat="server"  class="single-input" />
                            </div>
                       
                
            
                        <div class="col-md-6">
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Textemail" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textemail" runat="server"  class="single-input"></asp:TextBox>
                            </div>
                       
                      </div> 
              <div class="row">
                <div class="col-md-4">
                            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Textpass" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textpass" runat="server"  class="single-input" TextMode ="Password"></asp:TextBox>
                            </div>
                  <div class="col-md-4">
                            <asp:Label ID="Label7" runat="server" Text=" Re-enter Password"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Textrepass" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textrepass" runat="server"  class="single-input" TextMode ="Password"></asp:TextBox>
                            </div>
                  
            <div class="col-md-4">
                            <asp:Label ID="Label13" runat="server" Text="Register As"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownListUserType" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="DropDownListUserType" runat="server" class="form-control" Width="100%">
                                    <asp:ListItem Value="" Text ="Select Register As"></asp:ListItem>
                                    <asp:ListItem Value="Normal User" Text ="Normal User"></asp:ListItem>
                                    <asp:ListItem Value="Architech" Text ="Architech"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                  
                  </div> 
            <div class="row">
                 <div class="col-md-4"></div>
                            <div class="col-md-4">
                            <asp:Button ID="Submit" runat="server" Text="Submit" class="genric-btn primary circle" />
			
                    </div>
                 <div class="col-md-4"></div>       
                </div>
                    
        
            
        </section>
    <script type="text/javascript" src="datepiker/js/foopicker.js"></script>
    <script type="text/javascript">
        var foopicker = new FooPicker({
            id: 'Textbday',
            dateFormat: 'dd/MM/yyyy',
            disable: ['29/07/2017', '30/07/2017', '31/07/2017', '01/08/2017']
        });
        
  </script>
</asp:Content>

