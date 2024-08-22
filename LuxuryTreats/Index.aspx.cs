using System;
using System.Collections.Generic;
//ing System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ECCVWebsite
{
    public partial class Index : System.Web.UI.Page
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
                    string data = authTicket.Name;

                    string returnUrl = null;
                    // if (returnUrl == null)
                    if (data.ToUpper() == "ADMIN") returnUrl = "/AdminHome.aspx";
                    else
                        returnUrl = "/UserMain.aspx";

                    Response.Redirect(returnUrl);

                }

            }
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
          string username = txt_email.Text;
            string pwd = txt_password.Text;

            Int32 custID = 0;
            custID = db.IsValidCustomerLogin(username, pwd);
            if (custID==0)
            {
                labelError.Text = "Incorrect username/password"; 
                PanelError.Visible = true;
                return;
            }
           
            
            // put ticket into the cookie
            FormsAuthenticationTicket ticket =
                        new FormsAuthenticationTicket(
                            1, //version 
                            username, //name 
                            DateTime.Now, //issueDate
                            DateTime.Now.AddDays(14), //expireDate 
                            true,//isPersistent
                            custID.ToString(), //userData (customer role)
                            FormsAuthentication.FormsCookiePath //cookiePath
            );

            string encrypted_ticket = FormsAuthentication.Encrypt(ticket); //encrypt the ticket

            // put ticket into the cookie
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrypted_ticket);

            //set expiration date
            if (ticket.IsPersistent)
                cookie.Expires = ticket.Expiration;

            Response.Cookies.Add(cookie);

            string returnUrl = null;//Request.QueryString["ReturnUrl"];

           // if (returnUrl == null)
                if (ticket.Name.ToUpper() == "ADMIN") returnUrl = "/AdminHome.aspx";
            else
            returnUrl = "/UserMain.aspx";

            Response.Redirect(returnUrl); 
            
        }
    }
}