using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
using System.Data;

namespace ECCVWebsite
{
    public partial class OrderDetail : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["ID"] != null)
                //LoadOrderDetails(Convert.ToInt32(Request["ID"]));
                LoadOrderDetails(Request["ID"].ToString());
        }
        void LoadOrderDetails(String OrderID)
        {
            DataSet ds = db.GetOrderDetails(OrderID);
            lblOutput.Text = "Here are the details for our Order No." + OrderID  ;
           // lblCustName.Text = "Customer Name <b>" + ds.Tables[0].Rows[0][1].ToString() +"</b>";
            //lblOrderDate.Text = "Order Date <b>" + ds.Tables[0].Rows[0][0].ToString() +"</b>";
            grd.DataSource = ds.Tables[0];
            grd.DataBind();
        }
    }
}