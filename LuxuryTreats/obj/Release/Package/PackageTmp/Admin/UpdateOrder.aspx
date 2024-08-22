<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMst.Master" AutoEventWireup="true" CodeBehind="UpdateOrder.aspx.cs" Inherits="ECCVWebsite.Admin.UpdateOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="form-horizontal">

         <legend>ORDER DETAILS</legend>


      <asp:Panel ID="PanelError" runat="server" Visible ="false" >
        <div class="error">
            <asp:Literal runat="server" EnableViewState="False" ID="labelError" Text="Your are not logged in.  Please authenticate before proceeding."></asp:Literal>
        </div>
    </asp:Panel>
          <div class="form-group">
      <label class="control-label col-sm-5" for="txt_ordNum">Order No.</label>
      <div class="col-sm-5">
        <asp:TextBox  class="form-control" ID="txt_ordNum" runat="server" ReadOnly></asp:TextBox>
      </div>
    </div>
         <div class="form-group">
      <label class="control-label col-sm-5" for="Txt_itemcode">Order Item Code</label>
      <div class="col-sm-5">
        <asp:TextBox  class="form-control" ID="Txt_itemcode" runat="server" ></asp:TextBox>
      </div>
             <div class="form-group">
      <label class="control-label col-sm-5" for="txt_ItemDesc">Item Description</label>
      <div class="col-sm-5">
        <asp:TextBox  class="form-control" ID="txt_ItemDesc" runat="server" ></asp:TextBox>
      </div>

                 <div class="form-group">
      <label class="control-label col-sm-5 for="txt_qty">Item Quantity</label>
      <div class="col-sm-5">
        <asp:TextBox  class="form-control" ID="txt_qty" runat="server" ></asp:TextBox>
      </div>

                     <div class="form-group">
      <label class="control-label col-sm-5" for="txt_rate">Rate</label>
      <div class="col-sm-5">
        <asp:TextBox  class="form-control" ID="txt_rate" runat="server" ></asp:TextBox>
      </div>

                         <div class="form-group">
      <label class="control-label col-sm-5" for="drpStatus">Item Status</label>
      <div class="col-sm-5">
        <asp:DropDownList ID="drpStatus" class="form-control" runat="server"></asp:DropDownList>
      </div>
    </div>
 <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-5">
        <asp:Button ID="btn_Update" class="btn btn-default"  runat="server" Text="Update" OnClick="btn_Update_Click"/>  
           <asp:Button ID="btn_back" class="btn btn-default"  runat="server" Text="Back" OnClick="btn_back_Click"/>  
      </div>
    </div>
</asp:Content>
