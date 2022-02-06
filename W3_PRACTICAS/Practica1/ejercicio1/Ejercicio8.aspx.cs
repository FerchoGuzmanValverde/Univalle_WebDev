using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int number = 0, number_inv=0;
            if (!String.IsNullOrEmpty(Request.QueryString["number"]))
            {
                number = int.Parse(Request.QueryString["number"]);
            }
            while (number>0)
            {
                number_inv = number_inv * 10 + (number % 10);
                number = number / 10;
              
            }
            Response.Write("El numero invertido es: " + number_inv);
        }
    }
}