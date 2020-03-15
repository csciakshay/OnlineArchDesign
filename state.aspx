<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="state.aspx.vb" Inherits="state" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/banner_overlay.png" alt="" >
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							STATE 
						</h1>
						<p class="pt-20">
							choose the state.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="register.aspx">Register</a>
				</div>
			</div>
		</div>
	</section>
	
    <section class="sample-text-area">
		<div class="container">
    <div class="section-top-border">
        <div class="row">
            <h1>
        STATE REGISTRATION
    </h1>
        </div>
				<div class="row">
					<div class="col-md-4"><asp:Label ID="Label1" runat="server" Text="State ID "></asp:Label></div>
<div class="col-md-4">    
    
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    </div>
<div class="col-md-4"></div>
 </div>
        <hr />
        <div class="row">
            <div class="col-md-4 ">
                <asp:Label ID="Label3" runat="server" Text="Country "></asp:Label>
            </div>
            <div class="col-md-4">
                
                 
                     <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                 </div>
             <div class="col-md-4 "></div>
            </div>
        <div class="row">
             <div class="col-md-4 ">
                 <asp:Label ID="Label2" runat="server" Text="State "></asp:Label>
             </div>
                        <div class="col-md-4 ">
        
        <asp:TextBox ID="Textstate" runat="server" class="single-input"></asp:TextBox>
   
                            </div>
             <div class="col-md-4 "></div>
                </div>
        <div class ="row">
      <div class="col-md-4"></div>
                         <div class="col-md-4">
                       <div class="button-group-area mt-40">
 <asp:Button ID="Button2" runat="server"  class="genric-btn primary circle" Text="Submit" />
                           <asp:Button ID="Button1" runat="server"  class="genric-btn success circle" Text="update" />
    
    <asp:Button ID="Button3" runat="server"  class="genric-btn danger circle" Text="Delete" />
    
                            </div>
                        
                            </div> 
            <div class="col-md-4"></div>   
                    </div> 
        </div> 
            </div> 
     </section> 

</asp:Content>

