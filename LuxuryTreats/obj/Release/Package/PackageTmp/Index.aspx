<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ECCVWebsite.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceholder" runat="server">
 <br/><br/>
    <div class="" ></div>
    <div class ="row">
    <div class="col-sm-12">
    <div class="notice" runat="server" id="divNotice" visible ="false">
        <asp:Literal runat="server" EnableViewState="False" ID="labelMessage">Hello! Please log in to view your private customer data</asp:Literal>
    </div>

    <asp:Panel ID="PanelError" runat="server" Visible ="false" >
        <div class="error">
            <asp:Literal runat="server" EnableViewState="False" ID="labelError" Text="Your are not logged in.  Please authenticate before proceeding."></asp:Literal>
        </div>
    </asp:Panel>
        </div>
        </div>
    <div class="row">
  <div class="col-sm-4">
      
  <div class="form-group">
    <label for="email">User Name:</label>
      <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    
      <asp:TextBox ID="txt_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  
      <asp:Button ID="btn_login" class="btn btn-default"  runat="server" Text="Login"  OnClick="btn_login_Click"/>  

  </div>
  <div class="col-sm-4"><img src="images/text1.jpg" alt="">
          <h2>The Best Offers</h2>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
          <a href="HotelList.aspx" class="button">Search For Hotels</a> </div>
  <div class="col-sm-4"><img src="images/img.jpg" alt=""></div>
        </div>

      
</asp:Content>
