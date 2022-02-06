using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.Session["surname"] == null)
            {
                lblError.Text = "Ingrese sus apellidos";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtApellidos.Text != "")
            {
                Session["surname"] = txtApellidos.Text;
                Response.Redirect("Page4.aspx");
            }
            lblError.Visible = true;
        }
    }
}