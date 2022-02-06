using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace controlesValidacion
{
    public partial class ValidacionesPractica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fechaValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DateTime.Parse(txtDate.Text) < DateTime.Now.Date)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}