<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ECCVWebsite.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">

     <div class="form-horizontal">

         <legend>REGISTRATION FORM</legend>
      <asp:Panel ID="PanelError" runat="server" Visible ="false" >
        <div class="error">
            <asp:Literal runat="server" EnableViewState="False" ID="labelError" Text="Your are not logged in.  Please authenticate before proceeding."></asp:Literal>
        </div>
    </asp:Panel>
          <div class="form-group">
      <label class="control-label col-sm-2" for="email">User Name:</label>
      <div class="col-sm-10">
      

          <asp:TextBox  class="form-control" ID="txt_username" runat="server"></asp:TextBox>
      </div>
    </div>

         <div class="form-group">
      <label class="control-label col-sm-2" for="email">First Name:</label>
      <div class="col-sm-10 input-group">
        <asp:TextBox  class="form-control" ID="TxtFirstName" runat="server"></asp:TextBox>
          
          
      </div>
    </div>
         <div class="form-group">
      <label class="control-label col-sm-2" for="email">Last Name:</label>
      <div class="col-sm-10 input-group">
        <asp:TextBox  class="form-control" ID="TxtLastName" runat="server"></asp:TextBox>
          
          
      </div>
    </div>

       <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
      

          <asp:TextBox  class="form-control" ID="txtEmail" runat="server"></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <asp:TextBox ID="Txt_pwd"  class="form-control" runat="server" TextMode="Password"></asp:TextBox>
      </div>
    </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">What is your favourite Color</label>
      <div class="col-sm-10">          
          <asp:DropDownList ID="drp_color" runat="server"></asp:DropDownList>
      </div>
    </div>
         <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Address1</label>
      <div class="col-sm-10">          
          <asp:TextBox ID="Txtadd1"  class="form-control" runat="server" ></asp:TextBox>
          <asp:TextBox ID="Txtadd2"  class="form-control" runat="server" ></asp:TextBox>
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="pwd">City</label>
      <div class="col-sm-10">          
          <asp:TextBox ID="Txtcity"  class="form-control" runat="server" ></asp:TextBox>
          
      </div>
    </div>


         <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">State</label>
      <div class="col-sm-10">          
          <asp:TextBox ID="TxtState"  class="form-control" runat="server" ></asp:TextBox>
          
      </div>
    </div>

  <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Phone No.</label>
      <div class="col-sm-10">          
          <asp:TextBox ID="TxtPhone"  class="form-control" runat="server" ></asp:TextBox>
          
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <asp:Button ID="btn_Register" class="btn btn-default"  runat="server" Text="Register" OnClick="btn_Register_Click"/>  
      </div>
    </div>
            
               </div>
</asp:Content>

