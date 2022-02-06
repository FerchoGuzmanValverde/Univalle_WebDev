using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class ExLocalize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Localize1.Text = "This <b>text localize</b> is inserted dynamically.";
            Label1.Text = "This <b>text label</b> is inserted dynamically.";
            Literal1.Text = "This <b>text literal</b> is inserted dynamically.";
            if (radioEncode.Checked == true)
            {
                Localize1.Mode = LiteralMode.Encode;
                Literal1.Mode = LiteralMode.Encode;
            }
            if (radioPassthrough.Checked == true)
            {
                Localize1.Mode = LiteralMode.PassThrough;
                Literal1.Mode = LiteralMode.PassThrough;
            }
        }
    }
}