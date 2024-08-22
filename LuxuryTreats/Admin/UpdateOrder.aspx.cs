using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;

namespace ECCVWebsite.Admin
{
    public partial class UpdateOrder : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] StrArray = { "Select", "Processing", "Hold", "Completed", "Waiting for material", "Dispatched" };
                drpStatus.DataSource = StrArray;
                drpStatus.DataBind();
            }
            if (Request["ID"] != null)
                //LoadOrderDetails(Convert.ToInt32(Request["ID"]));
                LoadOrderDetails(Request["ID"].ToString());
        }
        void LoadOrderDetails(String OrderID)
        {
            DataSet ds = db.GetOrderDetails(OrderID);
            // lblOutput.Text = "Here are the details for our Order No." + OrderID;
            // lblCustName.Text = "Customer Name <b>" + ds.Tables[0].Rows[0][1].ToString() +"</b>";
            //lblOrderDate.Text = "Order Date <b>" + ds.Tables[0].Rows[0][0].ToString() +"</b>";
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_ordNum.Text = ds.Tables[0].Rows[0][1].ToString();
                Txt_itemcode.Text = ds.Tables[0].Rows[0][2].ToString();
                txt_ItemDesc.Text = ds.Tables[0].Rows[0][3].ToString();
                txt_qty.Text = ds.Tables[0].Rows[0][4].ToString();
                txt_rate.Text = ds.Tables[0].Rows[0][5].ToString();
                // grd.DataSource = ds.Tables[0];
                
                

                // grd.DataBind();
            }
            }
        protected void btn_Update_Click(object sender, EventArgs e)
        {
            if (drpStatus.SelectedItem.Text == "Select")
            {
                labelError.Text = "Please Select Order Status!";
                PanelError.Visible = true;
                return;
            }
            
           string errmsg =  db.UpdateOrder(txt_ordNum.Text, Txt_itemcode.Text, txt_ItemDesc.Text, txt_qty.Text, txt_rate.Text, drpStatus.SelectedItem.Text);
            labelError.Text = errmsg;
            PanelError.Visible = true;

        }

        protected void btn_back_Click(object sender, EventArgs e)
        { }

    }
}