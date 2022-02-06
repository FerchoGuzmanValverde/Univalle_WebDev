using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzmanValverde_ExamenSesiones
{
    public partial class Pagina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["tipo"] != null)
            {
                cbxTipo.SelectedValue = Session["tipo"].ToString();
                this.Session["tipo"] = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["tipo"] = cbxTipo.SelectedValue;
            Response.Redirect("Pagina2.aspx");
        }
    }
}