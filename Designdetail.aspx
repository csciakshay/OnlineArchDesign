<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Designdetail.aspx.vb" Inherits="Designdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: #303933;}
.headerstyle
{
color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;background-color: #4cd3e3;padding:0.5em 0.5em 0.5em 0.5em;text-align:center;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--================ Banner Area =================-->
	<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/sofa2.jpg"  alt="" style="height:450px">
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
                            <asp:TextBox ID="Textname" runat="server" class="single-input"></asp:TextBox>
                            <asp:TextBox ID="TextId" runat="server" Visible="false" ></asp:TextBox>
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
                 <div class="col-md-4">
                            <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textprice" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textprice" runat="server"  class="single-input" TextMode ="Number"></asp:TextBox>
                            </div>
                 <div class="col-md-8">
                            <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Textdes" ErrorMessage="!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Textdes" runat="server"  class="single-input" ></asp:TextBox>
                            </div>
                             </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="Label6" runat="server" Text="Material used"></asp:Label>
                            </div>
                        <div class="col-md-10">
                            <div class="GridviewDiv">
                                <asp:GridView runat="server" ID="gvDetails" ShowFooter="true" AllowPaging="true"
                                    PageSize="10" AutoGenerateColumns="false" DataKeyNames="id,materialtype"
                                    OnPageIndexChanging="gvDetails_PageIndexChanging" OnRowCancelingEdit="gvDetails_RowCancelingEdit"
                                    OnRowEditing="gvDetails_RowEditing" OnRowUpdating="gvDetails_RowUpdating" OnRowDeleting="gvDetails_RowDeleting"
                                    OnRowCommand="gvDetails_RowCommand">
                                    <HeaderStyle CssClass="headerstyle" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Matrial Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmaterialname" runat="server" Text='<%# Eval("MaterialType")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMaterialname" runat="server" Text='<%# Eval("MaterialType")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtmname" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Matrial Size">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmaterialsize" runat="server" Text='<%# Eval("Size")%>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMaterialsize" runat="server" Text='<%# Eval("Size")%>' />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtmsize" runat="server" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtProductprice" runat="server" Text='<%# Eval("price")%>' TextMode ="Number" />
                                            </EditItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtprice" runat="server" />
                                                <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Add" CausesValidation="false"
                                                    class="genric-btn primary circle" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" CausesValidation="false" />
                                    </Columns>
                                </asp:GridView>
                                <asp:Label ID="lblresult" runat="server" Text =""></asp:Label>
                            </div>
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

