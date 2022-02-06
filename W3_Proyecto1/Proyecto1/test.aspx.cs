using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class test : System.Web.UI.Page
    {
        Random numRam = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Label newControl = new Label();
            newControl.Text = "Hi Dear Teacher";
            Page.Controls.Add(newControl);*/

            int num = numRam.Next(1, 10);

            for (int i = 0; i < num; i++)
            {
                Label newLabel = new Label();
                newLabel.Text = "My Label " + i;
                Page.Controls.Add(newLabel);
                Page.Controls.Add(Page.ParseControl("<br>"));
            }
        }
    }
}