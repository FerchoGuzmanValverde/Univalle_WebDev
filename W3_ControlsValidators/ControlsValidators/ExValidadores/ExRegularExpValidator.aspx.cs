using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class ExRegularExpValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit(object sender, EventArgs e)
        {
            if (Page.IsValid)
                lbl.Text = "The page is valid!";
            else
                lbl.Text = "The page is not valid!";
        }
    }
}