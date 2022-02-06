using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prueba
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("Esto es el Trace");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Trace.Write("Esto es el Trace en el boton");
            Sumar(4,8);
             //Bug: No pasa.
        }
        /// <summary>
        /// Suma de dos numeros
        /// </summary>
        /// <param name="numero1">numero 1</param>
        /// <param name="numero2">numero 2</param>
        /// <returns>entero</returns>
        public int Sumar(int numero1,int numero2)
        {
            //HHCH retornando la suma de dos numeros
            return numero1 + numero2;
            
            //Bug: No pasa.
        }
    }
}