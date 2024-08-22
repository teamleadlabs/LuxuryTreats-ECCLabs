<%@ Page Title="" Language="C#" MasterPageFile="~/UserMst.Master" AutoEventWireup="true" CodeBehind="CustOrder.aspx.cs" Inherits="ECCVWebsite.CustOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h3><asp:Label ID="lblOutput" runat="server" Text=""></asp:Label></h3>
	        <br />
    <asp:GridView runat="server" id="grd"   CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False">
        <Columns>
            <asp:HyperLinkField DataTextField="orderNumber" DataNavigateUrlFields="orderNumber" DataNavigateUrlFormatString="~/OrderDetail.aspx?Id={0}"
            HeaderText="Order Id" ItemStyle-Width = "150" />
         <asp:BoundField DataField="orderDate" HeaderText="Order Date" />
         <asp:BoundField DataField="requiredDate" HeaderText="Required By Date" />
         <asp:BoundField DataField="shippedDate" HeaderText="Shipped Date" />
        <asp:BoundField DataField="status" HeaderText="Order Status" />
         <asp:BoundField DataField="comments" HeaderText="Comments" />
        <asp:HyperLinkField Text="Download" DataNavigateUrlFields="orderNumber" DataNavigateUrlFormatString="~/Download.aspx?filename=/orderfld/{0}.pdf"
            HeaderText="Download" ItemStyle-Width = "150" />
            </Columns>
    </asp:GridView >

</asp:Content>
