using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Store user input in Session for later retrieval
            Session["UserName"] = txtName.Text;
            Session["UserDOB"] = txtDOB.Text;

            // Redirect to WebForm2
            Response.Redirect("WebForm2.aspx");
        }
    }
}