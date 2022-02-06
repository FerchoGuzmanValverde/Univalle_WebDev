using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace controles_html2
{
    public partial class _1boton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            MySpan.InnerHtml = "Welcome to ASP.NET, " + myText.Value + ".";
        }
    }
}