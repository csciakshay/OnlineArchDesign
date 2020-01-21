<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster.master" AutoEventWireup="false" CodeFile="ErrorPage.aspx.vb" Inherits="ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="sample-text-area">
		<div class="container">
             <div class="row">
                <div class="col-lg-12 col-md-12">
                    <asp:Label ID="Label1" runat="server" Text="Error: "></asp:Label>

                </div>
             </div>
            <div class="row">
                <asp:Button ID="Button1" runat="server" Text="Back" OnClientClick="JavaScript:window.history.back(1); return false;"/>
            </div>
            </div>
        </section>
</asp:Content>

