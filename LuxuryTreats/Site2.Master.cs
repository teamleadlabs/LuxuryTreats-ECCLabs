﻿using System;
using System.Collections.Generic;
//ng System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECCVWebsite
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

       
    }
}