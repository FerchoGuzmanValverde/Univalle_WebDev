using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int number = 0,he=0,ss=0;
            if (!String.IsNullOrEmpty(Request.QueryString["number"]))
            {
                number = int.Parse(Request.QueryString["number"]);
            }
            if (number>45)
            {
                he = number - 45;
                ss = (he * 90) + (45 * 80);
            }
            else
            {
                ss = number * 80;
            }
            Response.Write("El sueldo semanal es: " + ss);
        }
    }
}