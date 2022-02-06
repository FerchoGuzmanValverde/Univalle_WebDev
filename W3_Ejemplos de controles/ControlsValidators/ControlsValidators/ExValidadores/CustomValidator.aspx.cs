using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class CustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void user(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 8 || args.Value.Length > 16)
                args.IsValid = false;
            else
                args.IsValid = true;
        }
    }
}