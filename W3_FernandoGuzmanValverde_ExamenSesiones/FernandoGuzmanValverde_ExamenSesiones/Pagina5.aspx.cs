using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FernandoGuzmanValverde_ExamenSesiones
{
    public partial class Pagina5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        void Cargar()
        {
            string extras = "";

            if(Session["piscina"] != null)
            { extras = extras + Session["piscina"].ToString() + "  "; }
            if (Session["jardin"] != null)
            { extras = extras + Session["jardin"].ToString() + "  "; }
            if (Session["garage"] != null)
            { extras = extras + Session["garage"].ToString() + "  "; }

            lblDetalles.Text = "Tipo de Vivienda: " + this.Session["tipo"].ToString() + "<br/>Zona de Vivienda: " + this.Session["zona"].ToString() + "<br/>Dormitorios: " + this.Session["dormitorios"].ToString() + "<br/>Precios: " + this.Session["precio"].ToString() + "<br/>Extras: " + extras;
        }
    }
}