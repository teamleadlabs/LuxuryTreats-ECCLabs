using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
namespace ECCVWebsite
{
    public partial class customerlist : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadcustomers();

            }

        }

        void loadcustomers()
        {
            DataSet ds = db.GetCustomers();
            lblOutput.Text = "List of Customers";
            grd.DataSource = ds.Tables[0];
            grd.DataBind();
        }
    }
}