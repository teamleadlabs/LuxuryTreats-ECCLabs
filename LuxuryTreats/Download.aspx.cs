using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECCVWebsite
{
    public partial class Dowload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["filename"] != null)
            {
                try
                {
                    string filename = Request.QueryString["filename"];
                    if (filename != null)
                    {


                        String Invoicefile = Server.MapPath(filename);
                        string Filenamestr = filename.Substring(filename.LastIndexOf("/") + 1);

                        if (File.Exists(Invoicefile))
                        {
                            Response.ContentType = "application/pdf";
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Filenamestr);
                            Response.TransmitFile(Invoicefile);
                            // Response.End();
                            //Response.Redirect(Request.RawUrl, true);
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, GetType(), "none", "<Script>alert('File Not Found!');</Script>", false);
                        }
                    }

                }
                catch (Exception ex)
                {


                }
                finally
                {

                }
            }
        }
    }
}


    