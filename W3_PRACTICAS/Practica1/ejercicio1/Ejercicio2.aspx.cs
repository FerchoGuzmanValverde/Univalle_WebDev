using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double number1 = 0,number2=0,res=0;
            if (!String.IsNullOrEmpty(Request.QueryString["number1"]))
            {
                number1 = double.Parse(Request.QueryString["number1"]);
            }
            if (!String.IsNullOrEmpty(Request.QueryString["number2"]))
            {
                number2 = double.Parse(Request.QueryString["number2"]);
            }
            res = Math.Pow(number1, number2);
            Response.Write(string.Format("El numero: "+ number1+" elevado a la potencia: "+number2+"es: {0}",res));

        }
    }
}