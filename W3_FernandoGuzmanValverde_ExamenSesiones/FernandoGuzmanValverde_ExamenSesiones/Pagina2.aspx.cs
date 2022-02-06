using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzmanValverde_ExamenSesiones
{
    public partial class Pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["zona"] != null)
            {
                cbxZona.SelectedValue = Session["zona"].ToString();
                Session["zona"] = "";
            }
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            Session["zona"] = cbxZona.SelectedValue;
            Response.Redirect("Pagina1.aspx");
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Session["zona"] = cbxZona.SelectedValue;
            Response.Redirect("Pagina3.aspx");
        }
    }
}