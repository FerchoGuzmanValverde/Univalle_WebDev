using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Pagina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.Session["user"]!=null)
            {
                lblResult.Text = "El usuario actual en el sistema es: " + this.Session["user"].ToString();
            }
            else
            {
                lblResult.Text = "No existe usuario";
            }
        }
    }
}