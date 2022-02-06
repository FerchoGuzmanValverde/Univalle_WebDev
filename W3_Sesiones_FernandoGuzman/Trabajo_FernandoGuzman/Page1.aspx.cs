using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.Session["user"] == null)
            {
                lblMessage.Text = "Ingrese un Nombre";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "")
            {
                Session["user"] = txtUserName.Text;
                Response.Redirect("Page2.aspx");
            }
            lblMessage.Visible = true;
        }
    }
}