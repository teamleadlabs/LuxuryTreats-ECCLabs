<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMst.Master" AutoEventWireup="true" CodeBehind="customerlist.aspx.cs" Inherits="ECCVWebsite.customerlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3><asp:Label ID="lblOutput" runat="server" Text=""></asp:Label></h3>
	        <br />
    <asp:GridView runat="server" id="grd"   CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False">
        <Columns>
         <asp:BoundField DataField="customernumber" HeaderText="ID"  />
        <asp:BoundField DataField="Username" HeaderText="User Name" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" />
            <asp:BoundField DataField="lastname" HeaderText="Last Name" />
        <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phoneno" HeaderText="Phone No." />
        <asp:BoundField DataField="Add1" HeaderText="Address1" />
            <asp:BoundField DataField="Add2" HeaderText="Address2" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="State" HeaderText="State" />
        <asp:BoundField DataField="answer" HeaderText="Favorite Color" />
            </Columns>
    </asp:GridView >
</asp:Content>
