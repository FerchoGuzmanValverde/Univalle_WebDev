using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int  number1 = 0, number2 = 0,residuo=0,cociente=0;
            if (!String.IsNullOrEmpty(Request.QueryString["number1"]))
            {
                number1 = int.Parse(Request.QueryString["number1"]);
            }
            if (!String.IsNullOrEmpty(Request.QueryString["number2"]))
            {
                number2 = int.Parse(Request.QueryString["number2"]);
            }

            if (number1<0 && number2<0)
            {
                number1 = number1 * -1;
                number2 = number2 * -1;
            }
            if (number2<0)
            {
                if (number1<number2)
                {
                    number1 = number1 - number2;
                    cociente++;
                }
                else
                {
                    number1 = number1 + number2;
                    cociente = cociente - 1;
                }
            }
            if (number2>0)
            {
                if (number2<number2)
                {
                    number1 = number1 + number2;
                    cociente = cociente - 1;
                }
                else
                {
                    number1 = number1 - number2;
                    cociente = cociente + 1;
                }
            }
            else
            {
                Response.Write("La division entre cero no es posible");
            }
            Response.Write("El resultado del cociente: " + cociente+" y el residuo es: "+residuo);
        }
       
    }
}