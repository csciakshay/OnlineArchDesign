<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="sample-text-area">
		<div class="container">
    <div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
                        <div class="mt-10">
        <asp:Label ID="Label1" runat="server" Text="First Name "></asp:Label>
        <asp:TextBox ID="Textname" runat="server" class="single-input"></asp:TextBox>
                            </div>
                        <div class="mt-10">
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="Textlname" runat="server" class="single-input"></asp:TextBox>
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="Textcity" runat="server"  class="single-input" TextMode="MultiLine"></asp:TextBox>
                                 </div>
                        <div class="mt-12">
                            
                            <div class="single-element-widget">
                                <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                                <div class="default-select">                            
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Ahmedabad</asp:ListItem>
                                <asp:ListItem>Baroda</asp:ListItem>
                                <asp:ListItem>Bharuch</asp:ListItem>
                                <asp:ListItem>Surat</asp:ListItem>
                                <asp:ListItem>Mumbai</asp:ListItem>
                                <asp:ListItem>Delhi</asp:ListItem>
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                        <div class="mt-12">
                            <div class="single-element-widget">
                                <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                            <div class="default-select">
                            
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Gujarat</asp:ListItem>
                                <asp:ListItem>Maharastra</asp:ListItem>
                                <asp:ListItem>Madhyapradesh</asp:ListItem>
                                <asp:ListItem>Rajasthan</asp:ListItem>
                                <asp:ListItem>Zarkhand</asp:ListItem>
                                <asp:ListItem>Andhraprdesh</asp:ListItem>
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                        <div class="mt-12">
                            <div class="single-element-widget">
                                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
                            <div class="default-select">
                            
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Shrilanka</asp:ListItem>
                                <asp:ListItem>Banglore</asp:ListItem>
                            </asp:DropDownList>
                                </div>
                                </div>
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label12" runat="server" Text="ContactNo"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label11" runat="server" Text="Image"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label4" runat="server" Text="Birthdate"></asp:Label>
                            <asp:TextBox ID="Textbday" runat="server"  class="single-input"></asp:TextBox>
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="Textemail" runat="server"  class="single-input"></asp:TextBox>
                            </div>
                        <div class="mt-10">
                            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="Textpass" runat="server"  class="single-input"></asp:TextBox>
                            </div>
                        <div class="mt-10">
                            <div class="single-element-widget">
							
							<div class="switch-wrap d-flex justify-content-between">
								<asp:Label ID="Label13" runat="server" Text="male"></asp:Label>
								<div class="primary-radio">
                                    <asp:RadioButton ID="Male" runat="server"  checked="true" GroupName ="gender" ClientIDMode="Static"/>  
                                <label for="Male"></label> 
									
								</div>
							</div>  
                                <div class="switch-wrap d-flex justify-content-between">
                                <asp:Label ID="Label7" runat="server" Text="female"></asp:Label>
                            <div class="primary-radio">                             
                            <asp:RadioButton ID="Female" runat="server"  GroupName ="gender"  ClientIDMode="Static"/>
                                <label for="Female"></label> 
                                </div>
                            </div>                                                                                 
                            
                                </div>
                              
                            <div class="button-group-area mt-40">
                            <asp:Button ID="Submit" runat="server" Text="Submit" class="genric-btn primary circle" />
			
                    </div>
                        </div>
                    </div>
        </div>
            </div>
        </section>
</asp:Content>

