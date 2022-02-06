using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Pagina3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            Session["user"] = txtUser.Text;
            Response.Redirect("Pagina2.aspx");
        }
    }
}