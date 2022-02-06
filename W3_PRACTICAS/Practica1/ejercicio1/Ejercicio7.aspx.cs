using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double number = 0,plus=0;
            if (!String.IsNullOrEmpty(Request.QueryString["number"]))
            {
                number = double.Parse(Request.QueryString["number"]);
            }
            for (double i = 1, j = 1; i <= number; i++, j++)
            {
                plus = plus + Math.Pow(j, i);
            }
            Response.Write("El resultado es: " + plus);

        }
    }
}