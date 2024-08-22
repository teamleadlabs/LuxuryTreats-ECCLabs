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
    public partial class branches : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["city"] != null)
                LoadCity(Request["city"]);
        }
        void LoadCity(String city)
        {
            DataSet ds = db.GetOffice(city);
            lblOutput.Text = "Here are the details for our " + city + " Office";
            dtlView.DataSource = ds.Tables[0];
            dtlView.DataBind();
        }
    }
}