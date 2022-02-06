using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insertar.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Buscar.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Actualizar.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Eliminar.aspx");
        }
    }
}