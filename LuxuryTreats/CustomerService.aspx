<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="CustomerService.aspx.cs" Inherits="CustomerService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HelpContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContentPlaceholder" runat="Server">
    <br />
    <br />
    <style type="text/css">
        
        .cs-title--higher{
            font-size:46px;
            text-align:center;
            color:#000;
        }
       
        .cs-page-content {
            background-color: #ffffff;
            padding: 10px;
        }

        h2 {
            color: #000;
            text-align: center;
        }

        .cs-page-content-option {
            border: 1px solid #333333;
            padding: 30px;
        }

       h4{
           color:#333333;
           font-weight:bold;
           font-family:Arial !important;
       }
       .btn1{
           border:1px solid #1d4ac6 !important;
           padding:10px;
           color:#1d4ac6 !important;
           background-color:#fff !important;
       }
       .btn2{
            border:1px solid #1d4ac6 !important;
           padding:10px;
           color:#ffffff !important;
           background-color:#1d4ac6 !important;
       }
    </style>
    <div class="bg-full">
    <div class="container-fluid cs-lead">
        
            <div class="col-md-12">
                <h1 class="cs-title--higher">How can we help?
                </h1>
            </div>
      
    </div>
    <div class="col-md-12 cs-page-content">
        <h2 class="cs-page-content-header">There are three ways to get the answers you need:</h2>
        <div class="cs-page-content-options">
            <div class="col-md-4 cs-page-content-option">
                <h4>Find information</h4>
                <p class="">
                    Tell us what your problem is and we'll find the fastest way to help.
                </p>
                <a href="FAQ.aspx">
                    <span class="btn btn1">Frequently asked questions</span>
                </a>
            </div>
            <div class="col-md-4 cs-page-content-option">
                <h4>Make changes</h4>
                <p>
                    Change dates, add rooms or cancel your booking easily online.
                </p>
                
                <a class="" href="HotelList.aspx">
                    <span class="btn btn2">Manage a booking</span>
                </a>
            </div>
            <div class="col-md-4 cs-page-content-option">
                <h4 class="cs-page-content-options-header">Get in touch</h4>
                <p class="cs-page-content-options-body">
                    Need to speak with us? We're available 24/7.
                </p>
                <a href="Contactus.aspx">
                    <span class="btn btn1">Call or email us</span>
                </a>
            </div>
        </div>
    </div>
        </div>
</asp:Content>

