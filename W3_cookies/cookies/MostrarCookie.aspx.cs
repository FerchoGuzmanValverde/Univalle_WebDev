using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class MostrarCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["age"] == null)
            {
                Label2.Text = "No existe la cookie edad";
            }
            else
            {
                Label2.Text = this.Request.Cookies["age"].Value;
            }
             
            /*
            if (Request.Cookies["person"] == null)
            {
                Label2.Text = "No existe la cookie edad";
            }
            else
            {
                Label2.Text = this.Request.Cookies["person"]["age"] + " y el nombre es " + this.Request.Cookies["person"]["name"];
            }
            */
        }
    }
}