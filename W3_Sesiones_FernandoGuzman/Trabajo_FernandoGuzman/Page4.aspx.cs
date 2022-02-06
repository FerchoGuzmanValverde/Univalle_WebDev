using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["surname"] != null)
            {
                Response.Redirect("Page5.aspx");
            }
            else
            {
                Response.Redirect("Page3.aspx");
            }
        }
    }
}