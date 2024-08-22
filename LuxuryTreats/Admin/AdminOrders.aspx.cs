using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
using System.Data;

namespace ECCVWebsite.Admin
{
    public partial class AdminOrders : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadAllOrders();
        }
        void loadAllOrders()
        {
            DataSet ds = db.GetAllOrders();
            lblOutput.Text = "List of Orders";
            grd.DataSource = ds.Tables[0];
            grd.DataBind();
        }
    }
}