using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sesiones
{
    public partial class pagina3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"]!=null)
            Label1.Text = this.Session["usuario"].ToString();
            if (Session["clave"] != null)
            Label2.Text = this.Session["clave"].ToString();
        }
    }
}