<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="errorPage.aspx.vb" Inherits="errorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="sample-text-area">
    <div class="container">
        <div class="section-top-border">
            <div class="row">
                <h3>Error found in system</h3>
                </div>
				<div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label1" runat="server" Text="Error"></asp:Label>
                    </div>
                    </div>
            </div>
        </div>
         </section>

</asp:Content>

