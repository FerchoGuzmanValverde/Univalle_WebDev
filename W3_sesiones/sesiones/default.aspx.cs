using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sesiones
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Almacenamos las dos variables de sesion
            Session["usuario"] = txtu.Text;
            Session["clave"] = txtc.Text;
            //Redireccionamos a la siguiente pagina
            Response.Redirect("pagina2.aspx");
        }
    }
}