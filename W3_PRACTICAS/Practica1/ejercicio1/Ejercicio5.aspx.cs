using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Univalle.Informatica.Isi.Practicas
{
    public partial class Ejercicio5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            int age = 0;
            if (!String.IsNullOrEmpty(Request.QueryString["age"]))
            {
                age = int.Parse(Request.QueryString["age"]);
            }
            if (age>=18)
            {
                Response.Write("Hola " + name + " tienes: " + age + " eres mayor de edad");
            }
            else
            {
                Response.Write("Hola " + name + " tienes: " + age + " NO eres mayor de edad");
            }
        }
    }
}