using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Tests
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Page_Load. <br/>");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Mensaje desde Button1_Click  <br/>");
        }
    }
}