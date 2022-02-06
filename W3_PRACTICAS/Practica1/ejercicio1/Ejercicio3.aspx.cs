using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstName = Request.QueryString["firstName"];
            string lastName = Request.QueryString["lastName"];
            Response.Write("El nombre completo es: "+firstName+" "+lastName);
        }
    }
}