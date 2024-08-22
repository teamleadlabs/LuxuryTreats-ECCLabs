<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMst.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="ECCVWebsite.Admin.AdminOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <h3><asp:Label ID="lblOutput" runat="server" Text=""></asp:Label></h3>
	        <br />
    <asp:GridView runat="server" id="grd"   CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False">
        <Columns>
            <asp:HyperLinkField DataTextField="orderNumber" DataNavigateUrlFields="orderNumber" DataNavigateUrlFormatString="~/Admin/UpdateOrder.aspx?Id={0}"
            HeaderText="Order Id" ItemStyle-Width = "150" />
         <asp:BoundField DataField="orderDate" HeaderText="Order Date" />
         <asp:BoundField DataField="requiredDate" HeaderText="Required By Date" />
         <asp:BoundField DataField="shippedDate" HeaderText="Shipped Date" />
        <asp:BoundField DataField="status" HeaderText="Order Status" />
         <asp:BoundField DataField="comments" HeaderText="Comments" />
       </Columns>
    </asp:GridView >
</asp:Content>
