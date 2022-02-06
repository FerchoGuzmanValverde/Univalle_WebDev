using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdRotator
{
    public partial class ExWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WizardStep4_Activate(object sender, System.EventArgs e)
        {
            Label5.Text = "Your Name: " + TextBox1.Text.ToString() +
                          "<br />City: " + TextBox2.Text.ToString() +
                          "<br />Favorite Color: " + RadioButtonList1.SelectedItem.Text.ToString() +
                          "<br />Favorite Tool: " + RadioButtonList2.SelectedItem.Text.ToString();
        }   
    }
}