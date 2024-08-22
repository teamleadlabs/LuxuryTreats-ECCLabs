<%@ Page Title="" Language="C#" MasterPageFile="~/UserMst.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="ECCVWebsite.Dowload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <div class="row">
        <div class="col-sm-12">
        <asp:Button ID="Button1" class="btn-default " runat="server" Text="DOWNLOAD YOUR ORDER NOW"  OnClick="Button1_Click" Font-Bold="True" Font-Size="XX-Large"/>          
        </div> 
    </div>
</asp:Content>
