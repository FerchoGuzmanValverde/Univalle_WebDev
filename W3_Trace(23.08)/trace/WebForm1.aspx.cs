using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trace
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("Info: ", "Este mensaje sale al inicio del metodo Page_Load");

            //
            System.Diagnostics.Trace.WriteLine(string.Format("{0}: Trace Cargando... la pagina {1}",DateTime.Now,this.GetType()));
            //Instrucciones
            System.Diagnostics.Trace.WriteLine(string.Format("{0}:Debug Pagina {1} Cargado con exito!", DateTime.Now, this.GetType()));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}