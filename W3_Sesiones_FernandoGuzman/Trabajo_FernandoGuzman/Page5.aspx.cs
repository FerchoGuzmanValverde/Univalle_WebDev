using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Page5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["user"] != null && this.Session["surname"] != null)
            {
                lblResultado.Text = "Nombre: " + this.Session["user"].ToString() + "<br/>Apellido: " + this.Session["surname"].ToString();
            }
        }
    }
}