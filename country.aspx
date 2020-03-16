<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="country.aspx.vb" Inherits="country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="common_banner_area">
		<div class="container-fluid">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="col-lg-8 header-left">
					<div class="">
						<img class="img-fluid w-100" src="img/banner/banner_overlay.png" alt="" style="height: 450px">
					</div>
				</div>

				<div class="col-lg-4">
					<div class="header-right">
						<h1>
							COUNTRY
						</h1>
						<p class="pt-20">
							Choose the country.
						</p>
					</div>
				</div>
				<div class="page_link">
					<a href="index.html">Home</a>
					<a href="country.aspx">Register</a>
				</div>
			</div>
		</div>
	</section>
	
    <section class="sample-text-area">
		<div class="container">
    <div class="section-top-border">
				<div class="row">
				
    <h1>
        COUNTRY REGISTRATION
    </h1>
 </div>
                        <div class="row">
<div class="col-md-4">
    <asp:Label ID="Label1" runat="server" Text=" Country ID "></asp:Label></div> 
                            <div class="col-md-4"> 
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                 </div>
                        <div class="col-md-4"></div>
                            </div> 

<hr />
        <div class="row">
            <div class="col-md-4 ">
    
       
        <asp:Label ID="Label2" runat="server" Text="country "></asp:Label>
                </div> 
            <div class="col-md-4 ">
        <asp:TextBox ID="Textcountry" runat="server" class="single-input"></asp:TextBox>
   
                            </div>
            <div class="col-md-4"></div>
                            </div> 

                         <div class ="row">
      <div class="col-md-4"></div>
                         <div class="col-md-4">
                       <div class="button-group-area mt-40">
 <asp:Button ID="Button1" runat="server"  class="genric-btn primary circle" Text="Submit" />
    
    <asp:Button ID="Button2" runat="server"  class="genric-btn success circle" Text="Update" />
    <asp:Button ID="Button3" runat="server"  class="genric-btn danger circle" Text="Delete" />
                            </div>
                        
                            </div>    
                         </div>               
                            
                        
                   </div>  
        </div> 
             
     </section> 

</asp:Content>




