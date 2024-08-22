using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECCVWebsite.OnlineBooking
{
    public partial class BookingConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string bookingdetails= "<h4>BOOKING CONFIRMATION</h4>";
                if (this.PreviousPage != null)
                {
                    HiddenField hdnFieldName ;
                    hdnFieldName = this.PreviousPage.FindControl("ctl00$ContentPlaceHolder1$hdf_roomtype") as HiddenField;
                    string hiddenValue = string.Empty;
                    if (hdnFieldName != null)
                    {
                        hiddenValue = hdnFieldName.Value;
                    }

                    bookingdetails += "<br/> Room Type :" + hiddenValue;
                    hdnFieldName = this.PreviousPage.FindControl("ctl00$ContentPlaceHolder1$hdf_noofperson") as HiddenField;
                    if (hdnFieldName != null)
                    {
                        hiddenValue = hdnFieldName.Value;
                    }
                    bookingdetails += "<br/> No of Persons:" + hiddenValue;
                    //Response.Write(hiddenValue);
                    hdnFieldName = this.PreviousPage.FindControl("ctl00$ContentPlaceHolder1$hdf_cost") as HiddenField;
                    if (hdnFieldName != null)
                    {
                        hiddenValue = hdnFieldName.Value;
                    }
                    bookingdetails += "<br/> Cost: $" + hiddenValue;
                    lblconfirmation.Text = bookingdetails;
                }
            }
        }

        protected void Btn_Pay_Click(object sender, EventArgs e)
        {
            lblconfirmation.Text = "<h4>Payment Sucessfully Done</h4>";
            Btn_Pay.Visible = false;
        }
    }
}