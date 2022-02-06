using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controles_html2
{
    public partial class _0TextChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Text1_ServerChange(object sender, EventArgs e)
        {
            //Button1.Value = Text1.Value;
            if (Button1.Value.Equals("Button"))
                Button1.Value = "Hola";
            else
                Button1.Value = "Button";
        }
    }
}