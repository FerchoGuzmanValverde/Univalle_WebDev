using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraceApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("Info: ", "Este mensaje sale al comienzo del metodo Page_Load");
            
            //
            System.Diagnostics.Trace.WriteLine(string.Format("{0}: trace Cargando la pagina {1}", DateTime.Now, this.GetType()));
           
            //instrucciones
            System.Diagnostics.Debug.WriteLine(string.Format("{0}: Debug Pàgina {1} cargada con exito", DateTime.Now, this.GetType()));
        }
    }
}