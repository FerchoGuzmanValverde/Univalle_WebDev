using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzmanValverde_ExamenSesiones
{
    public partial class Pagina4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["piscina"] != null)
            {
                cbxPiscina.Checked = true;
            }
            if (Session["jardin"] != null)
            {
                cbxJardin.Checked = true;
            }
            if (Session["garage"] != null)
            {
                cbxGarage.Checked = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (cbxPiscina.Checked == true)
            {
                Session["piscina"] = "Piscina";
            }
            if (cbxJardin.Checked == true)
            {
                Session["jardin"] = "Jardin";
            }
            if (cbxGarage.Checked == true)
            {
                Session["garage"] = "Garage";
            }
            Response.Redirect("Pagina3.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(cbxPiscina.Checked == true)
            {
                Session["piscina"] = "Piscina";
            }
            if(cbxJardin.Checked == true)
            {
                Session["jardin"] = "Jardin";
            }
            if(cbxGarage.Checked == true)
            {
                Session["garage"] = "Garage";
            }
            Response.Redirect("Pagina5.aspx");
        }
    }
}