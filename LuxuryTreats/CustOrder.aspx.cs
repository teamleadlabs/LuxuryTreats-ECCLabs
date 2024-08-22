using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
using System.Data;
using System.Web.Security;

namespace ECCVWebsite
{
    public partial class CustOrder : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var authCookie = HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
                if (authCookie != null)
                {
                    var authTicket = FormsAuthentication.Decrypt(authCookie.Value);
                    string data = authTicket.UserData;
                    loadcustomerOrders(Convert.ToInt32(data));
                    // data is empty !!!
                }

                

            }

        }

        void loadcustomerOrders(Int32 CustID)
        {
            DataSet ds = db.GetCustomerOrders(CustID);
            lblOutput.Text = "Your Orders";
            grd.DataSource = ds.Tables[0];
            grd.DataBind();
        }
    }
}