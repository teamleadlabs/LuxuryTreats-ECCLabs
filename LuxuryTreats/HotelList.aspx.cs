using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECCVWebsite
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Book_Click(object sender, EventArgs e)
        {

            Server.Transfer("BookingConfirmation.aspx");
            //string comments = Request.Unvalidated.Form[TxtComments.UniqueID];
            //string email = Request.Form[txtEmail.UniqueID];
            //Response.Redirect("About-us.aspx");


        }
    }
}