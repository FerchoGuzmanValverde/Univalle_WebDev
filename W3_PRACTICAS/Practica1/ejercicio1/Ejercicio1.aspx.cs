using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double number1 = 0;
            double number2 = 0;

            if (!String.IsNullOrEmpty(Request.QueryString["number1"]))
            {
                number1 = double.Parse(Request.QueryString["number1"]);
            }
            if (!String.IsNullOrEmpty(Request.QueryString["number2"]))
            {
                number2 = double.Parse(Request.QueryString["number2"]);
            }

            Response.Write(string.Format("La suma es: {0}", number1 + number2));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
      
            
        }
    }
}