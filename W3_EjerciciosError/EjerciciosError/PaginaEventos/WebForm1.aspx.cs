using System;
using System.Web;

namespace PaginaEventos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Page_Load. <br/>");

            string cadena1 = Request.QueryString["q"];
            string cadena2 = Request.QueryString["id"];
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Page_Init. <br/>");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Page_PreRender. <br/>");
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Page_PreInit. <br/>");
        }

        protected void btnCreateCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("Nombre", "Edson");
            cookie.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(cookie);
        }

        protected void btnLeerCookie_Click(object sender, EventArgs e)
        {
            string nombre = string.Empty;
            if (Request.Cookies["Nombre"] != null)
            {
                nombre = Request.Cookies["Nombre"].Value;
            }
        }

        protected void btnCambiarValorHiddenField_Click(object sender, EventArgs e)
        {
            hdnPrueba.Value = "fue reemplazado";
        }

    }
}