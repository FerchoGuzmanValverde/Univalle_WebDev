using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double number = 0, suma = 0, residuo = 0;
            if (!String.IsNullOrEmpty(Request.QueryString["number"]))
            {
                number = double.Parse(Request.QueryString["number"]);
            }
            do
            {
                residuo = number % 10;
                suma = suma + residuo;
                number = (number - (number % 10)) / 10;
            } while (number!=0);

            Response.Write("La suma de los digitos es: "+ suma);
        }
    }
}