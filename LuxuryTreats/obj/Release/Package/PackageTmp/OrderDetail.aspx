<%@ Page Title="" Language="C#" MasterPageFile="~/UserMst.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="ECCVWebsite.OrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
	<asp:Label ID="lblOutput" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblCustName" runat="server" Text=""></asp:Label><br />
        <asp:Label ID="lblOrderDate" runat="server" Text=""></asp:Label><br />
	        <br />
	        <asp:GridView runat="server" id="grd"   CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False">
        <Columns>
            
         <asp:BoundField DataField="productCode" HeaderText="Product Code" />
         <asp:BoundField DataField="quantityOrdered" HeaderText="Qty" />
        <asp:BoundField DataField="priceEach" HeaderText="Rate/Qty" />
        
        
            </Columns>
    </asp:GridView >
</asp:Content>
 