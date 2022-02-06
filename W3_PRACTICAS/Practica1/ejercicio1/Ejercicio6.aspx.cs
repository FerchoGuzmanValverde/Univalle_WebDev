using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int number1 = 0, number2 = 0, result = 0;
            if (!String.IsNullOrEmpty(Request.QueryString["number1"]))
            {
                number1 = int.Parse(Request.QueryString["number1"]);
            }
            if (!String.IsNullOrEmpty(Request.QueryString["number2"]))
            {
                number2 = int.Parse(Request.QueryString["number2"]);
            }
            for (int i = 0; i < number1; i++)
            {
                result = result + number2;
            }
            Response.Write("La suma del producto es: " + result);
        }
    }
}