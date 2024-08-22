using System;
using System.Collections.Generic;//
//ing System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECCVWebsite.App_Code;
using System.Data;

namespace ECCVWebsite
{
    public partial class Contactus : System.Web.UI.Page
    {
        dbProvider db = new dbProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblMessage.Visible = false;
           // divcomment.InnerHtml = "<script>alert(document.cookie);</script>";
            //divcomment.InnerText= "<script>alert('hello');</script>";
            txtEmail.Enabled = true;
            if (!Page.IsPostBack)
                LoadComments();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text;
                string comment = txtComment.Text;
                email= email.Replace("'", "''");
                comment =comment.Replace("'", "''");
                string error_message = db.AddComment("user_cmt", email, comment);
                txtComment.Text = error_message;
                lblMessage.Visible = true;
                LoadComments();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.Visible = true;
            }
        }

        void LoadComments()
        {
            DataSet ds = db.GetComments("user_cmt");
            string comments = string.Empty;
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                comments += "<strong>Email:</strong>" + row["email"] + "<span style='font-size: x-small;color: #E47911;'> (Email Address Verified!) </span><br/>";
                comments += "<strong>Comment:</strong><br/>" + row["comment"] + "<br/><hr/>";

            }
            divcomment.InnerHtml = comments;
            //lblComments.Text = comments;
            //lblComments.
        }


    }
}