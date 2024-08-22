<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="BookingConfirmation.aspx.cs" Inherits="ECCVWebsite.OnlineBooking.BookingConfirmation"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HelpContentPlaceholder" runat="server">

    
 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">
    <asp:Label ID="lblconfirmation" runat="server" Text="Label"></asp:Label>

    <br />
    <asp:Button ID="Btn_Pay" runat="server" Text="Pay Now"  OnClick ="Btn_Pay_Click"/>
</asp:Content>
