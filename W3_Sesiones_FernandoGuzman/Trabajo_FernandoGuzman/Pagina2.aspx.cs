using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_FernandoGuzman
{
    public partial class Pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = this.Session["user"].ToString();

            Session.Contents.RemoveAt(0);
        }
    }
}