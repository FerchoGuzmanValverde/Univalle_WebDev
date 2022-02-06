using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sesiones
{
    public partial class pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = this.Session["usuario"].ToString();
            Label2.Text = this.Session["clave"].ToString();
            //eliminar una variable de sesión
            Session.Contents.RemoveAt(0);
            //eliminar todas las variables de sesión
            //Session.Contents.RemoveAll();
        }
    }
}